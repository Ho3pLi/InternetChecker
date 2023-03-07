import 'dart:async';
import 'dart:developer';
import 'package:check_internet/Global/globals.dart' as globals;
import 'package:check_internet/Classes/ping.dart';
import 'package:check_internet/Services/AdMobServices.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:app_settings/app_settings.dart';
import 'package:geolocator/geolocator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<Home> {
  final BannerAd upBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.banner,
  request: const AdRequest(),
  listener: AdMobServices.bannerListener,
  );

  final BannerAd downBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.mediumRectangle,
  request: const AdRequest(),
  listener: AdMobServices.bannerListener,
  );

  Icon dfgwIcon = Icon(Icons.router, size: 40, color: Colors.grey.shade900);
  Text dfgwText = Text("DFGW", style: TextStyle(color: Colors.grey.shade900, fontSize: 20));
  Icon dnsIcon = Icon(Icons.dns, size: 40, color: Colors.grey.shade900);
  Text dnsText = Text("DNS", style: TextStyle(color: Colors.grey.shade900, fontSize: 20));
  bool visible = false;
  bool serviceEnabled = false;
  late LocationPermission gpsPermission;

  @override
  void initState() {
    super.initState();
    upBanner.load();
    downBanner.load();
    if(globals.data['networkType'] == 'mobile'){
      dfgwIcon = const Icon(Icons.router, size: 40, color: Colors.grey);
      dfgwText = const Text("DFGW", style: TextStyle(color: Colors.grey, fontSize: 20));
      dnsIcon = const Icon(Icons.dns, size: 40, color: Colors.grey);
      dnsText = const Text("DNS", style: TextStyle(color: Colors.grey, fontSize: 20));
    }
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget upAdWidget = AdWidget(ad: upBanner);
    final AdWidget downAdWidget = AdWidget(ad: downBanner);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Internet Checker",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/nineth');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Container(
          //   alignment: Alignment.center,
          //   width: upBanner.size.width.toDouble(),
          //   height: upBanner.size.height.toDouble(),
          //   child: upAdWidget,
          // ),
          Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.only(top: 0, bottom: 0),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                dfgwIcon,
                dfgwText
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                dnsIcon,
                dnsText
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.language, size: 40, color: Colors.grey.shade900),
                Text("INTERNET", style: TextStyle(color: Colors.grey.shade900, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Icon(Icons.dashboard_customize_rounded, size: 40, color: Colors.grey),
                Text("CUSTOM", style: TextStyle(color: Colors.grey, fontSize: 20))
              ],),),
            ],),
          )),
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 20),
            child: AnimatedOpacity(
              opacity: visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey.shade900,
                color: Colors.white,
                strokeWidth: 6,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                serviceEnabled = await Geolocator.isLocationServiceEnabled();
                setState(() {
                  serviceEnabled;
                });
                gpsPermission = await Geolocator.checkPermission();
                setState(() {
                  gpsPermission;
                });
                if(serviceEnabled){
                  if(gpsPermission == LocationPermission.denied){
                    gpsPermission = await Geolocator.requestPermission();
                  }
                  if(gpsPermission == LocationPermission.denied || gpsPermission == LocationPermission.deniedForever){
                    showDialog(
                    context: context,
                    builder: ((context) => AlertDialog(
                      title: const Text('GPS ERROR'),
                      content: const Text('This app needs location access to work!\nActivate it from the settings.'),
                      actions: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: const Text('CANCEL')
                        ),
                        TextButton(
                          onPressed: (() {
                            AppSettings.openLocationSettings();
                          }),
                          child: const Text('SETTINGS')
                        )
                      ],
                    ))
                  );
                  }
                  if(gpsPermission == LocationPermission.always || gpsPermission == LocationPermission.whileInUse) {
                    setState(() {
                      globals.data['isConnected'];
                    });
                    if(globals.data['isConnected'] == true){
                      setState(() {
                        visible = !visible;
                      });
                      if(globals.data['networkType'] != 'mobile'){
                        Pinger().pingFirst();
                        Pinger().pingSecond();
                        Pinger().pingThird();
                        Pinger().pingFourth();
                      }else if (globals.data['networkType'] == 'mobile'){
                        globals.host[0].update('name', (value) => 'Not Avaible');
                        // globals.host[1].update('name', (value) => 'Not Avaible');
                        Pinger().pingSecond();
                        Pinger().pingThird();
                        Pinger().pingFourth();
                      }
                      Timer(const Duration(seconds: 10), () {
                        Timer(const Duration(seconds: 8), () {
                          setState(() {
                            visible = !visible;
                          });
                        });
                        var nSummeries = globals.summaries.length;  
                        var data = globals.host;
                        for (var i = 0; i < globals.summaries.length; i++) {
                          //log(globals.host[i].toString());
                          log(globals.summaries[i].toString());
                        }
                        globals.summaries = [];
                        Navigator.pushNamed(context, '/third');
                      });
                    } else {
                      showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                          title: const Text('NETWORK ERROR'),
                          content: const Text('This app needs internet access to work!\nActivate it from the settings.'),
                          actions: [
                            TextButton(
                              onPressed: (() {
                                Navigator.pop(context);
                              }),
                              child: const Text('CANCEL')
                            ),
                            TextButton(
                              onPressed: (() {
                                AppSettings.openWirelessSettings();
                              }),
                              child: const Text('SETTINGS')
                            )
                          ],
                        ))
                      );
                    }
                  }
                } else {
                  showDialog(
                    context: context,
                    builder: ((context) => AlertDialog(
                      title: const Text('GPS ERROR'),
                      content: const Text('This app needs location access to work!\nActivate it from the settings.'),
                      actions: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: const Text('CANCEL')
                        ),
                        TextButton(
                          onPressed: (() {
                            AppSettings.openLocationSettings();
                          }),
                          child: const Text('SETTINGS')
                        )
                      ],
                    ))
                  );
                }
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              ),
              child: const Text('Start Checking', style: TextStyle(color: Colors.black),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            width: downBanner.size.width.toDouble(),
            height: downBanner.size.height.toDouble(),
            child: downAdWidget,
          ),
        ],
      ),
    );
  }
}