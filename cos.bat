@echo off
title Super Program
:start
cls
echo ---=== Super Program ===---
echo Podaj haslo, aby kontynuowac:
set /p "haslo=>"
if "%haslo%"=="maslo" goto menu
goto blad
:menu
cls
echo ---=== MENU ===---  
echo 1. Otworz Notatnik
echo 2. Otworz Matematyka
echo 3. Otworz Paint
echo 4. Dane do pliku
echo 5. Koniec

set /p "wybor=>"
if "%wybor%"=="1" goto notatnik
if "%wybor%"=="2" goto matematyka
if "%wybor%"=="3" goto paint
if "%wybor%"=="4" goto dane
if "%wybor%"=="5" goto koniec
goto wrong
pause
:notatnik
:paint
mspaint
:matematyka
start matematyka.bat
:blad
pause
cls 
echo Nieprawidlowe haslo, sprobuj ponownie!
pause
goto start
:dane
start dane.bat
pause
goto menu
:wrong
cls
echo Nieprawidlowy wybor, sprobuj ponownie!
pause
goto menu
:koniec
cls
echo Dziekujemy za skorzystanie z programu!
pause  
exit
