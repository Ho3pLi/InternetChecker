import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:check_internet/Global/globals.dart' as globals;

class CheckConnectivity {

  Future<bool> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    bool isConnected = false;
    
    if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile || result == ConnectivityResult.vpn) {
      isConnected = true;
      globals.networkType = result.name;
      log(ConnectivityResult.values.toString());
    } else if (result == ConnectivityResult.none) {
      print('Not connected to any network');
    }

    return isConnected;
  } 
}