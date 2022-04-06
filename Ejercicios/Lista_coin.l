%option noyywrap
%{
#include <stdio.h>
int cif = 0, cit = 0,cthe = 0, cat = 0, cto = 0, ext = 0;
%}

%%
"if" {cif++;}
"it" {cit++;}
"the" {cthe++;}
"at" {cat++;}
"to" {cto++;}
[a-zA-Z]+ {++ext;}
. {ECHO;}
[\n] {printf("if %d it %d the %d at %d to %d fuera de lista %d",cif,cit,cthe,cat,cto,ext);} 
%%

int main() {
    yylex();
    return 1;
}
