import 'dart:io';
import 'package:dart_ping/dart_ping.dart';


class Pinger {
  List<Map<String, Object?>> host = [
    {
      'name': 'DEF_GW',
      'addr': '192.168.1.1',
      'isAlive': null,
      'rtt': []
    },
    {
      'name': 'VPN Soabit',
      'addr': '127.0.0.1',
      'isAlive': null,
      'rtt': []
    },
    {
      'name': 'OrangePI',
      'addr': '8.8.8.8',
      'isAlive': null,
      'rtt': []
    },
    {
      'name': 'INTERNET',
      'addr': '151.7.86.183',
      'isAlive': null,
      'rtt': []
    }
  ];

  var wanIP = null;
  var wanIPURL = null;

  Future<void> ping() async {
    List<String> hosts = <String>[];
    for (var element in host) {
      hosts.add(element['addr'].toString());
    }
    // for(var i = 0; i < hosts.length; i++){         da ripristinare dopo aver capito come gestire la risposta del ping
      final ping = Ping(hosts[2], count: 5);
      print('Running command: ${ping.command}');
      ping.stream.listen((event) {
        if(event.error != null){
          print('Ops qualcosa é andato storto, errore relativo: ${event.error?.error}');
        }else if(event.error == null && event.response != null){
          print('Ping effettuato con successo: ${event.response}');
        }
        if(event.summary != null){
          print('Summary: ${event.summary}');
        }
      });
    // }
  }
}