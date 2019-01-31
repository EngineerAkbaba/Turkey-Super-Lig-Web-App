USE SuperLig
--Create The Table of "TAKIM"
CREATE TABLE TAKIM
(
	TakimNo int NOT NULL,
	TakimAdi nvarchar(50) NOT NULL,
	KurulusTarihi date NULL,
	TakimRengi nvarchar(20) NULL,
	SampiyonlukSayisi int NULL,
	UNIQUE (TakimNo),
	UNIQUE (TakimAdi),
	PRIMARY KEY (TakimNo)
);

--Create The Table of "TEKNIK_DIREKTOR"
CREATE TABLE TEKNIK_DIREKTOR
(
	DirektorNo int NOT NULL,
	Adi nvarchar(50) NULL,
	Soyadi nvarchar(50) NULL,
	DogumYeri nvarchar(50) NULL,
	DogumTarihi date NULL,
	DirektorTakimNo int NOT NULL,
	SozlesmeBaslangicTarihi date NULL,
	SozlesmeBitisTarihi date NULL,
	UNIQUE (DireKtorNo),
	PRIMARY KEY (DireKtorNo)
);

--Create The Table of "FUTBOLCU"
CREATE TABLE FUTBOLCU
(
	LisansNo int NOT NULL,
	Adi nvarchar(50) NULL,
	Soyadi nvarchar(50) NULL,
	DogumYeri nvarchar(50) NULL,
	DogumTarihi date NULL,
	FutbolcuTakimNo int NOT NULL,
	SozlesmeBaslangicTarihi date NULL,
	SozlesmeBitisTarihi date NULL,
	UNIQUE (LisansNO),
	PRIMARY KEY (LisansNO)
);

--Create The Table of "HAKEM"
CREATE TABLE HAKEM
(
	LisansNo int NOT NULL,
	LisansAdi nvarchar(50) NULL,
	Adi nvarchar(50) NULL,
	Soyadi nvarchar(50) NULL,
	DogumTarihi date NULL,
	Bolge nvarchar(50) NULL,
	UNIQUE (LisansNo), 
	PRIMARY KEY (LisansNo)
);

--Create The Table of "PUAN_DURUMU"
CREATE TABLE PUAN_DURUMU
(
	PuanTakimNo int NOT NULL,
	O int NULL,
	G int NULL,
	B int NULL,
	M int NULL,
	A int NULL,
	Y int NULL,
	Av int NULL,
	Puani int NULL,
	UNIQUE (PuanTakimNo)
);

--Crete The Table of "STADYUM"
CREATE TABLE STADYUM
(
	StadyumNo int NOT NULL,
	Adi nvarchar(50) NOT NULL,
	SeyirciKapasitesi int NULL,
	BulunduguSehir nvarchar(50) NULL,
	StadyumTakimNo int NOT NULL,
	UNIQUE (StadyumNo),
	UNIQUE (StadyumAdi),
	PRIMARY KEY (StadyumNo)
);

--Create The Table of "GOL_KRALLIGI"
CREATE TABLE GOL_KRALLIGI
(
	KralFutbolcuLisansNO int NOT NULL,
	KralTakimNo int NOT NULL,
	KralUlkesi nvarchar(50) NULL,
	GolSayisi int NOT NULL
	UNIQUE (KralFutbolcuLisansNO),
);

--Create The Table of "MAC"
CREATE TABLE MAC
(
	MacNo int NOT NULL,
	EvSahibiTakimNo int NOT NULL,
	EvSahibiTakimSkor int NULL,
	KonukTakimNo int NOT NULL,
	KonukTakimSkor int NULL,
	MacHakemLisansNo int NOT NULL,
	MacStadyumNo int NOT NULL,
	Hafta nvarchar(10) NULL,
	UNIQUE (MacNo),
	PRIMARY KEY (MacNo)
);

--Create The Table of "LIGLER"
CREATE TABLE LIGLER
(
	LigNo int NOT NULL,
	LigAdi nvarchar(50) NULL,
	UNIQUE (LigNo),
	UNIQUE (LigAdi),
	PRIMARY KEY (LigNo)
);

--Create The Table of "USER"
use SuperLig
CREATE TABLE USER_ADMIN
(
	UserID int NOT NULL,
	UserName nvarchar(50) NULL,
	UserSurname nvarchar(50) NULL,
	Mail nvarchar(50) NULL,
	UserPassword nvarchar(50) NULL,
	IsAdmin bit NULL
	UNIQUE (UserID),
	PRIMARY KEY (UserID)
);

