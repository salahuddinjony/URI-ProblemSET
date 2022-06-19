#include<iostream>
#include<iomanip>
using namespace std;
int main(){

    int distance;
    double liters,consumption;
    cin>>distance>>liters;
    consumption=distance/liters;
    cout<<fixed<<setprecision(3)<<consumption<<" km/l"<<endl;
    
}