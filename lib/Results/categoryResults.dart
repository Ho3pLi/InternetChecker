import 'package:check_internet/Global/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../Services/AdMobServices.dart';

class categoryResults extends StatefulWidget {
  const categoryResults({super.key});

  @override
  MyResultsState createState() => MyResultsState();
}

class MyResultsState extends State<categoryResults> {

  final BannerAd downBanner = BannerAd(
    adUnitId: AdMobServices.BannerAdUnitId!,
    size: AdSize.mediumRectangle,
    request: const AdRequest(),
    listener: AdMobServices.bannerListener,
  );

  List<Widget> hostState = 
  [
    const Icon(Icons.error, color: Colors.orangeAccent, size: 24),
    const Icon(Icons.error, color: Colors.orangeAccent, size: 24),
    const Icon(Icons.error, color: Colors.orangeAccent, size: 24),
    const Icon(Icons.error, color: Colors.orangeAccent, size: 24)
  ];

  @override
  void initState() {
    super.initState();
    downBanner.load();
    
    for (var i = 0; i < globals.host.length; i++) {
      var info = globals.host[i];
      if(info['isAlive'] == true){
        hostState[i] = const Icon(Icons.check_circle, color: Colors.green, size: 24);
      }else if(info['isAlive'] == false){
        if(globals.data['networkType'] == 'mobile'){
          hostState[0] = const Icon(Icons.cancel_rounded, color: Colors.redAccent, size: 24);
          hostState[1] = const Icon(Icons.cancel_rounded, color: Colors.redAccent, size: 24);
        }else{
          hostState[i] = const Icon(Icons.check_circle, color: Colors.orangeAccent, size: 24);
        }
      }
    }
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
        title: const Text(
          "Results",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color:  Colors.white,
          onPressed:() {
            Navigator.pushNamed(context, '/second');
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
                "Results category",
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
                    "DFGW",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
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
                  leading: hostState[0],
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    color: const Color(0xff808080),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fourth');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "WAN",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
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
                  leading: hostState[1],
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    color: const Color(0xff808080),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fifth');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "VPN",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
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
                  leading: hostState[2],
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    color: const Color(0xff808080),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sixth');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: const Color(0x00ffffff),
                  title: const Text(
                    "INTERNET",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
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
                  leading: hostState[3],
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    color: const Color(0xff808080),
                    onPressed: () {
                      Navigator.pushNamed(context, '/seventh');
                    },
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