--Set Foreign Keys Between Tables
--TAKIM-->STADYUM
ALTER TABLE STADYUM ADD FOREIGN KEY (StadyumTakimNo) REFERENCES TAKIM(TakimNo)

--TAKIM-->GOL_KRALLIGI
ALTER TABLE GOL_KRALLIGI ADD FOREIGN KEY (KralTakimNo) REFERENCES TAKIM(TakimNo)

--TAKIM-->MAC
ALTER TABLE MAC ADD FOREIGN KEY (EvSahibiTakimNo) REFERENCES TAKIM(TakimNo)
ALTER TABLE MAC ADD FOREIGN KEY (KonukTakimNo) REFERENCES TAKIM(TakimNo)

--TAKIM-->PUAN_DURUMU
ALTER TABLE PUAN_DURUMU ADD FOREIGN KEY (PuanTakimNo) REFERENCES TAKIM(TakimNo)

--TAKIM-->TEKNIK_DIREKTOR
ALTER TABLE TEKNIK_DIREKTOR ADD FOREIGN KEY (DirektorTakimNo) REFERENCES TAKIM(TakimNo)

--TAKIM-->FUTBOLCU
ALTER TABLE FUTBOLCU ADD FOREIGN KEY (FutbolcuTakimNo) REFERENCES TAKIM(TakimNo)

--FUTBOLCU-->GOL_KRALLIGI
ALTER TABLE GOL_KRALLIGI ADD FOREIGN KEY (KralFutbolcuLisansNO) REFERENCES FUTBOLCU(LisansNo)

--HAKEM-->MAC
ALTER TABLE MAC ADD FOREIGN KEY (MacHakemLisansNO) REFERENCES HAKEM(LisansNo)

--STADYUM-->MAC
ALTER TABLE MAC ADD FOREIGN KEY (MacStadyumNO) REFERENCES STADYUM(StadyumNo)

--Fil the Table of "TAKIM"
INSERT INTO TAKIM VALUES('Akhisar Belediye ve Gençlik', '1970-01-01', 'Yeþil-Siyah',  0)
INSERT INTO TAKIM VALUES('Balýkesirspor', '1970-04-08', 'Kýrmýzý-Beyaz', 0)
INSERT INTO TAKIM VALUES('Beþiktaþ A.Þ.', '1903-03-19', 'Siyah-Beyaz', 13)
INSERT INTO TAKIM VALUES('Bursaspor', '1963-06-01', 'Yeþil-Beyaz', 1)
INSERT INTO TAKIM VALUES('Çaykur Rizespor A.Þ.', '1953-05-19', 'Mavi-Yeþil', 0)
INSERT INTO TAKIM VALUES('Eskiþehirspor', '1965-06-19', 'Kýrmýzý-Siyah', 0)
INSERT INTO TAKIM VALUES('Fenerbahçe Spor Kulübü', '1907-05-03', 'Sarý-Lacivet', 19)
INSERT INTO TAKIM VALUES('Galatasaray A.Þ.', '1905-10-01', 'Sarý-Kýrmýzý', 19)
INSERT INTO TAKIM VALUES('Gaziantepspor', '1969-02-25', 'Kýrmýzý-Siyah', 0)
INSERT INTO TAKIM VALUES('Gençlerbirliði', '1923-03-14', 'Kýrmýzý-Siyah', 0)
INSERT INTO TAKIM VALUES('Ýstanbul Baþakþehir Futbol Kulübü', '1990-06-05', 'Turuncu-Mavi', 0)
INSERT INTO TAKIM VALUES('Kardemir Karabükspor', '1969-01-01', 'Kýrmýzý-Mavi', 0)
INSERT INTO TAKIM VALUES('Kasýmpaþa Spor Kulübü', '1921-01-01', 'Lacivert-Beyaz', 0)
INSERT INTO TAKIM VALUES('Mersin Ýdmanyurdu Spor Kulübü', '1925-08-06', 'Kýrmýzý-Lacivert', 0)
INSERT INTO TAKIM VALUES('Sivasspor Kulübü', '1967-05-09', 'Kýrmýzý-Beyaz', 0)
INSERT INTO TAKIM VALUES('Suat Altýn Ýnþaat Kayseri Erciyesspor', '1932-01-01', 'Mavi-Siyah', 0)
INSERT INTO TAKIM VALUES('Torku Konyaspor Kulübü', '1981-01-01', 'Yeþil-Beyaz', 0)
INSERT INTO TAKIM VALUES('Trabzonspor Kulübü', '1967-08-02', 'Bordo-Mavi', 6)

