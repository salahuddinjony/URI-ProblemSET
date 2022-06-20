#include<iostream>
using namespace std;
int main(){

    int input,h,m,s;
    cin>>input;
    h=input/(60*60);
    input=input%(60*60);
    m=input/60;
    s=input%60;
    cout<<h<<":"<<m<<":"<<s<<endl;
}