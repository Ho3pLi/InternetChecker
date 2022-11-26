import 'dart:developer';
import 'dart:io';
import 'package:dart_ping/dart_ping.dart';


class Pinger {
  List<Map<String, Object?>> host = [
    {
      'name': 'DEFGW',
      'addr': '192.168.1.1',
      'isAlive': null,
    },
    {
      'name': 'WAN',
      'addr': '127.0.0.1',
      'isAlive': null,
    },
    {
      'name': 'VPN',
      'addr': '8.8.8.8',
      'isAlive': null,
    },
    {
      'name': 'INTERNET',
      'addr': '151.7.86.183',
      'isAlive': null,
    }
  ];

  var wanIP = null;
  var wanIPURL = null;

  Future<void> pingFirst() async {
    List<String> hosts = <String>[];
    for (var element in host) {
      hosts.add(element['addr'].toString());
    }
    final ping = Ping(hosts[0], count: 5);
    print('Running command: ${ping.command}');
    ping.stream.listen((event) {
      if(event.error != null){
        log('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
      }else if(event.error == null && event.response != null){
        log('Ping effettuato con successo: ${event.response}');
      }
      if(event.summary != null){
        log('Summary: ${event.summary}');
      if(event.summary?.received == 0){
        host[1].values.last = false;
      }
      }
    });
  }
}