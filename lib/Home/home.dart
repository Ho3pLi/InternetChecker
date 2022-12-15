import 'dart:async';
import 'dart:developer';
import 'package:check_internet/Global/globals.dart' as globals;
import 'package:check_internet/Classes/ping.dart';
import 'package:check_internet/Services/AdMobServices.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:check_internet/Classes/checkConnectivity.dart';
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
  size: AdSize.largeBanner,
  request: const AdRequest(),
  listener: AdMobServices.bannerListener,
  );

  bool visible = false;
  bool isConnected = false;
  bool serviceEnabled = false;
  bool gpsPermission = false;

  @override
  void initState() {
    super.initState();
    upBanner.load();
    downBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget upAdWidget = AdWidget(ad: upBanner);
    final AdWidget downAdWidget = AdWidget(ad: downBanner);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
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
        actions: const [
          Icon(Icons.notifications, color: Colors.white, size: 24),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: upBanner.size.width.toDouble(),
            height: upBanner.size.height.toDouble(),
            child: upAdWidget,
          ),
          Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.only(top: 70, bottom: 10),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Icon(Icons.router, size: 40, color: Colors.white),
                Text("DFGW", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Icon(Icons.route_rounded, size: 40, color: Colors.white),
                Text("WAN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Icon(Icons.vpn_lock, size: 40, color: Colors.white),
                Text("VPN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Icon(Icons.language, size: 40, color: Colors.white),
                Text("INTERNET", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
            ],),
          )),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: AnimatedOpacity(
              opacity: visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: const CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 6,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                log(LocationPermission.always.toString());
                serviceEnabled = await Geolocator.isLocationServiceEnabled();
                setState(() {
                  serviceEnabled;
                });
                if(gpsPermission != LocationPermission.always || gpsPermission != LocationPermission.whileInUse){
                  setState(() {
                    gpsPermission = true;
                  });
                }
                if(serviceEnabled){
                  if(gpsPermission == true){
                    isConnected = await CheckConnectivity().checkConnectivityState();
                    setState(() {
                      isConnected;
                    });
                    if(isConnected){
                      setState(() {
                        visible = !visible;
                      });
                      Pinger().pingFirst();
                      Pinger().pingSecond();
                      Pinger().pingThird();
                      Pinger().pingFourth();
                      Timer(const Duration(seconds: 10), () {
                        Timer(const Duration(seconds: 8), () {
                          setState(() {
                            visible = !visible;
                          });
                        });
                        for (var i = 0; i < 4; i++) {
                          //log(globals.host[i].toString());
                          log(globals.summaries[i].toString());
                        }
                        Navigator.pushNamed(context, '/third');
                      });
                    } else {
                      showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                          title: Text('NETWORK ERROR'),
                          content: Text('This app needs internet access to work!\nActivate it from the settings.'),
                          actions: [
                            TextButton(
                              onPressed: (() {
                                Navigator.pop(context);
                              }),
                              child: Text('CANCEL')
                            ),
                            TextButton(
                              onPressed: (() {
                                AppSettings.openWirelessSettings();
                              }),
                              child: Text('SETTINGS')
                            )
                          ],
                        ))
                      );
                    }
                  } else {
                    Geolocator.requestPermission();
                  }
                } else {
                  showDialog(
                    context: context,
                    builder: ((context) => AlertDialog(
                      title: Text('GPS ERROR'),
                      content: Text('This app needs location access to work!\nActivate it from the settings.'),
                      actions: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: Text('CANCEL')
                        ),
                        TextButton(
                          onPressed: (() {
                            AppSettings.openLocationSettings();
                          }),
                          child: Text('SETTINGS')
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
            margin: const EdgeInsets.only(top: 20),
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