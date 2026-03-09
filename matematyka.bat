@echo off
color a
echo Witaj w programie matematycznym!
echo Zostaniesz poproszny o podanie liczby a i b
pause
cls
set /p a=Podaj pierwsza liczbe: 
set /p b=Podaj druga liczbe: 
echo Podales dwie liczby %a% i %b%
pause
cls
echo ---=== WYNIKI ===---
set /a doda=a+b
set /a odej=a-b
set /a mnoz=a*b
set /a dziel=a/b
echo Wynik dodawania = %doda%
echo Wynik odejmowania = %odej%
echo Wynik mnozenia = %mnoz%
echo Wynik dzielenia = %dziel%
echo ---=== WYNIKI ===--- >> wynik.txt
echo Wynik dodawania = %doda% >> wynik.txt
echo Wynik odejmowania = %odej% >> wynik.txt
echo Wynik mnozenia = %mnoz% >> wynik.txt
echo Wynik dzielenia = %dziel% >> wynik.txt
pause
cls
echo Dziekujemy za skorzystanie z programu matematycznego!
pause
exit