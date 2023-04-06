import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobServices {
  
  static String? get BannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-4123529517778923/8672229105';}
    // else if(Platform.isIOS){
    //   return '';
    // }
    return null;
  }

  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded.'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load: $error');
    },
    onAdOpened: (ad) => debugPrint('Ad opened'),
    onAdClosed: (ad) => debugPrint('Ad closed'),
  );
}