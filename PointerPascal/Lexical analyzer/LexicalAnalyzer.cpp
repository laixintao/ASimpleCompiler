#include<stdio.h>
#include<string.h>
#include<iostream>
#include "LexicalAnalyzerh.h"
using namespace std;


void getToken(){
    /*

    */
    for(n=0;n<WORD_LENGTH;n++) token[n]=NULL;
    ch=prog[p++];
//****************第6类 分隔符***********************************//
    if(ch==' '||ch==';'||
       ch=='{'||ch=='}'||
       ch=='('||ch==')'){
            syn = 6;
        token[0] = ch;
    }
//***************2 标识符 1 关键字*********************************//
    else if((ch>='a'&&ch<='z')||(ch>='A'&&ch<='Z')||ch=='_')  //可能是标示符或者变量名
    {
        m=0;
        while((ch>='0'&&ch<='9')||(ch>='a'&&ch<='z')||(ch>='A'&&ch<='Z')||ch=='_')
        {
            token[m++]=ch;
            ch=prog[p++];
        }
        token[m++]='\0';
        p--;
        syn=2;
        for(n=0;n<18;n++)  //将识别出来的字符和已定义的标示符作比较，
            if(strcmp(token,rwtab[n])==0)
            {
                syn=1;
                syn_of_rwtab=n;
                break;
            }
    }
//*****************3 整数 4小数********************************//
    else if((ch>='0'&&ch<='9'))
    {

            bool flag = false; //是否是小数
            sum=0;

            while((ch>='0'&&ch<='9'))
            {
                sum=sum*10+ch-'0';
                ch=prog[p++];
            }
            if(ch=='.'){
                flag = true;
                ch=prog[p++];
                double tag = 0.1; //记录小数的位数
                while((ch>='0' && ch<='9')){
                    sum+=(ch-'0')*tag;
                    tag=tag*0.1;
                    ch=prog[p++];
                }
            }//if
        p--;
        if(flag) syn = 4;
        else syn = 3;
        if(sum>32767)
            syn=-1;
    }
//********************5 判断是不是字符串****************************//
    else if(ch=='\"'){
        syn = 5;
        m=0;
        token[m++] = ch;
        while((ch=prog[p++])!='\"')
            token[m++] = ch;
        token[m] = ch;
       // p--;
    }

//*******************7 运算符*******************//
    else switch(ch)
    {
        case'<':
            m=0;
            token[m++]=ch;
            ch=prog[p++];
            if(ch=='>')
            {
                syn=7;
                token[m++]=ch;
            }
            else if(ch=='=')
            {
                syn=7;
                token[m++]=ch;
            }
            else
            {
                syn=7;
                p--;
            }
            break;
        case'>':
            m=0;
            token[m++]=ch;
            ch=prog[p++];
            if(ch=='=')
            {
                syn=7;
                token[m++]=ch;
            }
            else
            {
                syn=7;
                p--;
            }
            break;
        case':':
            m=0;token[m++]=ch;
            ch=prog[p++];
            if(ch=='=')
            {
                syn=7;
                token[m++]=ch;
            }
            else
            {
                syn=7;
                p--;
            }
            break;
        case'*':syn=7;token[0]=ch;break;
        case'/':syn=7;token[0]=ch;break;
        case'+':syn=7;token[0]=ch;break;
        case'-':syn=7;token[0]=ch;break;
        case'=':syn=7;token[0]=ch;break;
        case'#':syn=0;token[0]=ch;break;
        case'\n':syn=-2;locate_line=0;break;
        default: syn=-1;break;
    }
}