--Fill The Table of "HAKEM"
INSERT INTO HAKEM VALUES(15346, 'Üst Klasman Yardýmcý Hakemi', 'Gökhan', 'Güneþer', '1975-06-15', 'Adana')
INSERT INTO HAKEM VALUES(12013, 'FIFA Hakemi', 'Bülent', 'Yýldýrým', '1972-03-01', 'Ankara')
INSERT INTO HAKEM VALUES(8899, 'FIFA Hakemi', 'Bünyamin', 'Gezer', '1972-12-09', 'Kahramanmaraþ')
INSERT INTO HAKEM VALUES(13248, 'Üst Klasman Hakemi', 'Özgüç', 'Türkalp', '1974-02-15', 'Ankara')
INSERT INTO HAKEM VALUES(13246, 'Üst Klasman Hakemi', 'Mustafa Ýlker', 'Coþkun', '1979-02-25', 'Ankara')
INSERT INTO HAKEM VALUES(11118, 'FIFA Hakemi', 'Kuddusi', 'Müftüoðlu', '1970-03-04', 'Antalya')
INSERT INTO HAKEM VALUES(11115, 'Üst Klasman Hakemi', 'Mustafa Kamil', 'Abitoðlu', '1970-06-15', 'Antalya')
INSERT INTO HAKEM VALUES(14630, 'Üst Klasman Hakemi', 'Mustafa', 'Öðretmenoðlu', '1978-04-24', 'Antalya')
INSERT INTO HAKEM VALUES(10855, 'Ulusal Hakem', 'Erbay', 'Aldemir', '1976-04-08', 'Aydýn')
INSERT INTO HAKEM VALUES(10892, 'Üst Klasman Hakemi', 'Aytekin', 'Durmaz', '1970-08-29', 'Balýkesir')
INSERT INTO HAKEM VALUES(13141, 'Üst Klasman Hakemi', 'Ýlker', 'Meral', '1971-11-12', 'Balýkesir')
INSERT INTO HAKEM VALUES(9952, 'FIFA Yardýmcý Hakemi', 'Fethi Serkan', 'Koçak', '1973-08-23', 'Çankýrý')
INSERT INTO HAKEM VALUES(17205, 'Klasman Hakemi', 'Taner', 'Gizlenci', '1967-12-23', 'Denizli')
INSERT INTO HAKEM VALUES(17068, 'FIFA Hakemi', 'Özgür', 'Yankaya', '1978-01-02', 'Edirne')
INSERT INTO HAKEM VALUES(11750, 'FIFA Hakemi', 'Cüneyt', 'Çakýr', '1976-11-23', 'Ýstanbul')
INSERT INTO HAKEM VALUES(11741, 'FIFA Hakemi', 'Fýrat', 'Aydýnus', '1973-10-25', 'Ýstanbul')
INSERT INTO HAKEM VALUES(14988, 'FIFA Hakemi', 'Hüseyin', 'Göçek', '1976-11-13', 'Ýstanbul')
INSERT INTO HAKEM VALUES(12975, 'FIFA Hakemi', 'Mete', 'Kalkavan', '1979-08-11', 'Ýstanbul')
INSERT INTO HAKEM VALUES(16000, 'Üst Klasman Hakemi', 'Serkan', 'Çýnar', '1976-04-14', 'Ýstanbul')
INSERT INTO HAKEM VALUES(11701, 'Üst Klasman Hakemi', 'Süleyman', 'Abay', '1973-05-13', 'Ýstanbul')
INSERT INTO HAKEM VALUES(11808, 'Üst Klasman Hakemi', 'Hakan', 'Ceylan', '1979-03-11', 'Ýzmir')
INSERT INTO HAKEM VALUES(15546, 'Ýl Hakemi', 'Hakan', 'Özkan', '1970-08-11', 'Bursa')
INSERT INTO HAKEM VALUES(16232, 'Üst Klasman Hakemi', 'Hüseyin', 'Sabancý', '1980-12-30', 'Ýzmir')
INSERT INTO HAKEM VALUES(13387, 'Üst Klasman Hakemi', 'Tolga', 'Özkalfa', '1972-02-22', 'Ýzmir')
INSERT INTO HAKEM VALUES(14030, 'Üst Klasman Hakemi', 'Deniz', 'Çoban', '1977-04-14', 'Konya')
INSERT INTO HAKEM VALUES(14845, 'Üst Klasman Hakemi', 'Suat', 'Arslanboða', '1978-06-04', 'Eskiþehir')
INSERT INTO HAKEM VALUES(10626, 'Üst Klasman Hakemi', 'Zafer', 'Demir', '1973-12-18', 'Malatya')
INSERT INTO HAKEM VALUES(14023, 'Üst Klasman Hakemi', 'Çaðatay', 'Þahan', '1979-04-13', 'Manisa')
INSERT INTO HAKEM VALUES(12805, 'Üst Klasman Hakemi', 'Koray', 'Gençerler', '1978-04-30', 'Manisa')
INSERT INTO HAKEM VALUES(10596, 'Üst Klasman Hakemi', 'Yunus', 'Yýldýrým', '1970-02-23', 'Manisa')

