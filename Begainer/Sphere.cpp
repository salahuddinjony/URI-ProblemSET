#include<iostream>
#include<math.h>
#include<iomanip>
using namespace std;
int main(){
    double R,VOLUME,PI;
    PI=3.14159;
    cin>>R;
    VOLUME=(4.0/3)*PI*pow(R,3);
    cout<<fixed<<setprecision(3)<<"VOLUME = "<<VOLUME<<endl;
}