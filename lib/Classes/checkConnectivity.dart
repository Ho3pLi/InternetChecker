import 'package:connectivity_plus/connectivity_plus.dart';

class CheckConnectivity {

  Future<bool> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    bool isConnected = false;
    
    if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile || result == ConnectivityResult.vpn) {
      isConnected = true;
    } else if (result == ConnectivityResult.none) {
      print('Not connected to any network');
    }

    return isConnected;
  } 
}