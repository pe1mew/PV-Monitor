#include "storage.h"

storage::storage(){
   initialize();
}

void storage::initialize(){
   _count = 0;
   _sum = 0;
   _min = 0;
   _max = 0;
   _avg = 0;
}

void storage::setValue(const double val, const int timeSec){
   double energy = val * static_cast<double>(timeSec) / HOUR_SECONDS;
   if(_count == 0){
      _min = energy;
      _max = energy;
   }else if(energy < _min){
      _min = energy;
   }else if(energy > _max){
      _max = energy;
   }
   _sum += energy;
   _count++;
}

double storage::getAvg(){
   double returnValue = 0;
   if(_count > 0){
       returnValue = _sum/_count;
   }else{
      returnValue = _sum;
   }
   return returnValue;
}
