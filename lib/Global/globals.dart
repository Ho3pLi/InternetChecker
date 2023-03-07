library check_internet.globals;

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
    'name': 'DNS',
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
    'addr': 'google.com',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  },
  {
    'name': 'custom',
    'addr': 'custom',
    'isAlive': false,
    'packageTransmitted': '',
    'packageReceived': '',
    'time': '',
    'jitter': 0,
    'rtt': 0
  }
];

List<String> summaries = [];

Map<String, Object> data = {
  'networkType' : '',
  'isConnected' : false
};