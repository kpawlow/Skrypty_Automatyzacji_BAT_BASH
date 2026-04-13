nano swiat

chmod +x skrypt

./skrypt 
-----------

#!/bin/bash
clear
zdanie="Witaj swiecie !!!"
echo $zdanie
echo "Jak masz na imie"
read imie
echo "Witaj $imie"
------------

#!/bin/bash
echo
echo -n "Podaj dwie liczby oddzielone spacjĻ: "
read a b

dodawanie=$[ a+b ]
odejmowanie=$[ a-b ]
mnozenie=$[ a*b ]
dzielenie_calkowite=$[ a/b ]

echo "Podane liczby: $a, $b"
echo
echo "Wynik dodawania: $dodawanie"
echo "Wynik odejmowania: $odejmowanie"
echo "Wynik mnozenia: $mnozenie"
echo "Wynik dzielenia calkowitego: $dzielenie_calkowite" 
----------------

#!/bin/bash
echo -n "Podaj imiÍ: "
read imie
echo -n "Wiek: "
read wiek
echo "Twoje imiÍ $imie i masz $wiek lat"
echo "Za 5 lat bÍdziesz mieś $[ wiek+5 ] lat" 



#!/bin/bash
clear

echo -n "Podaj imiÍ: "
read imie
echo -n "Podaj nazwisko: "
read nazwisko
echo -n "Podaj miasto: "
read miasto
echo -n "Podaj kod pocztowy: "
read poczta
echo -n "Podaj ulice: "
read ulica
echo -n "Podaj nr domu: "
read nrdomu
echo -n "Podaj nr telefonu: "
read telefon

echo "Wprowadzona osoba to: $imie $nazwisko" > $imie$nazwisko.txt
echo "Zamieszka≥(a/y): $poczta $miasto" >> $imie$nazwisko.txt
echo "Przy ulicy: $ulica nr domu $nrdomu" >> $imie$nazwisko.txt
echo "Telefon kontaktowy: $telefon" >> $imie$nazwisko.txt

echo "------------------------------"
echo "wprowadzone dane to: "
cat $imie$nazwisko.txt
echo "------------------------------"



