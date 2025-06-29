-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Creato il: Lug 06, 2025 alle 19:30
-- Versione del server: 10.11.13-MariaDB-ubu2204
-- Versione PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `empty`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

INSERT INTO `clienti` (`nome`, `cognome`, `telefono`, `email`) VALUES
('Lorenzo', 'Bianchi', '3331112222', 'lorenzo.bianchi@email.com'),
('Martina', 'Rossi', '3332223333', 'martina.rossi@email.com'),
('Alessio', 'Verdi', '3333334444', 'alessio.verdi@email.com'),
('Chiara', 'Russo', '3334445555', 'chiara.russo@email.com'),
('Simone', 'Ferrari', '3335556666', 'simone.ferrari@email.com'),
('Elisa', 'Esposito', '3336667777', 'elisa.esposito@email.com'),
('Davide', 'Colombo', '3337778888', 'davide.colombo@email.com'),
('Sara', 'Ricci', '3338889999', 'sara.ricci@email.com'),
('Matteo', 'Marino', '3339990000', 'matteo.marino@email.com'),
('Giulia', 'Gallo', '3330001111', 'giulia.gallo@email.com');
