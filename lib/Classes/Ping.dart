import 'dart:developer';
import 'dart:io';
import 'package:check_internet/Global/globals.dart' as globals;
import 'package:dart_ping/dart_ping.dart';

class Pinger {
  
  Future<void> pingFirst() async {
    var hostInfo = globals.host[0];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    print('Running command: ${ping.command}');
    ping.stream.listen((event) {
      // if(event.error != null){
      //   log('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
      // }else if(event.error == null && event.response != null){
      //   log('Ping effettuato con successo: ${event.response}');
      // }
      if(event.summary != null){
        globals.summaries.add('Summary 0: ${event.summary}');
        if(event.summary?.received != 0){
          globals.host[0].update('isAlive', (value) => true);
        }else if(event.summary?.received == 0){
          globals.host[0].update('isAlive', (value) => false);
        }
      }
    });
  }
  Future<void> pingSecond() async {
    var hostInfo = globals.host[1];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    print('Running command: ${ping.command}');
    ping.stream.listen((event) {
      // if(event.error != null){
      //   log('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
      // }else if(event.error == null && event.response != null){
      //   log('Ping effettuato con successo: ${event.response}');
      // }
      if(event.summary != null){
        globals.summaries.add('Summary 1: ${event.summary}');
        if(event.summary?.received != 0){
          globals.host[1].update('isAlive', (value) => true);
        }else if(event.summary?.received == 0){
          globals.host[1].update('isAlive', (value) => false);
        }
      }
    });
  }
  Future<void> pingThird() async {
    var hostInfo = globals.host[2];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    print('Running command: ${ping.command}');
    ping.stream.listen((event) {
      // if(event.error != null){
      //   log('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
      // }else if(event.error == null && event.response != null){
      //   log('Ping effettuato con successo: ${event.response}');
      // }
      if(event.summary != null){
        globals.summaries.add('Summary 2: ${event.summary}');
        if(event.summary?.received != 0){
          globals.host[2].update('isAlive', (value) => true);
        }else if(event.summary?.received == 0){
          globals.host[2].update('isAlive', (value) => false);
        }
      }
    });
  }
  Future<void> pingFourth() async {
    var hostInfo = globals.host[3];
    final ping = Ping(hostInfo['addr'].toString(), count: 5); // TODO cambiare il numero di ping
    print('Running command: ${ping.command}');
    ping.stream.listen((event) {
      // if(event.error != null){
      //   log('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
      // }else if(event.error == null && event.response != null){
      //   log('Ping effettuato con successo: ${event.response}');
      // }
      if(event.summary != null){
        globals.summaries.add('Summary 3: ${event.summary}');
        if(event.summary?.received != 0){
          globals.host[3].update('isAlive', (value) => true);
        }else if(event.summary?.received == 0){
          globals.host[3].update('isAlive', (value) => false);
        }
      }
    });
  }
}