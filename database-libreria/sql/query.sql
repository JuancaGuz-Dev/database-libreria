-- Progetto: Database libreria
-- Query SQL

-- ***********************************************************
-- INSERIMENTO DATI
-- ***********************************************************

-- 1. Inserimento nuovo cliente (circa 5 volte al giorno).
INSERT INTO cliente (nome, cognome, emailCliente, telCliente)
VALUES ('Luigi','Bianchi', 'luigi.bi@gmail.com', '3355901234');

-- Verifica che il cliente sia salvato
SELECT * 
FROM cliente;

-- 2. Inserimento nuovo dipendente (circa una volta all'anno).
INSERT INTO dipendente (codiceFiscale, nome, cognome, dataDiNascita, citta, numeroCivico, via, telDipendente, emailDipendente, oreEffettuate)
VALUES ('LLMSLV80R55A271J','Betty', 'Illuminati', '1980', 'Ancona', 15, 'Tavernelle', '3601248754', 'betty_il@hotmail.com', 8);

-- Verifica che il dipendente sia salvato
SELECT * 
FROM dipendente;

-- 3. Inserimento orario settimanale (una volta alla settimana).
INSERT INTO orario (fasciaIniziale, fasciaIntermedia, fasciaFinale, codFisc)
VALUES ('', '2024-02-05 13:30 – 17:30', '2024-02-05 17:30 – 21:30', 'LLMSLV80R55A271D');

-- Verifica che l'orario sia salvato
SELECT *
FROM orario;

-- 4. Inserimento nuovo ordine (circa 2 volte alla settimana).
INSERT INTO ordine (codice, dataOrdine, quantità)
VALUES ('420134', '2024-06-01', 60);

-- Verifica che l'ordine sia salvato
SELECT *
FROM ordine;

-- 5. Inserimento nuovo evento (circa una volta al mese).
INSERT INTO evento (Titolo, dataEvento, durata, nParticipanti)
VALUES ('Incontro con il Autore', '2024-04-23', '01:20:13', 45);

-- Verifica che l'evento sia salvato
SELECT *
FROM evento;

-- ***********************************************************
-- MODIFICA DATI
-- ***********************************************************

-- 6. Modifica orario settimanale (circa una volta alla settimana).
-- *La modifica dell’orario settimanale si realizza modificando l’orario del giorno del svolgimento del dipendente e poi la fascia oraria.
-- a. Modifica della data dello svolgimento del dipendente
UPDATE svolgimento 
SET svolgimentoIntermedio = '2024-02-08 13:30 - 17:30', 
	svolgimentoFinale = ''
WHERE svolgimentoIniziale = '2024-02-08 9:30 - 13:30' 
  AND svolgimentoIntermedio = '' 
  AND svolgimentoFinale = '2024-02-08 17:30 - 21:30' 
  AND codSvol = 'LLMSLV80R55A271D';

-- Verificare che il svolgimento sia salvato
SELECT *
FROM svolgimento
WHERE codSvol = 'LLMSLV80R55A271D'
  AND dataSvolgimento = '2024-02-08';
  
-- Vedi tutti gli svolgimenti, inclusa la modifica
SELECT *
FROM svolgimento;

-- b. Modifica della fascia oraria settimanale del dipendente
UPDATE orario 
SET fasciaIntermedia = '2024-02-08 13:30 - 17:30', 
    fasciaFinale = ''
WHERE fasciaIniziale = '2024-02-08 9:30 - 13:30'
  AND fasciaIntermedia = ''
  AND fasciaFinale = '2024-02-08 17:30 - 21:30'
  AND codFisc = 'LLMSLV80R55A271D';

-- Verificare che l'orario del dipendente sia salvato 
SELECT *
FROM orario
WHERE codFisc = 'LLMSLV80R55A271D';

-- 7. Modifica dati cliente (circa una volta al mese).
UPDATE cliente 
SET  emailCliente= 'lorenzo.greco@gmail.it'
WHERE nome= 'Lorenzo' 
AND cognome= 'Greco' 
AND telCliente= '3866460846'; 

-- Verifica che i dati del cliente sia salvato
SELECT *
FROM cliente;
 
-- 8. Modifica orario dipendenti (circa una volta al giorno).
UPDATE orario 
SET fasciaIniziale = '', 
    fasciaFinale = '2024-02-08 17:30 - 21:30'
WHERE fasciaIniziale = '2024-02-08 9:30 - 13:30'
  AND fasciaIntermedia = '2024-02-08 13:30 - 17:30'
  AND fasciaFinale = ''
  AND codFisc = 'TRCLCU80A58A271Y';
  
-- Verificare che l'orario del dipendente sia salvato 
SELECT *
FROM orario
WHERE codFisc = 'TRCLCU80A58A271Y';

-- 9. Modifica disponibilità prodotto (circa 2 volte al mese). 
UPDATE prodotto 
SET disponibilità='20' 
where 
codiceaBarre='160760088'; 

-- Verificare che la disponibilità del prodotto sia salvata
SELECT *
FROM prodotto
WHERE codiceaBarre = '160760088';

-- Verifica che la modifica sia salvata nella lista prodotto
SELECT *
FROM prodotto;

-- 10. Modifica ordine (circa una volta a settimana). 
UPDATE ordine
SET dataOrdine = '2024-03-05', 
    quantit = 30
WHERE codice = '854102';

-- Verifica che l'ordine sia stato modificato
SELECT * 
FROM ordine 
WHERE codice = '854102';

-- Verifica che la modifica sia salvata nella lista ordine
SELECT *
FROM ordine;

-- 11. Modifica dati evento (circa una volta al mese). 
UPDATE evento 
SET durata='01:20:20', 
	nParticipanti= '40' 
WHERE Titolo = 'IO SO CHI SEI' 
	AND dataEvento = '2024-04-06'; 

-- Verifica che l'evento sia stato modificato
SELECT * 
FROM evento
WHERE Titolo = 'IO SO CHI SEI';

-- Verifica che la modifica sia salvata nella lista evento
SELECT *
FROM evento;

-- ***********************************************************
-- CONSULTAZIONE DATI
-- ***********************************************************

--  12. Consultazione dati evento (circa una volta al mese). 
SELECT  * 
FROM evento 
wHERE Titolo = 'La casa delle farfalle'; 

-- 13. Consultazione dati dipendente (circa una volta al mese). 
SELECT  * 
FROM dipendente 
WHERE codiceFiscale='MSSFRR76R25A271G'; 
-- 14. Consultazione dati cliente (circa 5 volte al giorno). 
SELECT * 
FROM Cliente 
WHERE nome='Lorenzo' 
	AND cognome= 'Greco' 
	AND telCliente='3866460846' ;

-- 15. Consultazione settori di appartenenza di un prodotto (circa 10 volte al giorno). 
-- Libro - Visualizza settore di appartenenza del prodotto con codice a barre ‘123456789’.
SELECT titolo,settoreNegozio 
FROM prodotto,libro  
WHERE codiceaBarre=codLibro 
	and codiceaBarre= '123456789'; 
    
-- Cartoleria - Visualizza settore di appartenenza del prodotto con codice a barre ‘258469713’.
SELECT marca, settoreNegozio 
FROM prodotto,cartoleria 
WHERE codiceaBarre=codCartoleria 
	and codiceaBarre= '258469713'; 
    
-- CD Visualizza settore di appartenenza del prodotto con codice a barre ‘681068008’.
SELECT nome, settoreNegozio 
FROM prodotto,cd  
WHERE codiceaBarre=codCD 
	and codiceaBarre= '681068008'; 
    
-- DVD -  Visualizza settore di appartenenza del prodotto con codice a barre ‘345871588’.
Select titolo, settoreNegozio 
FROM prodotto,dvd  
WHERE codiceaBarre=codDVD 
	and codiceaBarre= '345871588';

-- 16. Consultazione disponibilità prodotto (5 volte al giorno).
-- Consultazione disponibilità del prodotto con codice a barre '254112478'
SELECT codiceaBarre, disponibilità
FROM prodotto
WHERE codiceaBarre = '254112478';

-- 17. Consultazione dati fornitore (circa 2 volte alla settimana).
-- Consultazione dei dati del fornitore con partita IVA '02020150377'
SELECT * 
FROM fornitore
WHERE partitaIVA = '02020150377';

-- 18. Consultazione dati relativi all'ordine (circa 2 volte alla settimana).
-- Consultazione dei dati relativi all'ordine con codice '420154'
SELECT *
FROM ordine
WHERE codice = '420154';

-- 19. Consultazione dati prodotto (circa una voota al giorno).
-- Libro - Consultazione dati prodotto con codice a barre '354125446'.
SELECT prodotto.*, titolo, nomeAutore, cognomeAutore, edizione, anno, genereLibro
FROM prodotto
INNER JOIN libro ON codiceaBarre = codLibro
WHere codLibro = '354125446';

-- Cartoleria - Consultazione dati prodotto con codice a barre '541778104'.
SELECT prodotto.*, marca, dimensione, colore, tipologia
FROM prodotto
INNER JOIN cartoleria ON codiceaBarre = codCartoleria
WHere codCartoleria = '541778104';

-- CD - Consultazione dati prodotto con codice a barre '681068008'.
SELECT prodotto.*, nome, artista, etichetta, genere, anno
FROM prodotto
INNER JOIN cd ON codiceaBarre = codCD
WHere codCD = '681068008';

-- DVD - Consultazione dati prodotto con codice a barre '345871588'.
SELECT prodotto.*, titolo, regista, anno, genere, distributore
FROM prodotto
INNER JOIN dvd ON codiceaBarre = codDVD
WHere codDVD = '345871588';

-- ***********************************************************
-- VISUALIZZAZIONE
-- ***********************************************************

-- 20. Visualizzazione saldo sconti carta cliente (circa 5 volte al giorno). 
-- Visualizza il saldo sconti del cliente con codice carta '24869'
SELECT cliente.*,codiceCarta, saldoSconti 
FROM cliente 
INNER JOIN possesso ON nomeP=nome 
	AND cognomeP=cognome  
    AND telPossesso=telCliente
INNER JOIN cartaCliente  ON codCarta=codiceCarta 
WHERE codiceCarta= '24869';

-- 21. Visualizzazione orario di lavoro (circa una volta al giorno).
-- Visuallizo l'orario svolto dei dipendenti in ordine crescente
SELECT codiceFiscale, nome, cognome, dataSvolgimento,fasciaIniziale, fasciaIntermedia, fasciaFinale
FROM dipendente
INNER JOIN svolgimento ON codSvol = codiceFiscale
INNER JOIN orario ON codFisc = codiceFiscale 
	AND fasciaIniziale = svolgimentoIniziale 
	AND fasciaIntermedia = svolgimentoIntermedio
    AND fasciaFinale = svolgimentoFinale
order by dataSvolgimento ASC;

-- Visualizzo l'orario svolto di un dipendente con codice fiscale 'TRCLCU80A58A271Y' inn ordione crescente
SELECT codiceFiscale, nome, cognome, dataSvolgimento,fasciaIniziale, fasciaIntermedia, fasciaFinale
FROM dipendente
INNER JOIN svolgimento ON codSvol = codiceFiscale
INNER JOIN orario ON codFisc = codiceFiscale 
	AND fasciaIniziale = svolgimentoIniziale 
	AND fasciaIntermedia = svolgimentoIntermedio
    AND fasciaFinale = svolgimentoFinale
WHERE codiceFiscale = 'TRCLCU80A58A271Y'
ORDER BY dataSvolgimento ASC;

-- 22. Visualizzazione orario di un dipendente in un dato periodo (circa una volta al mese). 
-- Visualizzo l'orario svolto di un dipendente con codice fiscale 'TRCLCU80A58A271Y' dal 2024-02-04  al 2024-02-06
SELECT codiceFiscale, nome, cognome, dataSvolgimento,fasciaIniziale, fasciaIntermedia, fasciaFinale
FROM dipendente
INNER JOIN svolgimento ON codSvol = codiceFiscale
INNER JOIN orario ON codFisc = codiceFiscale 
	AND fasciaIniziale = svolgimentoIniziale 
	AND fasciaIntermedia = svolgimentoIntermedio
    AND fasciaFinale = svolgimentoFinale
WHERE codiceFiscale = 'TRCLCU80A58A271Y' AND dataSvolgimento BETWEEN '2024-02-04' AND '2024-02-06'
ORDER BY dataSvolgimento ASC;

-- ***********************************************************
-- STATISTICA
-- ***********************************************************

-- 23. Statistica libro più venduto in loco (circa una volta al mese).
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       titolo, nomeAutore, cognomeAutore, genereLibro, edizione, anno
FROM vendita, prodotto, libro
WHERE codVen=codiceaBarre AND codLibro = codiceaBarre
GROUP BY codiceaBarre, titolo
ORDER BY numero_vendite DESC
LIMIT 1;

-- Statistica  libro più vendutoin loco, nel caso ci fossero più libri con lo stesso numero di vendite
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       titolo, nomeAutore, cognomeAutore, genereLibro, edizione, anno
FROM vendita
INNER JOIN prodotto ON codVen = codiceaBarre
INNER JOIN libro ON codLibro = codVen
GROUP BY codLibro, titolo, nomeAutore
HAVING numero_vendite = (
    -- Questa sottoquery trova qual è il punteggio massimo in assoluto (es. 8)
    SELECT SUM(quantità) 
    FROM vendita 
	INNER JOIN libro ON codLibro = codVen
    GROUP BY codVen 
    ORDER BY SUM(quantità) DESC 
    LIMIT 1
);

-- 24. Statistica CD più venduto in loco (circa una volta al mese).
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
	   nome, artista, etichetta, genere, anno
FROM vendita, prodotto, cd
WHERE codVen=codiceaBarre AND codCD = codiceaBarre
GROUP BY codiceaBarre, nome
ORDER BY numero_vendite DESC
LIMIT 1;

-- Statistica  cd più venduto in loco, nel caso ci fossero più cd con lo stesso numero di vendite
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       nome, artista, etichetta, genere, anno
FROM vendita
INNER JOIN prodotto ON codVen = codiceaBarre
INNER JOIN cd ON codCD = codVen
GROUP BY codiceaBarre, nome, artista
HAVING numero_vendite = (
    -- Questa sottoquery trova qual è il punteggio massimo in assoluto (es. 8)
    SELECT SUM(quantità) 
    FROM vendita 
    INNER JOIN cd ON codCD = codVen
    GROUP BY codVen 
    ORDER BY SUM(quantità) DESC 
    LIMIT 1
);

-- 25. Statistica DVD più venduto in loco (circa una volta al mese)
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
	   titolo, regista, anno, genere, distributore
FROM vendita, prodotto, dvd
wHERE codVen=codiceaBarre AND codDVD = codiceaBarre
GROUP BY codiceaBarre, titolo, regista
ORDER BY numero_vendite DESC
LIMIT 1;

-- Statistica  dvd più venduto in loco, nel caso ci fossero più dvd con lo stesso numero di vendite
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       titolo, regista, anno, genere, distributore
FROM vendita
INNER JOIN prodotto ON codVen = codiceaBarre
INNER JOIN dvd ON codDVD = codVen
GROUP BY codiceaBarre, titolo, regista
HAVING numero_vendite = (
    -- Questa sottoquery trova qual è il punteggio massimo in assoluto (es. 8)
    SELECT SUM(quantità) 
    FROM vendita 
    INNER JOIN dvd ON codDVD = codVen
    GROUP BY codVen 
    ORDER BY SUM(quantità) DESC 
    LIMIT 1
);

-- 26. Statistica articolo di cartoleria più venduto in loco (circa una volta al mese).
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       marca, dimensione, colore, tipologia
FROM vendita, prodotto, cartoleria
WHERE codVen=codiceaBarre AND codCartoleria = codiceaBarre
GROUP BY codiceaBarre, marca, dimensione
ORDER BY numero_vendite DESC
LIMIT 1;

-- Statistica articolo di cartoleria più venduto in loco, nel caso ci fossero più articoli di cartoleria con lo stesso numero di vendite
SELECT codiceaBarre, 
       SUM(quantità) AS numero_vendite, 
       marca, dimensione, colore, tipologia
FROM vendita
INNER JOIN prodotto ON codVen = codiceaBarre
INNER JOIN cartoleria ON codCartoleria = codVen
GROUP BY codiceaBarre, marca, dimensione
HAVING numero_vendite = (
    -- Questa sottoquery trova qual è il punteggio massimo in assoluto (es. 8)
    SELECT SUM(quantità) 
    FROM vendita 
    INNER JOIN cartoleria ON codCartoleria = codVen
    GROUP BY codVen 
    ORDER BY SUM(quantità) DESC 
    LIMIT 1
);

-- 27. Statistica cliente  in possesso di carta (circa una volta al mese).
SELECT dataAttivazione, codCarta, cliente.*
FROM cliente, possesso
WHERE nome = nomeP AND cognome = cognomeP AND telCliente = telPossesso
GROUP BY nome, cognome, telCliente
ORDER BY dataAttivazione DESC;

-- 28. Statistica cliente che richiedono la carta (circa una volta al mese).
SELECT dataRichiesta, cartaRic, cliente.*
FROM cliente, richiesta
WHERE nome = nomeRic AND cognome = cognomeRic AND telCliente = telRichiesta
GROUP BY nome, cognome, telCliente
ORDER BY dataRichiesta DESC;

-- 29. Statistica evento più frequentato (circa una volta l'anno)
SELECT Titolo, dataEvento, durata, nParticipanti AS Numero_Participanti
FROM evento
ORDER BY nParticipanti DESC
LIMIT 1;

-- Statistica evento più frequentato, in un certo periodo
SELECT Titolo, dataEvento, durata, nParticipanti AS Numero_Participanti
FROM evento
WHERE dataEvento BETWEEN '2024-01-01' AND '2024-04-01'
	AND nParticipanti = (
			-- Questa sottoquery trova il numero massimo di participanti in quel periodo
            SELECT MAX(nParticipanti)
            FROM evento
            WHERE dataEvento BETWEEN '2024-01-01' AND '2024-04-01'
	);