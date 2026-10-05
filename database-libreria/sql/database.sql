-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1:3306
-- Versione del server: 5.7.23
-- Versione PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libreria`
--
CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;

 
-- --------------------------------------------------------

--
-- Struttura della tabella `acquisto`
--

DROP TABLE IF EXISTS `acquisto`;
CREATE TABLE IF NOT EXISTS `acquisto` (
`nomeA` varchar(20) NOT NULL,
`cognomeA` varchar(20) NOT NULL,
`telAcquisto` varchar(15) NOT NULL,
`codAcq` int(11) NOT NULL,
`quantità` int(11) DEFAULT NULL,
`dataAcquisto` date DEFAULT NULL,
PRIMARY KEY (`nomeA`,`cognomeA`,`telAcquisto`,`codAcq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `acquisto`
--

INSERT INTO `acquisto` (`nomeA`, `cognomeA`, `telAcquisto`, `codAcq`, `quantità`, `dataAcquisto`) VALUES
('Mario', 'Rossi', '3660245848', 521478963, 2, '2023-12-11'),
('Giulia', 'Breccia', '3689574125', 254112478, 1, '2024-01-16'),
('Mario', 'Rossi', '3660245848', 147852369, 2, '2024-04-18'),
('Luca', 'Vitali', '3661531318', 452616068, 1, '2023-12-12'),
('Denis', 'Prendi', '6443531358', 521478963, 1, '2024-01-04'),
('Denis', 'Prendi', '6443531358', 123456789, 1, '2024-03-15'),
('Anna', 'Neri', '3318184887', 354125446, 1, '2023-11-09'),
('Franceso', 'Ferro', '3826561355', 254112478, 1, '2024-03-26'),
('Mario', 'Marino', '3653131115', 160760088, 1, '2024-02-20'),
('Luna', 'Sole', '3606551661', 681068008, 2, '2023-11-26'),
('Antonella', 'Russo', '3805413652', 118212652, 2, '2024-01-09'),
('Martina', 'Izzi', '3805214746', 652104477, 3, '2024-02-03'),
('Elena', 'Ricci', '3581531611', 354125446, 1, '2024-09-27'),
('Silvio', 'Valencia', '3604832587', 123456789, 1, '2023-12-10'),
('Mario', 'Rossi', '3660245848', 315478148, 1, '2024-02-13'),
('Denis', 'Prendi', '6443531358', 147852369, 3, '2024-04-13'),
('Nicola', 'Porcella', '3301255215', 201015407, 10, '2024-02-17');

-- --------------------------------------------------------

--
-- Struttura della tabella `arrivo`
--

