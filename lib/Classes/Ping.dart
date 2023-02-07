import 'package:check_internet/Classes/networkInfo.dart';
import 'package:check_internet/Classes/statsCalc.dart';
import 'package:check_internet/Global/globals.dart' as globals;
import 'package:dart_ping/dart_ping.dart';

class Pinger {
  
  Future<void> pingFirst() async {
    var hostName = await Network().getNetworkName();
    var hostAddr = await Network().getGatewayIp();
    var carrierName = await Network().getCarrierName();
    final ping = Ping(hostAddr!, count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      if(event.summary != null){
        globals.summaries.add('Summary 0: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
          globals.host[0].update('name', (value) => hostName.toString());
          globals.host[0].update('addr', (value) => hostAddr.toString());
          globals.host[0].update('isAlive', (value) => true);
          globals.host[0].update('packageTransmitted', (value) => transmitted);
          globals.host[0].update('packageReceived', (value) => received);
          globals.host[0].update('time', (value) => time);
        }else if(event.summary?.received == 0){
          globals.host[0].update('isAlive', (value) => false);
          globals.host[0].update('packageTransmitted', (value) => transmitted);
          globals.host[0].update('packageReceived', (value) => received);
          globals.host[0].update('time', (value) => time);
        }
      }
    });
  }

  Future<void> pingSecond() async {
    var hostName = await Network().getNetworkName();
    var hostInfo = globals.host[1];
    var carrierName = await Network().getCarrierName();
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      var y = globals.summaries;
      if(event.summary != null){
        globals.summaries.add('Summary 1: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
          globals.host[1].update('name', (value) => carrierName.toString());
          globals.host[1].update('isAlive', (value) => true);
          globals.host[1].update('packageTransmitted', (value) => transmitted);
          globals.host[1].update('packageReceived', (value) => received);
          globals.host[1].update('time', (value) => time);
        }else if(event.summary?.received == 0){
          globals.host[1].update('isAlive', (value) => false);
          globals.host[1].update('packageTransmitted', (value) => transmitted);
          globals.host[1].update('packageReceived', (value) => received);
          globals.host[1].update('time', (value) => time);
        }
      }
    });
  }

  Future<void> pingThird() async {
    var hostName = await Network().getNetworkName();
    var hostInfo = globals.host[2];
    var carrierName = await Network().getCarrierName();
    List timeList = [78, 89, 90, 34, 24];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      // timeList.add(event.response?.time?.inMilliseconds);
      if(event.summary != null){
        globals.summaries.add('Summary 2: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        var jitter = StatsCalc().calculateJitter(timeList); 
        if(event.summary?.received != 0){
          if(globals.data['networkType'] == 'mobile'){
            globals.host[2].update('name', (value) => carrierName.toString());
          }else{
            globals.host[2].update('name', (value) => hostName.toString());
          }
          globals.host[2].update('isAlive', (value) => true);
          globals.host[2].update('packageTransmitted', (value) => transmitted);
          globals.host[2].update('packageReceived', (value) => received);
          globals.host[2].update('time', (value) => time);
          globals.host[2].update('jitter', (value) => jitter);
        }else if(event.summary?.received == 0){
          if(globals.data['networkType'] == 'mobile'){
            globals.host[2].update('name', (value) => carrierName.toString());
          }else{
            globals.host[2].update('name', (value) => hostName.toString());
          }
          globals.host[2].update('isAlive', (value) => false);
          globals.host[2].update('packageTransmitted', (value) => transmitted);
          globals.host[2].update('packageReceived', (value) => received);
          globals.host[2].update('time', (value) => time);
          globals.host[2].update('jitter', (value) => jitter);
        }
      }
    });
  }

  Future<void> pingFourth() async {
    var hostName = await Network().getNetworkName();
    var hostInfo = globals.host[3];
    var carrierName = await Network().getCarrierName();
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      if(event.summary != null){
        globals.summaries.add('Summary 3: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
          if(globals.data['networkType'] == 'mobile'){
            globals.host[3].update('name', (value) => carrierName.toString());
          }else{
            globals.host[3].update('name', (value) => hostName.toString());
          }
          globals.host[3].update('isAlive', (value) => true);
          globals.host[3].update('packageTransmitted', (value) => transmitted);
          globals.host[3].update('packageReceived', (value) => received);
          globals.host[3].update('time', (value) => time);
        }else if(event.summary?.received == 0){
          if(globals.data['networkType'] == 'mobile'){
            globals.host[3].update('name', (value) => carrierName.toString());
          }else{
            globals.host[3].update('name', (value) => hostName.toString());
          }
          globals.host[3].update('isAlive', (value) => false);
          globals.host[3].update('packageTransmitted', (value) => transmitted);
          globals.host[3].update('packageReceived', (value) => received);
          globals.host[3].update('time', (value) => time);
        }
      }
    });
  }
}