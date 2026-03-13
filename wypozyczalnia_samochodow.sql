
-- -----------------------------------------------------
-- Baza danych: wypozyczalnia_samochodow
-- -----------------------------------------------------

CREATE DATABASE IF NOT EXISTS wypozyczalnia_samochodow;
USE wypozyczalnia_samochodow;

-- -----------------------------------------------------
-- Tabela: samochody
-- -----------------------------------------------------

CREATE TABLE samochody (
    id_samochodu INT AUTO_INCREMENT PRIMARY KEY,
    marka VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    rok_produkcji INT,
    nr_rejestracyjny VARCHAR(15) UNIQUE,
    status ENUM('wolny','zajety','serwis') DEFAULT 'wolny'
);

INSERT INTO samochody (marka, model, rok_produkcji, nr_rejestracyjny, status) VALUES
('Toyota','Corolla',2020,'WA12345','wolny'),
('Ford','Focus',2019,'WA54321','zajety'),
('Skoda','Octavia',2021,'KR22222','wolny'),
('Volkswagen','Golf',2018,'PO11111','serwis'),
('Opel','Astra',2017,'GD33333','wolny');

-- -----------------------------------------------------
-- Tabela: klienci
-- -----------------------------------------------------

CREATE TABLE klienci (
    id_klienta INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    telefon VARCHAR(20),
    email VARCHAR(100),
    nr_prawa_jazdy VARCHAR(30)
);

INSERT INTO klienci (imie, nazwisko, telefon, email, nr_prawa_jazdy) VALUES
('Jan','Kowalski','500600700','jan@test.pl','PJ123456'),
('Anna','Nowak','501222333','anna@test.pl','PJ654321'),
('Piotr','Zielinski','502333444','piotr@test.pl','PJ777888');

-- -----------------------------------------------------
-- Tabela: wypozyczenia
-- -----------------------------------------------------

CREATE TABLE wypozyczenia (
    id_wypozyczenia INT AUTO_INCREMENT PRIMARY KEY,
    id_samochodu INT,
    id_klienta INT,
    data_wypozyczenia DATE,
    data_zwrotu DATE,
    status ENUM('aktywne','zakonczone','anulowane') DEFAULT 'aktywne',
    
    FOREIGN KEY (id_samochodu) REFERENCES samochody(id_samochodu),
    FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta)
);

INSERT INTO wypozyczenia (id_samochodu, id_klienta, data_wypozyczenia, data_zwrotu, status) VALUES
(2,1,'2026-03-10','2026-03-15','aktywne'),
(1,2,'2026-03-01','2026-03-05','zakonczone');
