# Vehicle License Plate Validation Program
This program validates vehicle license plates based on a specific format: two uppercase letters, followed by two digits, and ending with three uppercase letters (e.g., AB12XYZ). The program utilizes Flex for lexical analysis and Bison for parsing the input, ensuring that the license plates conform to the defined structure.
## Procedure
1.	Lexical Analysis: The program uses Flex to tokenize the input string. It identifies:
o	Two uppercase letters at the beginning.
o	Two digits following the letters.
o	Three uppercase letters at the end.
2.	Parsing: Bison defines the grammar rules that the input must match to be considered valid. When the license plate format is correct, it prints a success message; otherwise, it provides an error message.
3.	Compilation: The program is compiled using the g++ compiler after generating the C files from the Flex and Bison files.
4.	Execution: Upon running the program, the user is prompted to input a license plate, and the program validates it according to the defined rules.
## Editor Used: 
Visual Studio Code 
## Compiler Used:
-	GCC (GNU Compiler Collection) for compiling C and C++ code.
- Bison and Flex for generating the parser and lexer, respectively.
## Executable Commands
1.	Generate C File from Bison Program: bison -d license_plate.y
2.	Generate C File from Lex Program: flex license_plate.l
3.	Compile the C File: g++ lex.yy.c license_plate.tab.c -o license_plate
4.	Run the Program with Input File: ./license_plate
## Output

## Test Case Explanation
### Test Case 1: Valid License Plate
Input: AB12XYZ
Expected Output: Valid License Plate: AB12XYZ
Explanation: This input adheres to the expected format. It starts with two uppercase letters (AB), followed by two digits (12), and ends with three uppercase letters (XYZ). Since it matches the defined structure, the program correctly identifies it as a valid license plate.
### Test Case 2: Invalid License Plate
Input: A123XYZ
Expected Output: Error: Invalid character in license plate
Explanation: This input is invalid because it starts with only one uppercase letter (A) instead of the required two. Additionally, the digits appear immediately after the first letter, breaking the defined format. The program correctly identifies this discrepancy and outputs an error message.
