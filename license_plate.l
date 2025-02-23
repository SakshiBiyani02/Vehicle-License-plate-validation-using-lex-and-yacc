%{
#include "license_plate.tab.h"
#include <iostream>
#include <cstring>

using namespace std;

void yyerror(const char *s);
%}

%option noyywrap

%%


[A-Z]{2}          { yylval.str = strdup(yytext); return LETTERS_START; }  // Two uppercase letters
[0-9]{2}          { yylval.str = strdup(yytext); return DIGITS; }           // Two digits
[A-Z]{3}          { yylval.str = strdup(yytext); return LETTERS_END; }      // Three uppercase letters
[ \t\n]+          { /* Ignore whitespace */ }   // Ignore whitespace
.                 { yyerror("Invalid character in license plate"); }



%%
