/* 
这个小程序用于格式化flex源文件中的关键字。
input.txt 为输入
output.txt 为输出
本程序要适当修改。
将关键字格式化成flex可以处理的语法。
*/

#include <iostream>
#include <cstdio>
using namespace std;
int counter;
int main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    string temp;
    int i;
    while(getline(cin,temp) && temp[0]!='\0'){
       i=0;
       while(temp[i++]!='/');
       temp.resize(i-1,'\0');
        cout<<"\""<<temp<<"\""<<"               \t printf(\""<<temp<<":(3,"<<counter++<<")\");"<<endl;;
    }

    fclose(stdout);
    return 0;
}
