import 'package:network_info_plus/network_info_plus.dart';
import 'package:geolocator/geolocator.dart';

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
}