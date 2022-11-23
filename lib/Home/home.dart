import 'package:check_internet/Classes/Ping.dart';
import 'package:check_internet/Services/AdMobServices.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


class Home extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    upBanner.load();
    downBanner.load();
  }

  final BannerAd upBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.banner,
  request: AdRequest(),
  listener: AdMobServices.bannerListener,
  );

  final BannerAd downBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.largeBanner,
  request: AdRequest(),
  listener: AdMobServices.bannerListener,
  );

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Internet Checker",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white, size: 24),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: upAdWidget,
            width: upBanner.size.width.toDouble(),
            height: upBanner.size.height.toDouble(),
          ),
          Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.only(left: 0, top: 70),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.router, size: 40, color: Colors.white),
                Text("DFGW", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.route_rounded, size: 40, color: Colors.white),
                Text("WAN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.vpn_lock, size: 40, color: Colors.white),
                Text("VPN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.language, size: 40, color: Colors.white),
                Text("INTERNET", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),),
          )),
          Center(child: ElevatedButton(
            onPressed: () {
              // TODO prima di lanciare i ping bisogna controllare se il dispositivo ha accesso a internet (https://bit.ly/3U0zJkb)
              Pinger().ping();
            },
            child: Text('Start Checking', style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),),
          Container(
            margin: const EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: downAdWidget,
            width: downBanner.size.width.toDouble(),
            height: downBanner.size.height.toDouble(),
          ),
        ],
      ),
    );
  }
}