--Fill The Table of "TEKNIK_DIREKTOR"
INSERT INTO TEKNIK_DIREKTOR VALUES ('Mustafa Reþit', 'Akçay', 'Trabzon', '1958-12-12', 1, '2014-07-11', '2016-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Ýsmail', 'Ertekin', 'Bursa', '1959-01-01', 2, '2014-07-14', '2014-11-25')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Slaven', 'Bilic', 'Split/Hýrvatistan', '1968-09-11', 3, '2013-03-28', '2016-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Þenol', 'Güneþ', 'Trabzon', '1952-06-01', 4, '2014-06-10', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Mehmet', 'Özdilek', 'Samsun', '1966-04-11', 5, '2014-06-25', '2014-12-08')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Ertuðrul', 'Saðlam', 'Zonguldak', '1969-11-19', 6, '2013-07-03', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Ýsmail', 'Kartal', 'Ýstanbul', '1961-06-15', 7, '2014-08-18', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Hamza', 'Hamzaoðlu', 'Gümülcine', '1970-07-01', 8, '2014-12-01', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Okan', 'Buruk', 'Ýstanbul', '1973-10-19', 9, '2014-08-01', '2017-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Ýrfan', 'Buz', 'Ýstanbul', '1967-04-15', 10, '2014-09-24', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Abdullah Mucib', 'Avcý', 'Ýstanbul', '1963-07-31', 11, '2014-08-18', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Hakký Tolunay', 'Kafkas', 'Ankara', '1968-03-31', 12, '2013-07-08', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Þota', 'Arveladze', 'Tiflis/Gürcistan', '1973-02-22', 13, '2012-10-07', '2017-06-30')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Rýza', 'Çalýmbay', 'Sivas', '1963-02-02', 14, '2014-06-03', '2015-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Roberto', 'Carlos', 'Sao Paulo/Brezilya', '1973-04-14', 15, '2013-06-03', '2015-06-30')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Bülent', 'Korkmaz', 'Malatya', '1968-11-24', 16, '2014-07-30', '2014-11-25')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Aykut', 'Kocaman', 'Sakarya', '1965-04-05', 17, '2014-10-28', '2016-05-31')
INSERT INTO TEKNIK_DIREKTOR VALUES ('Kazým Ersun', 'Yanal', 'Ýzmir', '1961-12-17', 18, '2014-11-12', '2016-05-31')

