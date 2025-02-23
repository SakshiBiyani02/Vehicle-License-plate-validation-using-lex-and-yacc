%{
#include <iostream>
#include <cstring>

using namespace std;

void yyerror(const char *s);
int yylex();
%}

%union {
    char *str;  // Union to hold the string
}

%token <str> LETTERS_START DIGITS LETTERS_END

%%

// Define the grammar for a valid license plate
input:
    LETTERS_START DIGITS LETTERS_END {
        cout << "Valid License Plate: " << $1 << $2 << $3 << endl;
        free($1);  // Free the allocated memory
        free($2);  // Free the allocated memory
        free($3);  // Free the allocated memory
    }
    ;

%%

// Error handling function
void yyerror(const char *s) {
    cerr << "Error: " << s << endl;
}

// Main function
int main() {
    cout << "Enter a license plate (e.g., AB12XYZ): ";
    yyparse();  // Start parsing the input
    return 0;
}
