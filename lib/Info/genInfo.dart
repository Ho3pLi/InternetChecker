import 'package:check_internet/Services/AdMobServices.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  MyInfoState createState() => MyInfoState();
}

class MyInfoState extends State<Info>{
  final BannerAd downBanner = BannerAd(
  adUnitId: AdMobServices.BannerAdUnitId!,
  size: AdSize.mediumRectangle,
  request: const AdRequest(),
  listener: AdMobServices.bannerListener,
  );

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
        title: const Text(
          "Informazioni generali",
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
            Navigator.pushNamed(context, '/third');
          },
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Text(
                    "Hosts",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                GridView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1,
                  ),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/tenth');
                      },
                      child: Card(
                        margin: const EdgeInsets.all(0),
                        color: const Color(0xffffffff),
                        shadowColor: const Color(0xff000000),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0x2d3a57e8),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: const Color(0x4d9e9e9e), width: 1),
                              ),
                              child: Icon(
                                Icons.router,
                                color: Colors.grey.shade900,
                                size: 24,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                              child: Text(
                                "Default Gateway",
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            const Text(
                              "DFGW",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff363636),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/eleventh');
                      },
                      child: Card(
                        margin: const EdgeInsets.all(0),
                        color: const Color(0xffffffff),
                        shadowColor: const Color(0xff000000),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Color(0x2d3a57e8),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.dns,
                                color: Colors.grey.shade900,
                                size: 24,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                              child: Text(
                                "Domain Name System",
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            const Text(
                              "DNS",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff363636),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/twelfth');
                      },
                      child: Card(
                        margin: const EdgeInsets.all(0),
                        color: const Color(0xffffffff),
                        shadowColor: const Color(0xff000000),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Color(0x2d3a57e8),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.language,
                                color: Colors.grey.shade900,
                                size: 24,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                              child: Text(
                                "Internet",
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(0),
                      color: const Color(0xffffffff),
                      shadowColor: const Color(0xff000000),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              color: Color(0x2d3a57e8),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.dashboard_customize_rounded,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                            child: Text(
                              "Custom",
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
