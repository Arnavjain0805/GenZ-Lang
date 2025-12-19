# ***GenZ-Lang Compiler***


A Slang-Based Domain-Specific Language (DSL) \& Interpreter

GenZ-Lang is a custom-built programming language that replaces traditional, rigid syntax with modern GenZ slang. It features a complete compiler pipeline from lexical analysis to execution built using Flex (Lex), Bison (Yacc), and C.



### ***Features***:

Custom Syntax: Expressive commands like vibe check (conditionals) and spill (output).



Data Types: Supports Integer and String manipulation.



Control Flow: Fully functional if-else logic and while loops.



AST Execution: Uses an Abstract Syntax Tree (AST) for efficient program execution.



Symbol Table: Robust variable management and lookup system.



### ***Project Structure:***

\- `genz.l`: Lexical analyzer (Tokens)

\- `genz.y`: Syntax parser (Grammar)

\- `ast.h` / `main.c`: Abstract Syntax Tree and execution logic



### ***Tech Stack:***

Lexer: Flex (win\_flex)



Parser: Bison (win\_bison)



Backend: C (MinGW/GCC)



Environment: Windows 10/11



### ***Build Instructions (Windows)***

1\. win\_flex genz.l

2\. win\_bison -d genz.y

3\. gcc lex.yy.c genz.tab.c main.c -o genz.exe



### ***Syntax Guide:***


  | GenZ Keyword | Standard Equivalent | Description |
  | --- | --- | --- |
  | `the tea on [var] is [val] ~` | int var = val; | Variable Declaration |
  | `spill [val] ~` | "printf(""%s"", val);` | Print/Output |
  | `vibe check if (cond) then` | if (condition) { | Start If-Block |
  | `no cap` | } | End of If-Block |
  | `else` | else { | Start of Else-Block |
  | `cap` | } | End of Else-Block |
  | `on repeat while (cond)` | while (condition) { | Start of Loop |
  | `finna stop` | } | End of Loop |
  | `iykyk` | // | Comment |
  | `exit ~` | return 0; | Terminate Program |



### ***How to Build \& Run (Windows):***

  Ensure you have winflexbison and MinGW installed and added to your System PATH.

  1. Generate Lexer \& Parser:

    
    win\_flex genz.l
    win\_bison -d genz.y
    
    
  2. Compile:

    
    gcc lex.yy.c genz.tab.c main.c -o genz.exe
    
    
  3. Run a Script:

    
    genz.exe test.genz
    

<details>
  <summary>Example Code:</summary>

iykyk This is a countdown vibe.

the tea on counter is 3 ~

on repeat while (counter > 0)

spill counter ~

the tea on counter is counter - 1 ~

finna stop

spill "Loop finished, no cap." ~


</details>
