//
//  LexicalAnalyzerh.h
//  PointerPascal
//
//  Created by Sinpeach on 15/6/27.
//  Copyright (c) 2015年 laixintao. All rights reserved.
//

#ifndef PointerPascal_LexicalAnalyzerh_h
#define PointerPascal_LexicalAnalyzerh_h

#define WORD_LENGTH 130 // 单词最大长度
#define WORD_OF_PROGRAM 1000 //最大单词数

char prog[WORD_OF_PROGRAM*WORD_LENGTH],token[WORD_LENGTH];
char ch;
int syn,p,m=0,n,row;
double sum =0;   //类型为整数或者小数的时候，用于保存源数据
int syn_of_rwtab; //遍历关键字数组
int locate_line; //单词在行中的位置
char *rwtab[18]={
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
    "not"}; //保存关键字

void getToken();
#endif
