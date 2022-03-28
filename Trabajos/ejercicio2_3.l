%{
/*
* ch2-03.l
* The word counter example for multiple files
*
*/
unsigned long charCount = 0, wordCount = 0, lineCount = 0;
#undef yywrap
%}
word [^ \t\n]+
eol \n
%%
{word} {++wordCount;charCount += yyleng;}
{eol} {lineCount++,charCount++;}
. {++charCount;}
%%
char **fileList;
unsigned currentFile = 0;
unsigned nFiles;
unsigned long totalCharCount = 0;
unsigned long totalWordCount = 0;
unsigned long totalLineCount = 0;
main(argc,argv){
    FILE *file;
    fileList = argv + 1;
    nFiles = argc - 1;
    if(argc == 2){
        currentFile=1;
        file=fopen(argv[0],"r");
    }
    
}