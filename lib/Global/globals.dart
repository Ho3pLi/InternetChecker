library check_internet.globals;

List<Map<String, Object>> host = [
  {
    'name': 'DEFGW',
    'addr': '192.168.1.1',
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