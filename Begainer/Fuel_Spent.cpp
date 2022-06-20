#include<iostream>
#include<iomanip>
using namespace std;
int main(){

    int time,distance;
    cin>>time>>distance;
   double liters=(distance*time)/12.0;
    cout<<fixed<<setprecision(3)<<liters<<endl;
}