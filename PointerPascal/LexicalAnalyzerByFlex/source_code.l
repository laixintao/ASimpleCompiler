%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>

int table=0;
int int_or_keyword(char *lx);

%}

letter [_A-Za-z]
alnum [_A-Za-z0-9]
d [0-9]

%x COMMENT
%%
"/*" {BEGIN COMMENT;}
<COMMENT>\n {}
<COMMENT>"*/" {BEGIN 0;}
<COMMENT>. {}

"\n" return;
" " return;
"\t" return;

[1-9]{d}* printf("%s:(2,%s)",yytext,yytext);

"+" printf("+:(4,0)");
"-" printf("-:(5,0)");
"*" printf("*:(6,0)");
"/" printf("/:(7,0)");
"=" printf("=:(8,0)");
"<" printf("<:(9,0)");
">" printf(">:(10,0)");
"(" printf("(:(11,0)");
")" printf("):(12,0)");
"~" printf("~:(13,0)");

":=" printf(":=:(14,0)");
"<=" printf("<=:(15,0)");
">=" printf(">=:(16,0)");
"<>" printf("<>:(17,0)");

"." printf(".:(18,0)");
"," printf(",:(19,0)");
";" printf(";:(20,0)");

"absolute"               	 printf("absolute:(3,0)");
"abstract"               	 printf("abstract:(3,1)");
"and"               	 printf("and:(3,2)");
"array"               	 printf("array:(3,3)");
"as"               	 printf("as:(3,4)");
"asm"               	 printf("asm:(3,5)");
"assembler"               	 printf("assembler:(3,6)");
"at"               	 printf("at:(3,7)");
"automated"               	 printf("automated:(3,8)");
"begin"               	 printf("begin:(3,9)");
"case"               	 printf("case:(3,10)");
"cdecl"               	 printf("cdecl:(3,11)");
"class"               	 printf("class:(3,12)");
"const"               	 printf("const:(3,13)");
"constructor"               	 printf("constructor:(3,14)");
"contains"               	 printf("contains:(3,15)");
"default"               	 printf("default:(3,16)");
"destructor"               	 printf("destructor:(3,17)");
"dispid"               	 printf("dispid:(3,18)");
"dispinterface"               	 printf("dispinterface:(3,19)");
"div"               	 printf("div:(3,20)");
"do"               	 printf("do:(3,21)");
"downto"               	 printf("downto:(3,22)");
"dynamic"               	 printf("dynamic:(3,23)");
"else"               	 printf("else:(3,24)");
"end"               	 printf("end:(3,25)");
"except"               	 printf("except:(3,26)");
"export"               	 printf("export:(3,27)");
"exports"               	 printf("exports:(3,28)");
"external"               	 printf("external:(3,29)");
"far"               	 printf("far:(3,30)");
"file"               	 printf("file:(3,31)");
"finalization"               	 printf("finalization:(3,32)");
"finally"               	 printf("finally:(3,33)");
"for"               	 printf("for:(3,34)");
"forward"               	 printf("forward:(3,35)");
"function"               	 printf("function:(3,36)");
"goto"               	 printf("goto:(3,37)");
"if"               	 printf("if:(3,38)");
"implementation"               	 printf("implementation:(3,39)");
"implements"               	 printf("implements:(3,40)");
"in"               	 printf("in:(3,41)");
"index"               	 printf("index:(3,42)");
"inherited"               	 printf("inherited:(3,43)");
"initialization"               	 printf("initialization:(3,44)");
"inline"               	 printf("inline:(3,45)");
"interface"               	 printf("interface:(3,46)");
"is"               	 printf("is:(3,47)");
"label"               	 printf("label:(3,48)");
"library"               	 printf("library:(3,49)");
"message"               	 printf("message:(3,50)");
"mod"               	 printf("mod:(3,51)");
"name"               	 printf("name:(3,52)");
"near"               	 printf("near:(3,53)");
"nil"               	 printf("nil:(3,54)");
"nodefault"               	 printf("nodefault:(3,55)");
"not"               	 printf("not:(3,56)");
"object"               	 printf("object:(3,57)");
"of"               	 printf("of:(3,58)");
"on"               	 printf("on:(3,59)");
"or"               	 printf("or:(3,60)");
"out"               	 printf("out:(3,61)");
"overload"               	 printf("overload:(3,62)");
"override"               	 printf("override:(3,63)");
"package"               	 printf("package:(3,64)");
"packed"               	 printf("packed:(3,65)");
"pascal"               	 printf("pascal:(3,66)");
"private"               	 printf("private:(3,67)");
"procedure"               	 printf("procedure:(3,68)");
"program"               	 printf("program:(3,69)");
"property"               	 printf("property:(3,70)");
"protected"               	 printf("protected:(3,71)");
"public"               	 printf("public:(3,72)");
"published"               	 printf("published:(3,73)");
"raise"               	 printf("raise:(3,74)");
"read"               	 printf("read:(3,75)");
"readonly"               	 printf("readonly:(3,76)");
"record"               	 printf("record:(3,77)");
"register"               	 printf("register:(3,78)");
"reintroduce"               	 printf("reintroduce:(3,79)");
"repeat"               	 printf("repeat:(3,80)");
"requires"               	 printf("requires:(3,81)");
"resident"               	 printf("resident:(3,82)");
"resourcestring"               	 printf("resourcestring:(3,83)");
"safecall"               	 printf("safecall:(3,84)");
"set"               	 printf("set:(3,85)");
"shl"               	 printf("shl:(3,86)");
"shr"               	 printf("shr:(3,87)");
"stdcall"               	 printf("stdcall:(3,88)");
"stored"               	 printf("stored:(3,89)");
"string"               	 printf("string:(3,90)");
"then"               	 printf("then:(3,91)");
"threadvar"               	 printf("threadvar:(3,92)");
"to"               	 printf("to:(3,93)");
"try"               	 printf("try:(3,94)");
"type"               	 printf("type:(3,95)");
"unit"               	 printf("unit:(3,96)");
"until"               	 printf("until:(3,97)");
"uses"               	 printf("uses:(3,98)");
"var"               	 printf("var:(3,99)");
"virtual"               	 printf("virtual:(3,100)");
"while"               	 printf("while:(3,101)");
"with"               	 printf("with:(3,102)");
"write"               	 printf("write:(3,103)");
"writeonly"               	 printf("writeonly:(3,104)");
"xor"               	 printf("xor:(3,105)");

":"               printf("(21,0)");

{d}+{letter}* printf("ERRORCHAR\t%s",yytext);
{letter}{alnum}* { 
			int id=findNum(yytext,table); 
			if(table==id)
				table++;
			printf("%s:(2,%d)",yytext,id); 
};

. printf("ERRORCHAR,%s",yytext);
%%

char list[100][100];

int mySize=0;

int findNum(char *a,int mySize){
	int i;
	for(i=0;i<mySize;i++){
		if(!strcmp(a,list[i])){
			return i;
		}
	}
	strcpy(list[mySize],a);
	mySize++;
	return mySize-1;
}

void main()


{
int count=1;
yyin=fopen("test.c","r");
while(yylex()){
	if(count%4==0){
		printf("\n");
	}else{
		printf("\t");
	}
	count++;
}
}
int yywrap()
{
return 1;
}