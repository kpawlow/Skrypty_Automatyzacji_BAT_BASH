# 🐧 Skrypt konta.sh i konta2.sh

![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)

Skrypt automatyzujący proces tworzenia wielu kont użytkowników z niestandardowymi ścieżkami katalogów domowych w systemach Linux.

---

## 📸 Podgląd działania
Możesz tutaj wstawić zrzut ekranu z terminala:
![Demonstracja działania](https://raw.githubusercontent.com/username/repo/main/screenshot.png) 

---

## 🚀 Jak użyć? (Szybki start)

Postępuj zgodnie z poniższymi krokami, aby uruchomić skrypt w swoim systemie:

### 1. Pobieranie i uprawnienia
Skopiuj kod do pliku lub sklonuj repozytorium, a następnie nadaj uprawnienia:
```bash
chmod +x user_gen.sh

2. Składnia polecenia
Skrypt przyjmuje dwa parametry:
	1.	Prefix użytkownika (np. user)
	2.	Prefix folderu domowego (np. home_folder)

⚙️ Analiza kodu
Skrypt wykorzystuje pętlę for w zakresie {1..5}:
#!/bin/bash

# $1 - pierwszy argument (nazwa użytkownika)
# $2 - drugi argument (nazwa folderu domowego)

for i in {1..5}; do
    adduser "$1$i" --home "/home/$2$i"
done

Zmienna	Opis	Wynik w pętli
$1$i	Nazwa konta	user1, user2, ...
--home	Flaga ścieżki	Wymusza własny katalog
/home/$2$i	Ścieżka domowa	/home/folder1, ...


🛠️ Wymagania
•	System operacyjny Linux (Ubuntu, Debian, CentOS itp.).
•	Pakiet adduser zainstalowany w systemie.
•	Uprawnienia Sudo/Root.
📝 Licencja
Ten projekt jest dostępny na licencji MIT. Możesz go dowolnie modyfikować i udostępniać.
Wygenerowano dla projektu automatyzacji systemów Linux.

