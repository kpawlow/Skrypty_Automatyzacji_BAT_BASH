@echo off
title Super Projekt
:start
cls
echo ---=== Super Projekt ===---
echo Podaj haslo, aby uzyskac dostep do menu:
set /p "haslo=>"
if %haslo%==maslo goto menu
goto blad
:menu
cls
echo ---=== MENU ===---
echo 1. Dane do pliku
echo 2. Matematyka
echo 3. MS Paint
echo 4. Kalkulator
echo 5. Koniec
set /p "wybor=>"
if %wybor%==1 goto dane
if %wybor%==2 goto matematyka
if %wybor%==3 goto paint
if %wybor%==4 goto kalkulator
if %wybor%==5 goto koniec
goto wrong
:dane
cls
start dane.bat
goto menu
:blad
cls
echo Nieprawidlowe haslo, sprobuj ponownie!
pause  
goto start
:matematyka
cls 
start matematyka.bat
goto menu
:paint
cls
mspaint
goto menu
:kalkulator
cls
calc
goto menu
:koniec
cls
echo Dziekujemy za skorzystanie z programu!
pause
exit
:wrong
cls
echo Nieprawidlowy wybor, sprobuj ponownie!
pause
goto menu

