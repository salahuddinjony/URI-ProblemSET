#include<iostream>
using namespace std;
int main(){

    int input,year,month,day;
    cin>>input;

    year=input/365;
    input=input%365;
    month=input/30;
    day=input%30;
    cout<<year<<" ano(s)"<<endl;
    cout<<month<<" mes(es)"<<endl;
    cout<<day<<" dia(s)"<<endl;
}