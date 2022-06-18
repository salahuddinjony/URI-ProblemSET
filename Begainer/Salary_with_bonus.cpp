#include<iostream>
#include<iomanip>
using namespace std;
int main(){

    char name[100];
    float TOTAL=0,salary,sold;
    cin>>name>>salary>>sold;
    TOTAL=salary+(sold*.15);
    cout<<fixed<<setprecision(2)<<"TOTAL = R$ "<<TOTAL<<endl;
}
   