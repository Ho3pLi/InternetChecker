import 'package:network_info_plus/network_info_plus.dart';

class Network {

  Future<String> getNetworkName(){
    var wifiName;

    if(NetworkInfo().getWifiName() != null){
      wifiName = NetworkInfo().getWifiName();
    }else{
      wifiName = null;
    }

    return wifiName;
  }

  Future<String> getGatewayIp(){
    var gatewayIp;

    if(NetworkInfo().getWifiGatewayIP() != null){
      gatewayIp = NetworkInfo().getWifiGatewayIP();
    }else{
      gatewayIp = null;
    }

    return gatewayIp;
  }
}