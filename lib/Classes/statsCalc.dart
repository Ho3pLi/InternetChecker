class StatsCalc{

  double calculateJitter(List singlePingTimeList){
    
    double jitter = 0;

    for(var i = 0; i < singlePingTimeList.length; i++){
      var k = i + 1;
      var diff = singlePingTimeList[i] - singlePingTimeList[k];
      if(diff < 0){
        diff = diff + (diff*2);
      }
      jitter = jitter + diff;
      jitter = jitter / singlePingTimeList.length-1;
    }

    return jitter;

  }
}