import 'dart:math';

import 'package:network_info_plus/network_info_plus.dart';
import 'package:test/test.dart';
import 'package:check_internet/Classes/networkInfo.dart';
import 'package:check_internet/Global/globals.dart' as globals;

void main(){
  group('networkInfo', () {

    test('starting datas', () {
      var startingDatas = globals.data;
      expect(globals.data, startingDatas);
    });

    test('starting hosts', () {
      var startingHosts = globals.host;
      expect(globals.host, startingHosts);
    });

    test('should return network\'s name', () {
      var networkName = Network().getNetworkName();
      expect(networkName!='xxxx', networkName);
    });

    test('should return dfgw ip', (){
      var dfgwIp = Network().getGatewayIp();
      expect(dfgwIp!='x.x.x.x', dfgwIp);
    });
  });
}