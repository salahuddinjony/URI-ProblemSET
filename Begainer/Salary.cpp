#include<iostream>
#include<iomanip>
using namespace std;
int main(){

    int NUMBER,Hour;
    float SALARY=0,Amount;
    cin>>NUMBER>>Hour>>Amount;
    SALARY=Hour*Amount;
    cout<<"NUMBER = "<<NUMBER<<endl;
    cout<<fixed<<setprecision(2)<<"SALARY = U$ "<<SALARY<<endl;
}