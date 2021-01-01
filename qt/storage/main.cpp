#include <iostream>
#include <math.h>    // fabs()
#include "storage.h"

using namespace std;

const double tolerance = 0.00001;

void test1(void);
bool equality(double a, double b, double epsilon);

int main(){
   cout << "Unit testing storage class:" << endl;
   test1();

   return 0;
}

void test1(void){
   storage object;

   // Testdata
   double dataset[] = {0.5, 1.0, 1.5, 0.5, 0.0125, 4.0, 0.75, 0.5, 0.3, 0.5, 1.1, 2.0};
   int interval[] = {300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300};
   // Test data results
   double sumResult = 1.055208333;
   double minResult = 0.001041667;
   double maxResult = 0.333333333;
   double avgResult = 0.087934028;
   size_t samples = sizeof(dataset)/sizeof(dataset[0]);

   unsigned int i = 0;
   for(i = 0; i < samples; i++){
      object.setValue(dataset[i], interval[i]);
   }

   if(!equality(object.getSum(), sumResult, tolerance)){
      cout << "FAIL: Sum result." << endl;
   }

   if(!equality(object.getMin(), minResult, tolerance)){
      cout << "FAIL: Minimum result." << endl;
   }

   if(!equality(object.getMax(), maxResult, tolerance)){
      cout << "FAIL: Maximum result." << endl;
   }

   if(!equality(object.getAvg(), avgResult, tolerance)){
      cout << "FAIL: Average result." << endl;
   }

   cout << "Ready." << endl;
}

bool equality(double a, double b, double epsilon){
   if(fabs(a-b) < epsilon){
      return true;
   }else{
      return false;
   }
}
