import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../Services/AdMobServices.dart';
import 'package:check_internet/Global/globals.dart' as globals;

class internetResults extends StatefulWidget {
  const internetResults({super.key});

  @override
  MyResultsState createState() => MyResultsState();
}

class MyResultsState extends State<internetResults> {

  final BannerAd downBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.mediumRectangle,
  request: const AdRequest(),
  listener: AdMobServices.bannerListener,
  );

  Map<String, Object> info = globals.host[3];

  @override
  void initState() {
    super.initState();
    downBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    final AdWidget downAdWidget = AdWidget(ad: downBanner);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          info['name'].toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xffffffff),
          onPressed:() {
            Navigator.pushNamed(context, '/third');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 16,
                width: 16,
              ),
              const Text(
                "Internet category",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff848588),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "Package transmitted",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: const Color(0x42000000),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // leading: Icon(
                  //     Icons.router,
                  //     color: Colors.blueGrey,
                  //     size: 24
                  //   ),
                  trailing: Text(
                    info['packageTransmitted'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "Package received",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: const Color(0x42000000),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // leading: Icon(Icons.route_rounded, color: Colors.blueGrey, size: 24),
                  trailing: Text(
                    info['packageReceived'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "Time (ms)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: const Color(0x42000000),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // leading: Icon(Icons.vpn_lock, color: Colors.blueGrey, size: 24),
                  trailing: Text(
                    info['time'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "Jitter (ms)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: const Color(0x42000000),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // leading: Icon(Icons.language, color: Colors.blueGrey, size: 24),
                  trailing: Text(
                    info['jitter'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "RTT (ms)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: const Color(0x42000000),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // leading: Icon(Icons.language, color: Colors.blueGrey, size: 24),
                  trailing: Text(
                    info['rtt'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Container(
            margin: const EdgeInsets.only(top: 40, left: 30),
            alignment: Alignment.center,
            width: downBanner.size.width.toDouble(),
            height: downBanner.size.height.toDouble(),
            child: downAdWidget,
          ),
            ],
          ),
        ),
      ),
    );
  }
}
