import 'package:network_info_plus/network_info_plus.dart';
import 'package:geolocator/geolocator.dart';

class Network {

  Future<String?> getNetworkName() async {
    String? wifiName;

    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    //   if (permission == LocationPermission.denied) {
    //     return 'permissionDenied';
    //   }
    // }

    if(NetworkInfo().getWifiName() != null){
      wifiName = await NetworkInfo().getWifiName();
    }else{
      wifiName = null;
    }

    return wifiName;
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