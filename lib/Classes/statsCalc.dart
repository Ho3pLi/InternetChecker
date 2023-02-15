class StatsCalc{

  double calculateJitter(List singlePingTimeList){
    
    double jitter = 0;
    double diff = 0;
    var i;

    if(singlePingTimeList.isNotEmpty){
      for(i = 0; i < singlePingTimeList.length-1; i++){
        var k = i + 1;
        diff = singlePingTimeList[i] - singlePingTimeList[k];
        if(diff < 0){
          diff = diff.abs();
        }
        jitter = jitter + diff;
      }
      jitter = jitter / i;
    }

    return jitter;

  }
}