--Fill the Table of "FUTBOLCU"
--Initially Three Futbollers for "Akhisar Belediye ve Gençlik"
INSERT INTO FUTBOLCU VALUES (15469, 'Theofanis', 'Gekas', 'Larisa/Yunanistan', '1980-05-23', 1, '2014-08-24', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (1856152, 'Yufus', 'Çataloluk', 'Manisa', '1995-03-26', 1, '2014-08-27', '2019-05-31')
INSERT INTO FUTBOLCU VALUES (14950, 'Ahmet', 'Cebe', 'Krefeld', '1983-03-02', 1, '2014-06-01', '2015-05-31')

--Initially Three Futbollers for "Balýkesirspor"
INSERT INTO FUTBOLCU VALUES (15045, 'Yufus', 'Abdulhamit', 'Yýldýz', '1987-06-07', 2, '2014-07-11', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (14857, 'Ante', 'Klusic', 'Sibenit', '1986-06-06', 2, '2014-07-31', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (1609981, 'Ýlhan', 'Depe', 'Bursa', '1992-09-10', 2, '2013-06-27', '2015-05-31')

--Initially Three Futbollers for "Beþiktaþ A.Þ."
INSERT INTO FUTBOLCU VALUES (15975, 'Demba', 'Ba', 'Sevres', '1985-05-25', 3, '2014-07-18', '2018-05-31')
INSERT INTO FUTBOLCU VALUES (19082, 'Jose Ernesto', 'Sosa', 'Santa Fe Arg', '1985-06-19', 3, '2014-09-01', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (312317, 'Tolga', 'Zengin', 'Artvin', '1983-10-10', 3, '2013-08-01', '2017-05-31')

--Initially Five Futbollers for "Bursaspor"
INSERT INTO FUTBOLCU VALUES (15583, 'Fernando Daniel', 'Belluschi', 'Firmat/Arjantin', '1983-06-10', 4, '2012-08-31', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (15161, 'Samuel Tobias', 'Holmen', 'P. Grude', '1984-06-29', 4, '2013-08-31', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (542679, 'Volkan', 'Þen', 'Bursa', '1987-07-07', 4, '2014-01-07', '2018-05-31')
INSERT INTO FUTBOLCU VALUES (15889, 'jose Fernando Viana', 'De Santana', 'Rio De Janeiro', '1987-03-27', 4, '2014-01-07', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (16080, 'Cedric', 'Bakambu', 'Ivry-Sur-Seine', '1991-04-11', 4, '2014-09-01', '2018-05-31')

--Initially Three Futbollers for "Çaykur Rizespor A.Þ."
INSERT INTO FUTBOLCU VALUES (15796, 'Ali Adnan Kadhim', 'Al Tameemi', 'Irak', '1993-12-19', 5, '2013-08-02', '2014-05-31')
INSERT INTO FUTBOLCU VALUES (15929, 'Ümit', 'Koramaz', 'Avusturya', '1985-09-17', 5, '2014-01-14', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (1708239, 'Hasan', 'Köse', 'Rize', '1993-08-16', 5, '2011-09-05', '2016-05-31')

--Initially Three Futbollers for "Eskiþehirspor"
INSERT INTO FUTBOLCU VALUES (16054, 'Eyüp', 'Koçoðlu', 'Brüh/Almanya', '1995-01-14', 6, '2014-08-27', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (15175, 'Diego Angelo', 'De Olivera', 'Anapolis/Brazilya', '1986-02-17', 6, '2013-07-11', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (1641866, 'Fatih', 'Ceylan', 'Keyseri', '1995-04-24', 6, '2014-06-01', '2016-05-31')

--Initially Four Futbollers for "Fenerbahçe Spor Kulübü"
INSERT INTO FUTBOLCU VALUES (165943, 'Alper', 'Potuk', 'Bolvadin', '1991-04-08', 7, '2013-06-20', '2014-07-24')
INSERT INTO FUTBOLCU VALUES (15520, 'Dirk', 'Kuijt', 'Leidon/Hollanda', '1980-07-22', 7, '2012-06-21', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (14961, 'Emmanuel Chineny', 'Emenike', 'Otuocha', '1987-05-10', 7, '2013-08-12', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (15483, 'Moussa', 'Sow', 'Mantes La Jolie', '1986-01-19', 7, '2012-01-27', '2016-05-31')

--Initially Three Futbollers for "Galatasaray A.Þ."
INSERT INTO FUTBOLCU VALUES (15683, 'Wesley', 'Sneijder', 'Utrecht/Hollanda', '1984-06-09', 8, '2013-01-22', '2016-07-24')
INSERT INTO FUTBOLCU VALUES (162011, 'Burak', 'Yýlmaz', 'Antalya', '1985-07-25', 8, '2012-07-19', '2019-05-31')
INSERT INTO FUTBOLCU VALUES (15406, 'Felipe Melo', 'De Cravalho', 'Volta Redonda/Breailya', '1983-06-26', 8, '2013-08-07', '2016-05-31')

--Initially Three Futbollers for "Gaziantepspor"
INSERT INTO FUTBOLCU VALUES (784449, 'Abdulkadir', 'Kayalý', 'Ankara', '1991-01-30', 9, '2014-08-14', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (1454961, 'Mehmet', 'Çolak', 'Oðuzeli', '1995-10-22', 9, '2013-04-24', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (16056, 'Gbenga', 'Arokoyo', 'Abuja', '1992-11-01', 9, '2014-07-27', '2018-05-31')
INSERT INTO FUTBOLCU VALUES (782848, 'Muhammet', 'Demir', 'Araklý', '1992-01-10', 9, '2011-02-01', '2017-05-31')

--Initially Three Futbollers for "Gençlerbirliði"
INSERT INTO FUTBOLCU VALUES (15375, 'Gosso Jean Jacques', 'Gosso', 'Grand/Bereby', '1983-03-15', 10, '2014-08-27', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (313256, 'Sedat', 'Bayrak', 'Yomra', '1981-04-10', 10, '2013-07-12', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (791137, 'Ahmet', 'Oðuz', 'Sorgun', '1993-01-16', 10, '2014-08-26', '2019-05-31')

--Initially Three Futbollers for "Ýstanbul Baþakþehir Futbol Kulübü"
INSERT INTO FUTBOLCU VALUES (16039, 'Alexandru', 'Epureanu', 'Moldova', '1986-09-27', 11, '2014-07-11', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (14650, 'Alparslan', 'Erdem', 'Vechta', '1988-12-11', 11, '2013-08-06', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (376667, 'Semih', 'Þentürk', 'Ýzmir', '1983-04-29', 11, '2014-07-16', '2015-05-31')

--Initially Four Futbollers for "Kardemir Karabükspor"
INSERT INTO FUTBOLCU VALUES (639408, 'Erdem', 'Özgenç', 'Hendek', '1984-08-22', 12, '2014-06-01', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (15853, 'Joseph Eneojo', 'Akpala', 'Jos', '1986-08-24', 12, '2014-08-11', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (896541, 'Murat', 'Akça', 'Almanya', '1990-07-13', 12, '2014-01-07', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (15713, 'Abdou Razack', 'Traore', 'Frambo Sp Tiapoum', '1988-12-28', 12, '2014-06-17', '2017-05-31')

--Initially Four Futbollers for "Kasýmpaþa Spor Kulübü"
INSERT INTO FUTBOLCU VALUES (15806, 'Andre De Castro', 'Peraira', 'Rio Tinto Gondomar', '1988-04-02', 13, '2014-06-10', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (15510, 'Jan Andreas', 'Isaksson', 'M. Ö. Torp', '1981-10-03', 13, '2012-07-05', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (956614, 'Metin', 'Sevinç', 'Ýstanbul', '1994-06-14', 13, '2013-09-04', '2018-05-31')
INSERT INTO FUTBOLCU VALUES (347253, 'Adem', 'Büyük', 'Artvin', '1987-08-30', 13, '2014-06-01', '2018-05-31')

--Initially Three Futbollers for "Mersin Ýdmanyurdu Spor Kulübü"
INSERT INTO FUTBOLCU VALUES (15988, 'Abdul Rahman', 'Khalili', 'Raus', '1992-07-16', 14, '2014-06-30', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (14131, 'Melih', 'Gökçek', 'Rio De Janeiro', '1981-07-20', 14, '2014-07-23', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (861286, 'Oktay', 'Delibalta', 'Samsun', '1985-10-27', 14, '2014-07-14', '2015-05-31')

--Initially Three Futbollers for "Sivasspor Kulübü"
INSERT INTO FUTBOLCU VALUES (15546, 'Aatýf', 'Chahechouhe', 'Fontenay-Aux/Roses', '1986-07-02', 15, '2012-08-07', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (15784, 'Chukwudi John', 'Utaka', 'Enugu', '1982-01-08', 15, '2013-08-07', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (1223823, 'Muhammed Burak', 'Yýldýz', 'Sivas', '1996-01-02', 15, '2014-04-29', '2017-05-31')

--Initially Three Futbollers for "Suat Altýn Ýnþaat Kayseri Erciyesspor"
INSERT INTO FUTBOLCU VALUES (881113, 'Anýl', 'Karaer', 'Ýstanbul', '1988-07-04', 16, '2014-08-22', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (15959, 'Arnaldo Edi Lopes', 'De Silva', 'Averio/Portekiz', '1982-07-07', 16, '2014-02-03', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (1206396, 'Ýlhan', 'Parlak', 'Yahyalý', '1987-01-18', 16, '2014-06-26', '2017-05-31')

--Initially Three Futbollers for "Torku Konyaspor Kulübü"
INSERT INTO FUTBOLCU VALUES (14544, 'Ali', 'Çamdalý', 'Duisburg/Almanya', '1984-02-22', 17, '2014-06-10', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (15932, 'Jagas', 'Vukovic', 'Vrbas/Sýrbistan Cumhuriyeti', '1988-06-10', 17, '2014-01-07', '2016-05-31')
INSERT INTO FUTBOLCU VALUES (881418, 'Özgür', 'Özkaya', 'Ýstanbul', '1988-02-08', 17, '2014-07-02', '2014-08-26')

--Initially Three Futbollers for "Trabzonspor Kulübü"
INSERT INTO FUTBOLCU VALUES (16094, 'Avraam', 'Papadapoulos', 'Kerangk', '1984-03-12', 18, '2014-09-01', '2015-05-31')
INSERT INTO FUTBOLCU VALUES (15991, 'Oscar Rene Cardozo', 'Marin', 'Yhu', '1983-05-20', 18, '2014-08-06', '2017-05-31')
INSERT INTO FUTBOLCU VALUES (8000144, 'Aykut', 'Demir', 'Hollanda', '1988-10-22', 18, '2013-01-10', '2018-08-26')

--Fill The Table of "STADYUM"
INSERT INTO STADYUM VALUES ('Manisa On Dokuz Mayýs Stadý', 16597, 'Manisa', 1)
INSERT INTO STADYUM VALUES ('Balýkesir Atatürk Stadý', 15800, 'Balýkesir', 2)
INSERT INTO STADYUM VALUES ('Atatürk Olimpiyat Stadý', 76092, 'Ýstanbul', 3)
INSERT INTO STADYUM VALUES ('Bursa Atatürk Stadý', 25661, 'Bursa', 4)
INSERT INTO STADYUM VALUES ('Yeni Rize Þehir Stadý', 15485, 'Rize', 5)
INSERT INTO STADYUM VALUES ('Eskiþehir Atatürk Stadý', 13520, 'Eskiþehir', 6)
INSERT INTO STADYUM VALUES ('Fenerbahçe Þükrü Saraçoðlu Stadý', 50509, 'Ýstanbul', 7)
INSERT INTO STADYUM VALUES ('Türk Telekom Arena Stadý', 52600, 'Ýstanbul', 8)
INSERT INTO STADYUM VALUES ('Kamil Ocak Stadý', 16981, 'Gaziantep', 9)
INSERT INTO STADYUM VALUES ('Ankara 19 Mayýs Stadý', 19209, 'Ankara', 10)
INSERT INTO STADYUM VALUES ('Baþakþehir Fatih Terim Stadý', 17300, 'Ýstanbul', 11)
INSERT INTO STADYUM VALUES ('Dr. Necmettin Þeyhoðlu Stadý', 12400, 'Karabük', 12)
INSERT INTO STADYUM VALUES ('Recep Tayyip Erdoðan Stadý', 14234, 'Ýstanbul', 13)
INSERT INTO STADYUM VALUES ('Mersin Stadý', 25497, 'Mersin', 14)
INSERT INTO STADYUM VALUES ('Sivas Dört Eylül Stadý', 14998, 'Sivas', 15)
INSERT INTO STADYUM VALUES ('Büyükþehir Belediyesi Kadir Has Stadý', 32864, 'Kayseri', 16)
INSERT INTO STADYUM VALUES ('Konya Büyükþehir Stadý', 41981, 'Konya', 17)
INSERT INTO STADYUM VALUES ('Hüseyin Avni Aker Stadý', 24169, 'Trabzon', 18)

--Fill The Table of "LIGLER"
INSERT INTO LIGLER VALUES ('Spor Toto Süper Lig')
INSERT INTO LIGLER VALUES ('PTT 1. Lig')
INSERT INTO LIGLER VALUES ('2. Lig Beyaz Grup')
INSERT INTO LIGLER VALUES ('2. Lig Kýrmýzý Grup')
INSERT INTO LIGLER VALUES ('Spor Toto 3. Lig 1. Grup')
INSERT INTO LIGLER VALUES ('Spor Toto 3. Lig 2. Grup')
INSERT INTO LIGLER VALUES ('Spor Toto 3. Lig 3. Grup')
INSERT INTO LIGLER VALUES ('U21 Ligi Super Lig')
INSERT INTO LIGLER VALUES ('U21 Ligi 1. Lig')
INSERT INTO LIGLER VALUES ('U19 Elit Ligi Süper Lig')
INSERT INTO LIGLER VALUES ('U19 Elit Ligi 1. Lig')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 1. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 2. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 3. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 4. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 5. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 6. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 7. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 8. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 9. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 10. Grup')
INSERT INTO LIGLER VALUES ('Bölgesel Amatör Lig 11. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 1. Lig')
INSERT INTO LIGLER VALUES ('Kadýnlar 2. Lig')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 1. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 2. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 3. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 4. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 5. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 6. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 7. Grup')
INSERT INTO LIGLER VALUES ('Kadýnlar 3. Lig 8. Grup')

--Fill The Table of "PUAN_DURUMU" (Bunlar Þimdilik 2014-2015 Sezonunun 13. Hafta Verileri)
INSERT INTO PUAN_DURUMU VALUES (1, 13, 4, 5, 4, 15, 16, -1, 17)
INSERT INTO PUAN_DURUMU VALUES (2, 13, 1, 2, 10, 10, 28, -18, 5)
INSERT INTO PUAN_DURUMU VALUES (3, 13, 9, 2, 2, 20, 11, +9, 29)
INSERT INTO PUAN_DURUMU VALUES (4, 13, 5, 4, 4, 12, 14, +9, 19)
INSERT INTO PUAN_DURUMU VALUES (5, 13, 2, 4, 7, 12, 22, -10, 10)
INSERT INTO PUAN_DURUMU VALUES (6, 13, 2, 6, 5, 15, 20, -5, 12)
INSERT INTO PUAN_DURUMU VALUES (7, 13, 8, 3, 2, 21, 13, +8, 27)
INSERT INTO PUAN_DURUMU VALUES (8, 13, 9, 1, 3, 20, 15, +5, 28)
INSERT INTO PUAN_DURUMU VALUES (9, 13, 4, 3, 6, 13, 18, -5, 15)
INSERT INTO PUAN_DURUMU VALUES (10, 13, 4, 5, 4, 17, 16, +1, 17)
INSERT INTO PUAN_DURUMU VALUES (11, 13, 5, 6, 2, 15, 5, +10, 21)
INSERT INTO PUAN_DURUMU VALUES (12, 13, 4, 2, 7, 18, 18, 0, 14)
INSERT INTO PUAN_DURUMU VALUES (13, 13, 5, 4, 4, 20, 21, -1, 19)
INSERT INTO PUAN_DURUMU VALUES (14, 13, 6, 3, 4, 19, 15, +4, 21)
INSERT INTO PUAN_DURUMU VALUES (15, 13, 2, 4, 7, 13, 22, -9, 10)
INSERT INTO PUAN_DURUMU VALUES (16, 13, 2, 8, 3, 17, 15, +2, 14)
INSERT INTO PUAN_DURUMU VALUES (17, 13, 4, 4, 5, 12, 15, -3, 16)
INSERT INTO PUAN_DURUMU VALUES (18, 13, 5, 6, 2, 23, 19, +4, 21)

--Fill The Table of "GOL_KRALLIGI" (Bunlar Þimdilik 2014-2015 Sezonunun 13. Hafta Verileri)
INSERT INTO GOL_KRALLIGI VALUES (15469, 1, 'Yunanistan', 11)
INSERT INTO GOL_KRALLIGI VALUES (162011, 8, 'Türkiye', 9)
INSERT INTO GOL_KRALLIGI VALUES (15975, 3, 'Fransa', 8)
INSERT INTO GOL_KRALLIGI VALUES (15991, 18, 'Yhu', 8)
INSERT INTO GOL_KRALLIGI VALUES (15889, 4, 'Brezilya', 7)
INSERT INTO GOL_KRALLIGI VALUES (376667, 11, 'Türkiye', 7)
INSERT INTO GOL_KRALLIGI VALUES (347253, 13, 'Türkiye', 6)
INSERT INTO GOL_KRALLIGI VALUES (16080, 4, 'Fransa', 6)
INSERT INTO GOL_KRALLIGI VALUES (15483, 7, 'Senegal', 6)
INSERT INTO GOL_KRALLIGI VALUES (15713, 12, 'Burkina Faso', 5)
INSERT INTO GOL_KRALLIGI VALUES (782848, 9, 'Türkiye', 5)

--Fill The Table of "USER_ADMIN"
INSERT INTO USER_ADMIN VALUES ('Erdem', 'Akbaba', 'erdem_akbaba@hotmail.com', '12', 1)
INSERT INTO USER_ADMIN VALUES ('Ömer', 'Paylal', 'ömer_paylal@hotmail.com', '23', 1)
INSERT INTO USER_ADMIN VALUES ('Hüsameddin', 'Kýllý', 'huso_killi@hotmail.com', '34', 0)
INSERT INTO USER_ADMIN VALUES ('Þaziye', 'Evdekalmýþ', 'saziye_evdekalmis@hotmail.com', '45', 0)

--Fill The Table of "MAC" (Bunlar Þimdilik 2014-2015 Sezonunun 13. Hafta Verileri)
INSERT INTO MAC VALUES (15, 1, 7, 4, 13246, 7, '13. Hafta') /*Eklendi*/


