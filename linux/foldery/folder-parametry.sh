#!/bin/bash
#można podać nazwę i liczbę

read -p "Podaj nazwę: " nazwa
read -p "Podaj liczbę: " liczba

for ((i=1; i<=liczba; i++)); do
    mkdir "$nazwa$i"
done
