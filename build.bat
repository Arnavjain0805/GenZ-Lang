@echo off
echo --- Starting GenZ-Lang Build ---
win_flex genz.l
win_bison -d genz.y
gcc lex.yy.c genz.tab.c main.c -o genz.exe
if %errorlevel% equ 0 (
    echo Build Successful!
    echo Running my_program.genz...
    genz.exe my_program.genz
) else (
    echo Build failed. Check the errors above.
)
pause