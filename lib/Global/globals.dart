library check_internet.globals;

import 'package:check_internet/Classes/networkInfo.dart';

List<Map<String, Object>> host = [
  {
    'name': 'xxxx',
    'addr': 'x.x.x.x',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  },
  {
    'name': 'WAN',
    'addr': '127.0.0.1',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  },
  {
    'name': 'VPN',
    'addr': '8.8.8.8',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  },
  {
    'name': 'INTERNET',
    'addr': '151.7.86.183',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  }
];

List<String> summaries = [];