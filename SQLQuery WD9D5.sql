CREATE TABLE PRODOTTI
(ID_PRODOTTO INT, NOME_PRODOTTO VARCHAR(100), PREZZO DECIMAL (10,2),
CONSTRAINT PK_PRODOTTI PRIMARY KEY (ID_PRODOTTO));
ALTER TABLE PRODOTTI 
ALTER COLUMN NOME_PRODOTTO CHAR(100)

CREATE TABLE ORDINI
(ID_ORDINE INT, ID_PRODOTTO INT, QUANTITA INT,
CONSTRAINT PK_ORDINI PRIMARY KEY (ID_ORDINE),
CONSTRAINT FK_ORDINI_PRODOTTI FOREIGN KEY (ID_PRODOTTO) REFERENCES PRODOTTI (ID_PRODOTTO));

CREATE TABLE CLIENTI
(ID_CLIENTE INT, NOME VARCHAR(50), EMAIL VARCHAR(100),
CONSTRAINT PK_CLIENTI PRIMARY KEY (ID_CLIENTE));

CREATE TABLE DETTAGLIO_ORDINI
(ID_ORDINE INT,ID_PRODOTTO INT,ID_CLIENTE INT, PREZZO_TOT DECIMAL (20,2));

INSERT INTO PRODOTTI (ID_PRODOTTO, NOME_PRODOTTO,PREZZO)
VALUES (1,'TABLET',300), (2,'MOUSE',20),(3,'TASTIERA',25),(4,'MONITOR',180),(5,'HHD',90), (6,'SSD',200),(7,'RAM',100)

INSERT INTO ORDINI 
VALUES (1,2,10),(2,6,2),(3,5,3),(4,1,1), (6,4,2), (7,2,1),(8,2,1)
INSERT INTO ORDINI 
VALUES(5,2,1)

INSERT INTO CLIENTI 
VALUES (1, 'ANTONIO','ANTO@MAILMAIL.COM'),(2,'BATTISTA','BATTISTA@MAILMAIL.IT'),
(3,'MARIA', 'MARIA@POSTA.IT')

INSERT INTO DETTAGLIO_ORDINI
VALUES (1,1,1,300),(2,2,2,20)

--HO RISCONTRATO PROBLEMATICHE NEL CREARE LA TABELLA DETTAGLIO ORDINI CON ANNESSE CHIAVI PRIMARIE ED ESTERNE, DATO CHE MI D� LA POSSIBILIT� DI INSERIRE DATI RIDONDANTI.



SELECT *
FROM PRODOTTI
WHERE PREZZO >50

SELECT EMAIL
FROM CLIENTI
WHERE EMAIL LIKE 'A%'

SELECT *
FROM ORDINI
WHERE QUANTITA>10 
SELECT *
FROM DETTAGLIO_ORDINI
WHERE PREZZO_TOT <100
