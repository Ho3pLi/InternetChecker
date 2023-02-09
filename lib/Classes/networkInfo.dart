import 'package:network_info_plus/network_info_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:check_internet/Global/globals.dart' as globals;

class Network {

  Future<String?> getNetworkName() async {
    String? wifiName;

    if(NetworkInfo().getWifiName() != null){
      wifiName = await NetworkInfo().getWifiName();
    }else{
      wifiName = null;
    }

    return wifiName?.replaceAll('\"', '');
  }

  Future<String?> getGatewayIp() async {
    String? gatewayIp;

    if(NetworkInfo().getWifiGatewayIP() != null){
      gatewayIp = await NetworkInfo().getWifiGatewayIP();
    }else{
      gatewayIp = null;
    }

    return gatewayIp;
  }

  Future<bool> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    bool isConnected = false;
    
    if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile || result == ConnectivityResult.vpn) {
      isConnected = true;
      globals.data['networkType'] = result.name;
    } else if (result == ConnectivityResult.none) {
      print('Not connected to any network');
    }

    return isConnected;
  }
}