DROP TABLE IF EXISTS `arrivo`;
CREATE TABLE IF NOT EXISTS `arrivo` (
`codArr` varchar(6) NOT NULL,
`ivaArr` char(11) NOT NULL,
`dataArrivo` date DEFAULT NULL,
PRIMARY KEY (`codArr`,`ivaArr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `arrivo`
--

INSERT INTO `arrivo` (`codArr`, `ivaArr`, `dataArrivo`) VALUES
('405442', '11022370156', '2023-12-19'),
('152463', '11022370156', '2024-01-28'),
('335044', '11022370156', '2024-02-05'),
('854102', '11022370156', '2024-03-02'),
('445014', '11022370156', '2024-03-02');

-- --------------------------------------------------------

--
-- Struttura della tabella `autore`
--

DROP TABLE IF EXISTS `autore`;
CREATE TABLE IF NOT EXISTS `autore` (
`nome` varchar(30) NOT NULL,
`cognome` varchar(30) NOT NULL,
PRIMARY KEY (`nome`,`cognome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `autore`
--

INSERT INTO `autore` (`nome`, `cognome`) VALUES
('Christelle', 'Dabos'),
('Claudio', 'Turchetti'),
('Donato', 'Carristi'),
('Francesca G.', 'Alessio'),
('Marco', 'Abate'),
('Paolo', 'Bolzern'),
('Zerocalcare', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `cartacliente`
--

DROP TABLE IF EXISTS `cartacliente`;
CREATE TABLE IF NOT EXISTS `cartacliente` (
`codiceCarta` varchar(8) NOT NULL,
`saldoSconti` float DEFAULT NULL,
`citta` varchar(20) DEFAULT NULL,
`numeroCivico` int(11) DEFAULT NULL,
`via` varchar(20) DEFAULT NULL,
PRIMARY KEY (`codiceCarta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cartacliente`
--

INSERT INTO `cartacliente` (`codiceCarta`, `saldoSconti`, `citta`, `numeroCivico`, `via`) VALUES
('24586', 10.5, 'Macerata', 30, 'Roma'),
('24869', 5.3, 'Ancona', 33, 'Tavernelle'),
('35694', 20.6, 'Ancona', 24, 'Tavernelle'),
('15486', 9.8, 'Macerata', 25, 'Spalato'),
('85426', 15.9, 'Recanati', 8, 'Corso Cavour'),
('25588', 50.5, 'Ancona', 30, 'Tavernelle'),
('32158', 14.3, 'Macerata', 14, 'Micozzi Ferri'),
('22547', 12.5, 'Ancona', 19, 'Brecce Bianche'),
('23697', 10.5, 'Ancona', 40, 'Barilatti'),
('23087', 22.5, 'Civitanova', 36, 'Carducci');

-- --------------------------------------------------------

--
-- Struttura della tabella `cartoleria`
--

DROP TABLE IF EXISTS `cartoleria`;
CREATE TABLE IF NOT EXISTS `cartoleria` (
`codCartoleria` int(11) NOT NULL,
`marca` varchar(30) DEFAULT NULL,
`dimensione` varchar(30) DEFAULT NULL,
`colore` varchar(20) DEFAULT NULL,
`tipologia` varchar(20) DEFAULT NULL,
PRIMARY KEY (`codCartoleria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cartoleria`
--

INSERT INTO `cartoleria` (`codCartoleria`, `marca`, `dimensione`, `colore`, `tipologia`) VALUES
(147852369, 'Exacompta', 'mm. 320 x 260', 'Arancione', 'Raccoglitore'),
(125874136, 'Staedtler', NULL, 'Bianco', 'Gomma'),
(258469713, 'Stabilo', 'cm. 10,5 x 1,7 x 2,7', 'Giallo', 'Evidenziatore'),
(201045407, 'Akena', NULL, NULL, 'Biglietti di Auguri'),
(652104477, 'Pilot', NULL, 'Nero', 'Penna'),
(204450163, 'Koh-I-Noor', '36 cm', 'Azzurro', 'Squadra'),
(541778104, 'Moleskine', 'Small', 'Nero', 'Cover');

-- --------------------------------------------------------

--
-- Struttura della tabella `cd`
--

DROP TABLE IF EXISTS `cd`;
CREATE TABLE IF NOT EXISTS `cd` (
`codCD` int(11) NOT NULL,
`nome` varchar(50) DEFAULT NULL,
`artista` varchar(40) DEFAULT NULL,
`etichetta` varchar(30) DEFAULT NULL,
`genere` varchar(30) DEFAULT NULL,
`anno` int(11) DEFAULT NULL,
PRIMARY KEY (`codCD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cd`
--

INSERT INTO `cd` (`codCD`, `nome`, `artista`, `etichetta`, `genere`, `anno`) VALUES
(321564789, 'Peter Pan', 'Ultimo', 'Believe', 'Musica Italiana', 2018),
(458237981, 'Playlist', 'Salmo', 'Epic', 'Hip Hop e Rap', 2018),
(681068008, 'Queen', 'Nicki Minaj', 'Universal', 'Hip Hop e Rap', 2018);

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
`nome` varchar(20) NOT NULL,
`cognome` varchar(20) NOT NULL,
`telCliente` varchar(15) NOT NULL,
`emailCliente` varchar(30) DEFAULT NULL,
PRIMARY KEY (`nome`,`cognome`,`telCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`nome`, `cognome`, `telCliente`, `emailCliente`) VALUES
('Lorenzo', 'Greco', '3866460846', 'lorenzo.gr@gmail.it'),
('Denis', 'Prendi', '6443531358', 'denis.pr@gmail.it'),
('Mario', 'Rossi', '3660245848', 'mario.ro@gmail.it'),
('Elena', 'Ricci', '3581531611', 'elena.ri@gmail.it'),
('Alessandro', 'Rossi', '3384048118', 'alessandro.ro@gmail.it'),
('Luca', 'Vitali', '3661531318', 'luca.vi@gmail.it'),
('Franceso', 'Ferro', '3826561355', 'francesco.fe@gmail.it'),
('Luna', 'Sole', '3606551661', 'luna.so@gmail.it'),
('Anna', 'Neri', '3318184887', 'anna.ne@gmail.it'),
('Mario', 'Marino', '3653131115', 'mario.ma@gmail.it'),
('Gianni', 'Rossi', '3645871220', 'gianni.ro@gmail.it'),
('Nicola', 'Porcella', '3301255215', 'nicolla.po@gmail.it'),
('Franco', 'Ferrari', '3316415156', 'franco.fe@gmail.it'),
('Giulia', 'Breccia', '3689574125', 'giulia.br@gmail.it'),
('Antonella', 'Russo', '3805413652', 'antonella.ru@gmail.it'),
('Alessandra', 'Moroti', '3601452874', 'alessandra.mo@gmail.it'),
('Marco', 'Panini', '3398521422', 'marco.pa@gmail.it'),
('Martina', 'Izzi', '3805214746', 'martina.iz@gmail.it'),
('Luca', 'Verdi', '3654277089', 'luca.ve@gmail.it'),
('Silvio', 'Valencia', '3604832587', 'silvio.va@gmail.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `consegna`
--

DROP TABLE IF EXISTS `consegna`;
CREATE TABLE IF NOT EXISTS `consegna` (
`ivaCon` char(11) NOT NULL,
`codCon` varchar(6) NOT NULL,
`dataPrevista` date DEFAULT NULL,
PRIMARY KEY (`ivaCon`,`codCon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `consegna`
--

INSERT INTO `consegna` (`ivaCon`, `codCon`, `dataPrevista`) VALUES
('01218231007', '405442', '2023-12-19'),
('00737950154', '420154', '2024-04-01'),
('02020150377', '335044', '2024-02-05'),
('11628670157', '854102', '2024-03-02'),
('03609050376', '445014', '2024-03-02');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

DROP TABLE IF EXISTS `dipendente`;
CREATE TABLE IF NOT EXISTS `dipendente` (
`codiceFiscale` char(16) NOT NULL,
`nome` varchar(20) DEFAULT NULL,
`cognome` varchar(20) DEFAULT NULL,
`dataDiNascita` date DEFAULT NULL,
`citta` varchar(20) DEFAULT NULL,
`numeroCivico` int(11) DEFAULT NULL,
`via` varchar(40) DEFAULT NULL,
`telDipendente` varchar(15) DEFAULT NULL,
`emailDipendente` varchar(30) DEFAULT NULL,
`oreEffettuate` int(11) DEFAULT NULL,
PRIMARY KEY (`codiceFiscale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`codiceFiscale`, `nome`, `cognome`, `dataDiNascita`, `citta`, `numeroCivico`, `via`, `telDipendente`, `emailDipendente`, `oreEffettuate`) VALUES
('NDRCNT84H06A271J', 'Andrea ', 'Conti', '1984-06-06', 'Ancona', 50, 'brecce bianche', '3806941574', 'andrea.co@gmail.com', 8),
('LLMSLV80R55A271J', 'Betty ', 'Illuminati', '1980-10-15', 'Ancona', 15, 'tavernelle', '3601248754', 'betty.il@gmail.com', 8),
('TRCLCU80A58A271Y', 'Lucia', 'Turchetti', '1980-01-18', 'Ancona', 15, 'barilatti', '3301520532', 'lucia.tu@gmail.com', 8),
('MSSFRR76R25A271G', 'Massimo', 'Ferri', '1976-10-25', 'Ancona', 10, 'carducci', '3620152574', 'massimo.fe@gmail.com', 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `dvd`
--

DROP TABLE IF EXISTS `dvd`;
CREATE TABLE IF NOT EXISTS `dvd` (
`codDVD` int(11) NOT NULL,
`titolo` varchar(50) DEFAULT NULL,
`regista` varchar(30) DEFAULT NULL,
`anno` int(11) DEFAULT NULL,
`genere` varchar(30) DEFAULT NULL,
`distributore` varchar(50) DEFAULT NULL,
PRIMARY KEY (`codDVD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dvd`
--

INSERT INTO `dvd` (`codDVD`, `titolo`, `regista`, `anno`, `genere`, `distributore`) VALUES
(741258963, 'Ritorno al bosco dei 100 acri', 'Marc Forster', 2018, 'Bambini e ragazzi', 'Walt Disney Pictures'),
(452616068, 'Devil Lady', 'Go Nagai', 1998, 'Anime', 'Yamato Video e Koch Media'),
(345871588, 'The Big Bang Theory. Stagione 11', 'Mark Cendrowski, Peter Chakos', 2018, 'Comedia', 'Warner Bros');

-- --------------------------------------------------------

--
-- Struttura della tabella `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
`indirizzoEmail` varchar(40) NOT NULL,
PRIMARY KEY (`indirizzoEmail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `email`
--

INSERT INTO `email` (`indirizzoEmail`) VALUES
(' info@longanesi.it'),
('andrea_co@hotmail.com'),
('babao@baopublishing.it'),
('betty_il@hotmail.com'),
('esculapio@pec.editrice-esculapio.it'),
('gulliverancona@libero.it'),
('info.it@stabilo.com'),
('info@edizionieo.it'),
('info@warnerbros.com'),
('informazioni@staedtler.com'),
('lucia_tu@hotmail.com'),
('massimo_fe@hotmail.com'),
('paola_ba@gmail.it'),
('piera_sa@gmail.it'),
('pited@pitagoragroup.it'),
('self@self.it'),
('servizio.clienti@mheducation.com'),
('silvia_mo@gmail.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

DROP TABLE IF EXISTS `evento`;
CREATE TABLE IF NOT EXISTS `evento` (
`Titolo` varchar(40) NOT NULL,
`dataEvento` date DEFAULT NULL,
`durata` time DEFAULT NULL,
`nParticipanti` int(11) DEFAULT NULL,
PRIMARY KEY (`Titolo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`Titolo`, `dataEvento`, `durata`, `nParticipanti`) VALUES
('Cosmoempatia', '2023-10-27', '01:20:13', 50),
('Black Friday', '2023-11-23', '72:00:00', 120),
('Settimana della Gentilezza', '2024-02-10', '12:00:00', 50),
('La casa delle farfalle', '2024-03-19', '01:06:00', 50),
('IO SO CHI SEI', '2024-04-06', '01:30:00', 60);

-- --------------------------------------------------------

--
-- Struttura della tabella `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
CREATE TABLE IF NOT EXISTS `fornitore` (
`partitaIVA` char(11) NOT NULL,
`denominazione` varchar(40) DEFAULT NULL,
`telFornitore` varchar(15) DEFAULT NULL,
`emailFornitore` varchar(40) DEFAULT NULL,
`cita` varchar(20) DEFAULT NULL,
`numeroCivico` int(11) DEFAULT NULL,
`via` varchar(20) DEFAULT NULL,
PRIMARY KEY (`partitaIVA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `fornitore`
--

INSERT INTO `fornitore` (`partitaIVA`, `denominazione`, `telFornitore`, `emailFornitore`, `cita`, `numeroCivico`, `via`) VALUES
('03609050376', 'Pitagora', '051530003', 'pited@pitagoragroup.it', 'Bologna', 3, 'del Legatore'),
('02020150377', 'Esculapio', '0516340113', 'esculapio@pec.editrice-esculapio.it', 'Bologna', 30, 'Terracini'),
('00896521002', 'Warner Bros', '06448891', 'info@warnerbros.com', 'Roma', 6, 'Giacomo Puccini'),
('00737950154', 'Staedtler', '02399341', 'informazioni@staedtler.com', 'Milano', 5, 'Privata Archimede'),
('01218231007', 'E/O', '0637351096', 'info@edizionieo.it', 'Roma', 1, 'Gabriele Camozzi'),
('07310360966', 'Stabilo', '0239528501', 'info.it@stabilo.com', 'Milano', 38, 'Messina'),
('07805780967', 'McGraw-Hill Education', '025357181', 'servizio.clienti@mheducation.com', 'Milano', 89, 'Giuseppe Ripamonti'),
('11628670157', 'Self Distribuzione', '02509011', 'self@self.it', 'Milano', 14, 'Gianfranco Malipiero'),
('00739290153', 'Longanesi', '0234597620', 'info@longanesi.it', 'Milano', 10, 'Gherardini'),
('06826980960', 'Bao Publishing', '0249531460', 'babao@baopublishing.it', 'Milano', 8, 'Leopardi');

-- --------------------------------------------------------

--
-- Struttura della tabella `genere`
--

DROP TABLE IF EXISTS `genere`;
CREATE TABLE IF NOT EXISTS `genere` (
`nome` varchar(30) NOT NULL,
PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `genere`
--

INSERT INTO `genere` (`nome`) VALUES
('Conflitti Armati'),
('Elettronica'),
('Fantasy'),
('Informatica'),
('Matematica'),
('Thriller');

-- --------------------------------------------------------

--
-- Struttura della tabella `incarico`
--

DROP TABLE IF EXISTS `incarico`;
CREATE TABLE IF NOT EXISTS `incarico` (
`ivaInc` char(11) NOT NULL,
`codInc` varchar(6) NOT NULL,
`dataIncarico` date DEFAULT NULL,
PRIMARY KEY (`ivaInc`,`codInc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `incarico`
--

INSERT INTO `incarico` (`ivaInc`, `codInc`, `dataIncarico`) VALUES
('01218231007', '254163', '2023-12-20'),
('02020150377', '152463', '2024-01-28'),
('00737950154', '325416', '2024-02-15'),
('11628670157', '611025', '2024-03-27'),
('03609050376', '200456', '2024-03-27');

-- --------------------------------------------------------

--
-- Struttura della tabella `lavoro`
--

DROP TABLE IF EXISTS `lavoro`;
CREATE TABLE IF NOT EXISTS `lavoro` (
`ivaLav` char(11) NOT NULL,
`codLav` char(16) NOT NULL,
`dataInizio` date DEFAULT NULL,
PRIMARY KEY (`ivaLav`,`codLav`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `lavoro`
--

INSERT INTO `lavoro` (`ivaLav`, `codLav`, `dataInizio`) VALUES
('11022370156', 'NDRCNT84H06A271J', '2016-01-08'),
('11022370156', 'LLMSLV80R55A271D', '2022-01-01'),
('11022370156', 'TRCLCU80A58A271Y', '2020-01-15'),
('11022370156', 'MSSFRR76R25A271G', '2017-01-23');

-- --------------------------------------------------------

--
-- Struttura della tabella `libro`
--

DROP TABLE IF EXISTS `libro`;
CREATE TABLE IF NOT EXISTS `libro` (
`codLibro` int(11) NOT NULL,
`edizione` varchar(30) DEFAULT NULL,
`anno` int(11) DEFAULT NULL,
`genereLibro` varchar(20) DEFAULT NULL,
`titolo` varchar(55) DEFAULT NULL,
`nomeAutore` varchar(30) DEFAULT NULL,
`cognomeAutore` varchar(30) DEFAULT NULL,
PRIMARY KEY (`codLibro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `libro`
--

INSERT INTO `libro` (`codLibro`, `edizione`, `anno`, `genereLibro`, `titolo`, `nomeAutore`, `cognomeAutore`) VALUES
(123456789, 'Pitagora', 2004, 'Elettronica', 'Elementi di Elettronica', 'Claudio', 'Turchetti'),
(521478963, 'Esculapio', 2017, 'Matematica', 'Analisi Matematica1', 'Francesca G.', 'Alessio'),
(315478148, 'McGraw-Hill Education', 2015, 'Matematica', 'Geometria Analitica con Elementi di Algebra Lineare', 'Marco', 'Abate'),
(354125446, 'McGraw-Hill Education', 2015, 'Informatica', 'Fondamenti di Controlli Automatici', 'Paolo', 'Bolzern'),
(118212652, 'E/O', 2019, 'Fantasy', 'Gli scomparsi di Chiardiluna. L\'attraversaspecchi', 'Christelle', 'Dabos'),
(254112478, 'Longanesi', 2018, 'Thriller', 'Il gioco del suggeritore', 'Donato', 'Carrisi'),
(160760088, 'Bao Publishing', 2016, 'Conflitti Armati', 'Kobane calling', 'Zerocalcare', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `negozio`
--

DROP TABLE IF EXISTS `negozio`;
CREATE TABLE IF NOT EXISTS `negozio` (
`partitaIVA` char(11) NOT NULL,
`nome` varchar(20) DEFAULT NULL,
`nomeTitolare` varchar(20) DEFAULT NULL,
`cognomeTitolare` varchar(20) DEFAULT NULL,
`telNegozio` varchar(15) DEFAULT NULL,
`emailNegozio` varchar(30) DEFAULT NULL,
`cita` varchar(20) DEFAULT NULL,
`numeroCivico` int(11) DEFAULT NULL,
`via` varchar(20) DEFAULT NULL,
PRIMARY KEY (`partitaIVA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `negozio`
--

INSERT INTO `negozio` (`partitaIVA`, `nome`, `nomeTitolare`, `cognomeTitolare`, `telNegozio`, `emailNegozio`, `cita`, `numeroCivico`, `via`) VALUES
('1102', 'Mondadori', 'Massimo', 'Ferri', '07153215', 'gulliverancona@libero.it', 'Ancona', 31, 'Corso Mazzini');

-- --------------------------------------------------------

--
-- Struttura della tabella `orario`
--

DROP TABLE IF EXISTS `orario`;
CREATE TABLE IF NOT EXISTS `orario` (
`fasciaIniziale` varchar(25) NOT NULL,
`fasciaIntermedia` varchar(25) NOT NULL,
`fasciaFinale` varchar(25) NOT NULL,
`codFisc` char(16) NOT NULL,
PRIMARY KEY (`fasciaIniziale`,`fasciaIntermedia`,`fasciaFinale`,`codFisc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `orario`
--

INSERT INTO `orario` (`fasciaIniziale`, `fasciaIntermedia`, `fasciaFinale`, `codFisc`) VALUES
('', '2024-02-03 13:30 - 17:30', '2024-02-03 17:30 - 21:30', 'TRCLCU80A58A271Y'),
('', '2024-02-04 13:30 - 17:30', '2024-02-04 17:30 - 21:30', 'TRCLCU80A58A271Y'),
('', '2024-02-05 13:30 - 17:30', '2024-02-05 17:30 - 21:30', 'LLMSLV80R55A271D'),
('', '2024-02-06 13:30 - 17:30', '2024-02-06 17:30 - 21:30', 'MSSFRR76R25A271G'),
('', '2024-02-07 13:30 - 17:30', '2024-02-07 17:30 - 21:30', 'TRCLCU80A58A271Y'),
('', '2024-02-08 13:30 - 17:30', '2024-02-08 17:30 - 21:30', 'NDRCNT84H06A271J'),
('2024-02-03 9:30 - 13:30', '', '2024-02-03 17:30 - 21:30', 'LLMSLV80R55A271D'),
('2024-02-03 9:30 - 13:30', '', '2024-02-03 17:30 - 21:30', 'MSSFRR76R25A271G'),
('2024-02-03 9:30 - 13:30', '2024-02-03 13:30 - 17:30', '', 'NDRCNT84H06A271J'),
('2024-02-04 9:30 - 13:30', '', '2024-02-04 17:30 - 21:30', 'MSSFRR76R25A271G'),
('2024-02-04 9:30 - 13:30', '', '2024-02-04 17:30 - 21:30', 'NDRCNT84H06A271J'),
('2024-02-04 9:30 - 13:30', '2024-02-04 13:30 - 17:30', '', 'LLMSLV80R55A271D'),
('2024-02-05 9:30 - 13:30', '', '2024-02-05 17:30 - 21:30', 'MSSFRR76R25A271G'),
('2024-02-05 9:30 - 13:30', '', '2024-02-05 17:30 - 21:30', 'TRCLCU80A58A271Y'),
('2024-02-05 9:30 - 13:30', '2024-02-05 13:30 - 17:30', '', 'NDRCNT84H06A271J'),
('2024-02-06 9:30 - 13:30', '', '2024-02-06 17:30 - 21:30', 'LLMSLV80R55A271D'),
('2024-02-06 9:30 - 13:30', '', '2024-02-06 17:30 - 21:30', 'NDRCNT84H06A271J'),
('2024-02-06 9:30 - 13:30', '2024-02-06 13:30 - 17:30', '', 'TRCLCU80A58A271Y'),
('2024-02-07 9:30 - 13:30', '', '2024-02-07 17:30 - 21:30', 'LLMSLV80R55A271D'),
('2024-02-07 9:30 - 13:30', '', '2024-02-07 17:30 - 21:30', 'MSSFRR76R25A271G'),
('2024-02-07 9:30 - 13:30', '2024-02-07 13:30 - 17:30', '', 'NDRCNT84H06A271J'),
('2024-02-08 9:30 - 13:30', '', '2024-02-08 17:30 - 21:30', 'LLMSLV80R55A271D'),
('2024-02-08 9:30 - 13:30', '', '2024-02-08 17:30 - 21:30', 'MSSFRR76R25A271G'),
('2024-02-08 9:30 - 13:30', '2024-02-08 13:30 - 17:30', '', 'TRCLCU80A58A271Y');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine`
--

DROP TABLE IF EXISTS `ordine`;
CREATE TABLE IF NOT EXISTS `ordine` (
`codice` varchar(6) NOT NULL,
`dataOrdine` date DEFAULT NULL,
`quantità` int(11) DEFAULT NULL,
PRIMARY KEY (`codice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`codice`, `dataOrdine`, `quantità`) VALUES
('254163', '2023-12-20', 50),
('152463', '2024-01-28', 20),
('325416', '2024-02-15', 60),
('420154', '2024-04-01', 60),
('200456', '2024-03-27', 20),
('405442', '2023-12-19', 50),
('335044', '2024-02-05', 20),
('445014', '2024-03-02', 20),
('611025', '2024-03-27', 20),
('854102', '2024-03-02', 20);

-- --------------------------------------------------------

--
-- Struttura della tabella `organizzatore`
--

DROP TABLE IF EXISTS `organizzatore`;
CREATE TABLE IF NOT EXISTS `organizzatore` (
`Nominativo` varchar(40) NOT NULL,
`telOrganizzatore` varchar(15) DEFAULT NULL,
`emailOrganizzatore` varchar(30) DEFAULT NULL,
PRIMARY KEY (`Nominativo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `organizzatore`
--

INSERT INTO `organizzatore` (`Nominativo`, `telOrganizzatore`, `emailOrganizzatore`) VALUES
('Piera Salvatori', '3825666566', 'piera.sa@gmail.it'),
('Negozio Mondadori', '07153215', 'gulliverancona@libero.it'),
('Silvia Montemurro', '3806525225', 'silvia_mo@gmail.it'),
('Paola Barbato', '3807921458', 'paola_ba@gmail.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `organizzazione`
--

DROP TABLE IF EXISTS `organizzazione`;
CREATE TABLE IF NOT EXISTS `organizzazione` (
`titoloOr` varchar(40) NOT NULL,
`nominativoOr` varchar(20) NOT NULL,
`dataInizio` date DEFAULT NULL,
`dataFine` date DEFAULT NULL,
PRIMARY KEY (`titoloOr`,`nominativoOr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `organizzazione`
--

INSERT INTO `organizzazione` (`titoloOr`, `nominativoOr`, `dataInizio`, `dataFine`) VALUES
('Cosmoempatia', 'Piera Salvatori', '2023-10-27', '2023-10-27'),
('Black Friday', 'Negozio Mondadori', '2023-11-23', '2023-11-23'),
('Settimana della Gentilezza', 'Negozio Mondadori', '2024-02-10', '2024-02-10'),
('La casa delle farfalle', 'Silvia Montemurro', '2024-03-19', '2024-03-19'),
('IO SO CHI SEI', 'Paola Barbato', '2024-04-06', '2024-04-06');

-- --------------------------------------------------------

--
-- Struttura della tabella `possesso`
--

DROP TABLE IF EXISTS `possesso`;
CREATE TABLE IF NOT EXISTS `possesso` (
`nomeP` varchar(20) NOT NULL,
`cognomeP` varchar(20) NOT NULL,
`telPossesso` varchar(15) NOT NULL,
`codCarta` varchar(8) NOT NULL,
`dataAttivazione` date DEFAULT NULL,
PRIMARY KEY (`nomeP`,`cognomeP`,`telPossesso`,`codCarta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `possesso`
--

INSERT INTO `possesso` (`nomeP`, `cognomeP`, `telPossesso`, `codCarta`, `dataAttivazione`) VALUES
('Mario', 'Rossi', '3660245848', '24586', '2024-10-15'),
('Elena', 'Ricci', '3581531611', '32158', '2024-01-19'),
('Luca', 'Vitali', '3661531318', '24869', '2023-07-12'),
('Giulia', 'Breccia', '3689574125', '23087', '2023-09-13'),
('Nicola', 'Porcella', '3301255215', '23697', '2024-01-06'),
('Anna', 'Neri', '3318184887', '35694', '2023-02-12'),
('Silvio', 'Valencia', '3604832587', '15486', '2023-05-14');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
CREATE TABLE IF NOT EXISTS `prodotto` (
`codiceaBarre` int(11) NOT NULL,
`settoreNegozio` varchar(20) DEFAULT NULL,
`disponibilità` decimal(3,0) NOT NULL,
`prezzo` float DEFAULT NULL,
PRIMARY KEY (`codiceaBarre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotto`
--

INSERT INTO `prodotto` (`codiceaBarre`, `settoreNegozio`, `disponibilità`, `prezzo`) VALUES
(123456789, 'Universitari', '4', 22),
(321564789, 'Musica', '10', 11.99),
(147852369, 'Cartoleria', '10', 1.43),
(125874136, 'Cartoleria', '100', 1.14),
(741258963, 'Cinema', '10', 15.99),
(521478963, 'Universitari', '5', 20.4),
(258469713, 'Cartoleria', '30', 1.2),
(458237981, 'Musica', '10', 17.76),
(452616068, 'Cinema', '10', 34.99),
(118212652, 'Fantasy', '15', 13.6),
(254112478, 'Horror', '13', 18.7),
(315478148, 'Universitari', '6', 33.15),
(681068008, 'Musica', '5', 20.5),
(201045407, 'Cartoleria', '30', 3.5),
(652104477, 'Cartoleria', '50', 2.9),
(204450163, 'Cartoleria', '15', 8.9),
(345871588, 'Cinema', '10', 29.99),
(354125446, 'Universitari', '10', 46.55),
(541778104, 'Cartoleria', '13', 18.9),
(160760088, 'Fumetti', '10', 17);

-- --------------------------------------------------------

--
-- Struttura della tabella `reso`
--

DROP TABLE IF EXISTS `reso`;
CREATE TABLE IF NOT EXISTS `reso` (
`nomeR` varchar(20) NOT NULL,
`cognomeR` varchar(20) NOT NULL,
`telReso` varchar(15) NOT NULL,
`codReso` int(11) NOT NULL,
`quantità` int(11) DEFAULT NULL,
`dataReso` date DEFAULT NULL,
PRIMARY KEY (`nomeR`,`cognomeR`,`telReso`,`codReso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `reso`
--

INSERT INTO `reso` (`nomeR`, `cognomeR`, `telReso`, `codReso`, `quantità`, `dataReso`) VALUES
('Mario', 'Rossi', '3660245848', 521478963, 1, '2024-04-18'),
('Giulia', 'Breccia', '3689574125', 254112478, 1, '2024-01-26');

-- --------------------------------------------------------

--
-- Struttura della tabella `richiesta`
--

DROP TABLE IF EXISTS `richiesta`;
CREATE TABLE IF NOT EXISTS `richiesta` (
`nomeRic` varchar(20) NOT NULL,
`cognomeRic` varchar(20) NOT NULL,
`telRichiesta` varchar(15) NOT NULL,
`cartaRic` varchar(8) NOT NULL,
`dataRichiesta` date DEFAULT NULL,
PRIMARY KEY (`nomeRic`,`cognomeRic`,`telRichiesta`,`cartaRic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `richiesta`
--

INSERT INTO `richiesta` (`nomeRic`, `cognomeRic`, `telRichiesta`, `cartaRic`, `dataRichiesta`) VALUES
('Denis', 'Prendi', '6443531358', '25588', '2024-03-15'),
('Alessandro', 'Rossi', '3384048118', '85426', '2024-11-22'),
('Alessandra', 'Moroti', '3601452874', '22547', '2023-12-26');

-- --------------------------------------------------------

--
-- Struttura della tabella `settore`
--

DROP TABLE IF EXISTS `settore`;
CREATE TABLE IF NOT EXISTS `settore` (
`nome` varchar(20) NOT NULL,
PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `settore`
--

INSERT INTO `settore` (`nome`) VALUES
('Bambini'),
('Cartoleria'),
('Cinema'),
('eReader'),
('Fantasy'),
('Fumetti'),
('Games'),
('Giocattoli'),
('Horror'),
('Musica'),
('Narrativa'),
('Regalo'),
('Universitari');

-- --------------------------------------------------------

--
-- Struttura della tabella `svolgimento`
--

DROP TABLE IF EXISTS `svolgimento`;
CREATE TABLE IF NOT EXISTS `svolgimento` (
`svolgimentoIniziale` varchar(25) NOT NULL,
`svolgimentoIntermedio` varchar(25) NOT NULL,
`svolgimentoFinale` varchar(25) NOT NULL,
`codSvol` char(16) NOT NULL,
`dataSvolgimento` date DEFAULT NULL,
PRIMARY KEY (`svolgimentoIniziale`,`svolgimentoIntermedio`,`svolgimentoFinale`,`codSvol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `svolgimento`
--

INSERT INTO `svolgimento` (`svolgimentoIniziale`, `svolgimentoIntermedio`, `svolgimentoFinale`, `codSvol`, `dataSvolgimento`) VALUES
('2024-02-04 9:30 - 13:30', '2024-02-04 13:30 - 17:30', '', 'LLMSLV80R55A271D', '2024-02-04'),
('', '2024-02-04 13:30 - 17:30', '2024-02-04 17:30 - 21:30', 'TRCLCU80A58A271Y', '2024-02-04'),
('2024-02-04 9:30 - 13:30', '', '2024-02-04 17:30 - 21:30', 'NDRCNT84H06A271', '2024-02-04'),
('2024-02-04 9:30 - 13:30', '', '2024-02-04 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-04'),
('2024-02-05 9:30 - 13:30', '2024-02-05 13:30 - 17:30', '', 'NDRCNT84H06A271J', '2024-02-05'),
('', '2024-02-05 13:30 - 17:30', '2024-02-05 17:30 - 21:30', 'LLMSLV80R55A271D', '2024-02-05'),
('2024-02-05 9:30 - 13:30', '', '2024-02-05 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-05'),
('2024-02-05 9:30 - 13:30', '', '2024-02-05 17:30 - 21:30', 'TRCLCU80A58A271Y', '2024-02-05'),
('2024-02-06 9:30 - 13:30', '', '2024-02-06 17:30 - 21:30', 'NDRCNT84H06A271J', '2024-02-06'),
('2024-02-06 9:30 - 13:30', '', '2024-02-06 17:30 - 21:30', 'LLMSLV80R55A271D', '2024-02-06'),
('', '2024-02-06 13:30 - 17:30', '2024-02-06 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-06'),
('2024-02-06 9:30 - 13:30', '2024-02-06 13:30 - 17:30', '', 'TRCLCU80A58A271Y', '2024-02-06'),
('2024-02-07 9:30 - 13:30', '2024-02-07 13:30 - 17:30', '', 'NDRCNT84H06A271J', '2024-02-07'),
('2024-02-07 9:30 - 13:30', '', '2024-02-07 17:30 - 21:30', 'LLMSLV80R55A271D', '2024-02-07'),
('', '2024-02-07 13:30 - 17:30', '2024-02-07 17:30 - 21:30', 'TRCLCU80A58A271Y', '2024-02-07'),
('2024-02-07 9:30 - 13:30', '', '2024-02-07 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-07'),
('', '2024-02-08 13:30 - 17:30', '2024-02-08 17:30 - 21:30', 'NDRCNT84H06A271J', '2024-02-08'),
('2024-02-08 9:30 - 13:30', '', '2024-02-08 17:30 - 21:30', 'LLMSLV80R55A271D', '2024-02-08'),
('2024-02-08 9:30 - 13:30', '2024-02-08 13:30 - 17:30', '', 'TRCLCU80A58A271Y', '2024-02-08'),
('2024-02-08 9:30 - 13:30', '', '2024-02-08 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-08'),
('2024-02-03 9:30 - 13:30', '2024-02-03 13:30 - 17:30', '', 'NDRCNT84H06A271J', '2024-02-03'),
('2024-02-03 9:30 - 13:30', '', '2024-02-03 17:30 - 21:30', 'LLMSLV80R55A271D', '2024-02-03'),
('', '2024-02-03 13:30 - 17:30', '2024-02-03 17:30 - 21:30', 'TRCLCU80A58A271Y', '2024-02-03'),
('2024-02-03 9:30 - 13:30', '', '2024-02-03 17:30 - 21:30', 'MSSFRR76R25A271G', '2024-02-03');

-- --------------------------------------------------------

--
-- Struttura della tabella `telefono`
--

DROP TABLE IF EXISTS `telefono`;
CREATE TABLE IF NOT EXISTS `telefono` (
`numero` varchar(15) NOT NULL,
PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `telefono`
--

INSERT INTO `telefono` (`numero`) VALUES
('0234597620'),
('02393941'),
('0239528501'),
('0249531460'),
('02509011'),
('025357181'),
('051530003'),
('0516340113'),
('0637351096'),
('06448891'),
('07153215'),
('3301520532'),
('3601248754'),
('3620152574'),
('3806525225'),
('3806941574'),
('3807921458'),
('3825666566');

-- --------------------------------------------------------

--
-- Struttura della tabella `vendita`
--

DROP TABLE IF EXISTS `vendita`;
CREATE TABLE IF NOT EXISTS `vendita` (
`ivaVen` char(11) NOT NULL,
`codVen` int(11) NOT NULL,
`quantità` int(11) DEFAULT NULL,
`ricavo` float DEFAULT NULL,
PRIMARY KEY (`ivaVen`,`codVen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `vendita`
--

INSERT INTO `vendita` (`ivaVen`, `codVen`, `quantità`, `ricavo`) VALUES
('11022370156', 123456789, 5, 110),
('11022370156', 125874136, 5, 5.7),
('11022370156', 354125446, 8, 46.55),
('11022370156', 321564789, 2, 23.98),
('11022370156', 521478963, 2, 40.8),
('11022370156', 452616068, 3, 104.97),
('11022370156', 118212652, 1, 13.6),
('11022370156', 204450163, 2, 17.8),
('11022370156', 258469713, 7, 8.4),
('11022370156', 201045407, 6, 21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;