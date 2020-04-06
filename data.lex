	int lines = 0, c_count = 0, text = 0; 
DIGIT	0|1|2|3|4|5|6|7|8|9
%%
\n	++lines; ++c_count; 
{DIGIT}+		printf("<%s,------integar---- >\n",yytext);c_count++;
{DIGIT}*"."{DIGIT}+	printf("<%s,value with decimal 'float'>\n",yytext);c_count++; 
%%
int main()
{
FILE *fptr;
fptr = fopen("program.txt","w");
	
yylex();
printf( "# of lines = %d, # of chars = %d\n", lines, c_count );
fprintf(fptr,"%d",lines);
fprintf(fptr,"%d",c_count);

}
