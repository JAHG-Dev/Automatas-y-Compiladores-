%option noyywrap
%{
#include <stdio.h>
int cona=0, cone=0, coni=0, cono=0, conu=0;
%}

%%
a {printf("Vocal a\n"); cona++;}
e {printf("Vocal e\n"); cone++;}
i {printf("Vocal i\n"); coni++;}
o {printf("Vocal o\n"); cono++;}
u {printf("Vocal u\n"); conu++;}
[\n] {printf("Vocales a %d\nVocales e %d\nVocales i %d\nVocales o %d\n Vocales u %d\n",cona,cone,coni,cono,conu);
cona=0;cone=0;coni=0;cono=0;conu=0;} 
%%

int main(){
    yylex();
}