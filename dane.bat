@echo off
title Dane do pliku
cls
echo --- Zapis danych do pliku ---
set /p imie=Podaj imie: 
set /p nazwisko=Podaj nazwisko: 
set /p ulica=Podaj ulice: 
set /p nr_domu=Podaj nr domu: 
echo Podane imie i nazwisko to %imie% %nazwisko% > %imie%_%nazwisko%.txt
echo Podany adres to %ulica% %nr_domu% >> %imie%_%nazwisko%.txt
echo Dane zostaly zapisane do pliku %imie%_%nazwisko%.txt
pause
exit