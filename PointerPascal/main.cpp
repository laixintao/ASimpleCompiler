#include "stdio.h"
#include "iostream"



#define WORD_LENGTH 128      //单词的最大长度
#define PROGRAM_LENGTH 1024  //程式的最大单词数

//定义符号表
// 空格
#define SPACE 0
// id和保留字
#define IDENTIFINDER 10 //10是标识符
#define BEGIN 11
#define AS 12
#define SUB 13
#define END 14
#define IF 15
#define THEN 16
#define ELSE 17
# define CALL 18
#define WHILE 19
#define DO 20
#define INTEGER 21
#define FLOAT 22
#define INPUT 23
#define OUTPUT 24
#define VAR 25
//运算符
#define PLUS 30
#define MINUS 31
#define CHENG 32
#define CHU 33

const char *rwtab[][WORD_LENGTH]={
    "program",
    "const",
    "var",
    "integer",
    "decimal",
    "string",
    "procedure",
    "begin",
    "end ",
    "if",
    "then",
    "else",
    "while",
    "do",
    "call",
    "read",
    "write",
    "not"};

char prog[WORD_LENGTH * PROGRAM_LENGTH];

int get_token(char &token);
bool read_file();

/////////////////////////////////////////////
// starts here:
/////////////////////////////////////////////
using namespace std;

int main(){
    return 0;
}

bool read_file(){
    char ch;
    int p=0;
    do{
        cin.get(ch);
        prog[p++] = ch;
    }while (ch!='#') ;

    //程序中不区分大小写，所有字符一律变为小写处理
    int temp = 0;
    while (prog[temp]!='#') {
        if(prog[temp]<='Z' && prog[temp] >= 'A')
            prog[temp]+='a'-'A';
        temp++;
    }
    return true;
}

int get_token(char *token){
    int type=0,n=0;
    for(n=0;n<WORD_LENGTH;n++) token[n]=NULL;


    return type;
}