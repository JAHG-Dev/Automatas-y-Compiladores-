%option noyywrap
%{
#include <stdio.h>
int may = 0, num1 = 0, num2 = 0, lon = 0, sig = 0;
%}

%%
[A-Z] {may=1;lon++;}
[a-z] {lon++;}
[0-9] {lon++;if(num1=1){num2=1;}else{num1 = 1;}}
[\_|\$|\\]+ {sig=1;lon++;}
[" "|\.] {sig=0;}
[\n] {if(may==1 && num2==1 && lon>=8 && sig==1){printf("\nAceptado\n");}
if(may!=1){printf("\nNo cumple con mayuscula\n");lon=0;may=0; num1=0; num2=0; sig=0;}
if (num2!=1){printf("\nNo cumple con numeros\n");lon=0;may=0; num1=0; num2=0; sig=0;}
if (lon<8){printf("\nNo cumple con longitud\n");lon=0;may=0; num1=0; num2=0; sig=0;}
if (sig!=1){printf("\nNo cumple con signos\n");lon=0;may=0; num1=0; num2=0; sig=0;}
} 
%%

int main() {
    yylex();
}