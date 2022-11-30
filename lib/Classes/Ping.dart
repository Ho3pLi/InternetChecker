import 'package:check_internet/Global/globals.dart' as globals;
import 'package:dart_ping/dart_ping.dart';

class Pinger {
  
  Future<void> pingFirst() async {
    var hostInfo = globals.host[0];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      if(event.summary != null){
        globals.summaries.add('Summary 0: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
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
    var hostInfo = globals.host[1];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      var y = globals.summaries;
      if(event.summary != null){
        globals.summaries.add('Summary 1: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
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
    var hostInfo = globals.host[2];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      if(event.summary != null){
        globals.summaries.add('Summary 2: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
          globals.host[2].update('isAlive', (value) => true);
          globals.host[2].update('packageTransmitted', (value) => time);
          globals.host[2].update('packageReceived', (value) => received);
          globals.host[2].update('time', (value) => time);
        }else if(event.summary?.received == 0){
          globals.host[2].update('isAlive', (value) => false);
          globals.host[2].update('packageTransmitted', (value) => transmitted);
          globals.host[2].update('packageReceived', (value) => received);
          globals.host[2].update('time', (value) => time);
        }
      }
    });
  }

  Future<void> pingFourth() async {
    var hostInfo = globals.host[3];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    ping.stream.listen((event) {
      if(event.summary != null){
        globals.summaries.add('Summary 3: ${event.summary}');
        var transmitted = event.summary!.transmitted.toString();
        var received = event.summary!.received.toString();
        var time = event.summary!.time!.inMilliseconds;
        if(event.summary?.received != 0){
          globals.host[3].update('isAlive', (value) => true);
          globals.host[3].update('packageTransmitted', (value) => time);
          globals.host[3].update('packageReceived', (value) => received);
          globals.host[3].update('time', (value) => time);
        }else if(event.summary?.received == 0){
          globals.host[3].update('isAlive', (value) => false);
          globals.host[3].update('packageTransmitted', (value) => transmitted);
          globals.host[3].update('packageReceived', (value) => received);
          globals.host[3].update('time', (value) => time);
        }
      }
    });
  }
}