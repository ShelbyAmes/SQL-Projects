USE master 
GO 

DROP DATABASE IF EXISTS healthcare_db
CREATE DATABASE healthcare_db

USE healthcare_db
GO

--specialty
DROP TABLE IF EXISTS specialty;
CREATE TABLE specialty(
    SpecialtyID INT PRIMARY KEY IDENTITY(1, 1),
   SpecialtyName VARCHAR(44) NOT NULL
);
INSERT INTO specialty(SpecialtyName) VALUES
 ('Allergy and Immunology')
,('Anesthesiology')
,('Cardiology')
,('Cardiothoracic Surgery')
,('Colorectal Surgery')
,('Critical Care Medicine')
,('Dermatology')
,('Emergency Medicine')
,('Endocrinology')
,('Family Medicine')
,('Gastroenterology')
,('General Surgery')
,('Geriatrics')
,('Gynecologic Oncology')
,('Hematology')
,('Hepatology')
,('Hospital Medicine')
,('Infectious Disease')
,('Internal Medicine')
,('Interventional Radiology')
,('Medical Genetics')
,('Neonatology')
,('Nephrology')
,('Neurology')
,('Neurosurgery')
,('Nuclear Medicine')
,('Obstetrics and Gynecology (OB/GYN)')
,('Occupational Medicine')
,('Oncology')
,('Ophthalmology')
,('Orthopedic Surgery')
,('Otolaryngology (ENT - Ear, Nose, and Throat)')
,('Pain Management')
,('Palliative Care')
,('Pathology')
,('Pediatrics')
,('Pediatric Cardiology')
,('Pediatric Endocrinology')
,('Pediatric Gastroenterology')
,('Pediatric Hematology/Oncology')
,('Pediatric Neurology')
,('Physical Medicine and Rehabilitation (PM&R)')
,('Plastic Surgery')
,('Preventive Medicine')
,('Psychiatry')
,('Pulmonology')
,('Radiology')
,('Reproductive Endocrinology and Infertility')
,('Rheumatology')
,('Urology');

SELECT TOP 10 * FROM specialty;

-- location
DROP TABLE IF EXISTS location;
CREATE TABLE location(
   LocationID INT PRIMARY KEY IDENTITY(1, 1)
  ,Zipcode    INTEGER 
  ,State      VARCHAR(20) NOT NULL
);
INSERT INTO location(Zipcode,State) VALUES
 (55483,'Florida')
,(81806,'Indiana')
,(71004,'Missouri')
,(36242,'California')
,(94363,'Minnesota')
,(19135,'Colorado')
,(30583,'Texas')
,(93361,'Pennsylvania')
,(55958,'South Carolina')
,(25504,'Texas')
,(2302,'New York')
,(87778,'South Carolina')
,(9444,'California')
,(74835,'Ohio')
,(88433,'New York')
,(82649,'Pennsylvania')
,(37451,'Texas')
,(40160,'Louisiana')
,(1975,'Ohio')
,(90238,'Colorado')
,(19274,'Ohio')
,(70001,'Texas')
,(39470,'Pennsylvania')
,(6021,'California')
,(92792,'Minnesota')
,(67090,'Texas')
,(19444,'California')
,(93640,'Illinois')
,(35287,'Arkansas')
,(7132,'Texas')
,(75603,'Texas')
,(33798,'Georgia')
,(59579,'California')
,(80601,'Pennsylvania')
,(16532,'Wisconsin')
,(34487,'Missouri')
,(59444,'Ohio')
,(86667,'Minnesota')
,(84215,'North Carolina')
,(64132,'Texas')
,(22643,'California')
,(43363,'Nebraska')
,(51720,'Texas')
,(92710,'District of Columbia')
,(9323,'New York')
,(61106,'Hawaii')
,(50587,'Washington')
,(84449,'Texas')
,(25202,'District of Columbia')
,(99632,'Florida')
,(9991,'Ohio')
,(42610,'Florida')
,(79609,'Minnesota')
,(775,'Alabama')
,(19807,'Missouri')
,(69593,'Washington')
,(16126,'Arizona')
,(66078,'Pennsylvania')
,(5447,'New York')
,(16853,'Hawaii')
,(60161,'Texas')
,(29960,'Washington')
,(86136,'Texas')
,(40661,'Georgia')
,(51081,'California')
,(35422,'Alabama')
,(41724,'Michigan')
,(22598,'Iowa')
,(96939,'Washington')
,(61701,'Hawaii')
,(78950,'Missouri')
,(17554,'New York')
,(90445,'Tennessee')
,(35164,'Montana')
,(67527,'Florida')
,(12965,'Colorado')
,(94825,'California')
,(15201,'Missouri')
,(63068,'Kentucky')
,(13352,'Minnesota')
,(64021,'Arizona')
,(40375,'Washington')
,(24530,'Iowa')
,(93587,'Louisiana')
,(95148,'North Carolina')
,(69587,'Pennsylvania')
,(1540,'Hawaii')
,(83358,'Alabama')
,(57707,'Ohio')
,(54645,'California')
,(29490,'Tennessee')
,(55090,'Oklahoma')
,(76168,'Missouri')
,(68726,'Kentucky')
,(42973,'California')
,(61608,'New York')
,(70776,'New York')
,(22506,'California')
,(26241,'Pennsylvania')
,(51356,'Colorado')
,(NULL, 'Online');

SELECT TOP 10 * FROM location;

SELECT * FROM location 
WHERE State = 'Online';


--visit
DROP TABLE IF EXISTS visit;
CREATE TABLE visit(
   VistID        INT PRIMARY KEY IDENTITY(1, 1)
  ,checkin_date  DATE  NOT NULL
  ,checkout_date DATE  NOT NULL
  ,Bill_id       INTEGER  NOT NULL
  ,InsuranceID   INTEGER  NOT NULL
  ,PatientID     INTEGER  NOT NULL
  ,DoctorID      INTEGER  NOT NULL
);
INSERT INTO visit(checkin_date,checkout_date,Bill_ID,InsuranceID,PatientID,DoctorID) VALUES
 ('2025-08-18','2025-09-04',101,5,1,86)
,('2023-10-28','2023-11-05',179,2,181,40)
,('2025-07-16','2025-07-16',223,2,70,64)
,('2030-10-15','2030-10-25',112,3,66,77)
,('2026-09-01','2026-09-01',80,3,10,300)
,('2026-05-14','2026-05-16',33,6,52,248)
,('2026-04-01','2026-04-15',133,3,172,258)
,('2029-11-24','2029-12-14',293,6,253,70)
,('2025-12-23','2025-12-23',324,4,63,122)
,('2023-11-18','2023-11-19',240,1,108,80)
,('2023-12-07','2023-12-07',298,3,181,222)
,('2025-02-05','2025-02-05',9,3,297,63)
,('2025-07-08','2025-07-24',325,6,266,259)
,('2028-09-08','2028-09-16',323,6,36,285)
,('2028-09-07','2028-09-16',216,6,51,98)
,('2027-10-04','2027-10-16',78,6,77,47)
,('2026-10-11','2026-11-09',321,1,286,55)
,('2027-04-06','2027-04-07',315,1,256,21)
,('2028-12-18','2029-01-03',265,4,68,118)
,('2028-10-25','2028-11-21',87,4,257,28)
,('2023-05-21','2023-05-21',341,3,284,26)
,('2028-12-08','2028-12-08',220,2,117,145)
,('2029-10-23','2029-10-23',116,6,201,94)
,('2029-07-16','2029-08-07',196,4,271,56)
,('2025-07-27','2025-08-11',334,3,44,227)
,('2028-11-01','2028-11-14',97,7,193,287)
,('2028-02-24','2028-03-22',258,1,138,124)
,('2026-09-14','2026-09-25',340,1,185,230)
,('2026-06-07','2026-06-07',245,4,271,110)
,('2029-02-18','2029-03-14',314,6,255,268)
,('2027-07-13','2027-07-18',245,7,152,114)
,('2030-03-13','2030-03-13',243,3,221,255)
,('2023-03-11','2023-04-06',185,4,276,220)
,('2026-11-21','2026-12-03',120,7,129,228)
,('2030-02-04','2030-02-18',165,7,192,219)
,('2029-12-27','2029-12-30',212,5,297,288)
,('2026-10-15','2026-11-08',78,1,287,224)
,('2028-07-22','2028-07-30',254,5,32,244)
,('2030-10-25','2030-10-25',225,1,127,271)
,('2024-01-25','2024-01-25',11,6,47,3)
,('2027-07-01','2027-07-31',116,4,50,161)
,('2025-01-17','2025-01-17',59,4,188,126)
,('2028-03-08','2028-03-20',115,7,140,136)
,('2030-04-25','2030-05-12',4,5,3,173)
,('2024-07-08','2024-07-20',198,2,142,133)
,('2025-08-24','2025-08-24',211,1,205,181)
,('2027-08-22','2027-09-05',281,1,4,238)
,('2027-02-22','2027-02-24',124,3,278,17)
,('2023-12-04','2023-12-04',127,5,79,40)
,('2026-07-14','2026-08-07',248,5,179,16)
,('2028-04-27','2028-05-23',230,3,137,230)
,('2024-12-11','2025-01-07',163,1,295,248)
,('2026-10-04','2026-10-21',274,3,36,104)
,('2026-08-08','2026-08-28',264,4,69,296)
,('2024-05-11','2024-05-26',273,4,118,69)
,('2029-04-01','2029-04-01',138,1,241,241)
,('2028-03-14','2028-03-20',319,2,268,218)
,('2026-03-22','2026-04-02',93,2,163,157)
,('2025-02-15','2025-02-25',26,2,244,282)
,('2023-12-03','2023-12-03',109,1,159,230)
,('2028-10-27','2028-11-16',99,4,166,60)
,('2027-04-16','2027-04-16',173,6,157,273)
,('2030-06-26','2030-06-26',120,3,256,248)
,('2028-01-03','2028-01-03',162,7,241,23)
,('2028-08-22','2028-09-08',104,3,221,66)
,('2029-12-13','2029-12-13',255,4,172,160)
,('2027-03-23','2027-04-22',164,7,154,277)
,('2028-12-24','2028-12-30',156,6,56,283)
,('2028-12-09','2029-01-07',2,6,9,268)
,('2023-11-17','2023-12-15',224,6,168,15)
,('2028-09-08','2028-09-20',35,4,98,264)
,('2029-04-18','2029-05-01',178,7,200,230)
,('2026-02-24','2026-03-09',281,2,250,235)
,('2029-01-08','2029-01-08',274,6,52,241)
,('2029-04-11','2029-04-11',76,6,270,15)
,('2030-09-17','2030-10-10',44,6,154,283)
,('2023-03-02','2023-03-29',260,2,294,135)
,('2023-04-11','2023-04-24',142,2,269,216)
,('2027-05-14','2027-05-24',256,1,75,188)
,('2026-04-12','2026-05-03',287,6,164,232)
,('2024-07-25','2024-08-22',23,2,158,139)
,('2027-11-23','2027-12-12',35,3,29,182)
,('2024-03-07','2024-03-12',103,1,147,279)
,('2023-05-03','2023-05-03',39,5,144,108)
,('2026-04-10','2026-04-28',164,3,18,124)
,('2026-04-20','2026-04-20',348,7,248,10)
,('2029-04-18','2029-04-19',49,3,215,158)
,('2028-02-12','2028-02-13',221,3,15,69)
,('2025-05-19','2025-05-24',253,5,111,224)
,('2023-10-05','2023-10-22',54,2,17,256)
,('2029-05-05','2029-05-10',183,4,156,123)
,('2027-10-23','2027-11-12',238,3,284,228)
,('2030-07-22','2030-07-22',13,3,189,280)
,('2026-09-24','2026-09-24',281,3,3,135)
,('2023-04-21','2023-05-04',113,4,17,128)
,('2024-06-09','2024-06-09',243,3,206,108)
,('2030-04-19','2030-05-03',180,7,280,3)
,('2023-08-16','2023-08-18',191,5,125,87)
,('2023-12-13','2023-12-13',30,1,107,1)
,('2029-05-19','2029-06-08',21,6,147,101)
,('2030-06-15','2030-06-23',262,3,19,77)
,('2026-12-13','2026-12-13',269,1,11,105)
,('2023-02-27','2023-03-06',243,3,58,51)
,('2030-01-25','2030-02-12',215,1,83,206)
,('2030-08-01','2030-08-19',133,4,167,268)
,('2027-03-06','2027-03-06',261,1,291,280)
,('2025-03-11','2025-03-13',65,1,296,39)
,('2023-08-02','2023-08-17',280,2,164,218)
,('2023-03-10','2023-04-01',244,3,110,148)
,('2028-11-24','2028-12-16',12,3,131,152)
,('2030-10-22','2030-10-22',191,1,234,42)
,('2028-08-25','2028-08-25',340,5,75,123)
,('2026-11-15','2026-12-05',46,1,44,98)
,('2030-03-10','2030-04-09',310,2,68,257)
,('2023-10-11','2023-11-07',177,3,197,275)
,('2030-03-13','2030-03-13',62,7,271,199)
,('2030-02-08','2030-03-04',108,1,192,119)
,('2023-06-19','2023-06-19',197,7,246,286)
,('2025-01-12','2025-01-15',173,5,135,122)
,('2027-06-18','2027-07-08',152,4,11,122)
,('2027-05-05','2027-05-08',195,4,121,224)
,('2023-04-27','2023-05-17',152,1,291,75)
,('2027-11-15','2027-11-15',347,7,228,149)
,('2024-02-17','2024-03-02',219,7,264,153)
,('2028-05-09','2028-05-09',54,5,195,270)
,('2025-12-27','2025-12-27',77,7,271,162)
,('2026-06-10','2026-06-16',81,1,80,209)
,('2028-05-15','2028-05-15',25,7,101,48)
,('2028-02-24','2028-03-11',224,4,106,132)
,('2023-03-18','2023-04-05',151,4,187,123)
,('2026-11-14','2026-12-10',118,4,103,283)
,('2029-11-09','2029-11-09',303,6,266,218)
,('2028-08-09','2028-09-03',59,4,23,84)
,('2025-01-21','2025-02-20',222,2,145,263)
,('2027-04-13','2027-05-11',334,7,10,48)
,('2028-03-28','2028-03-28',158,2,4,215)
,('2024-12-17','2024-12-29',2,6,35,5)
,('2029-04-03','2029-04-05',45,1,92,5)
,('2023-11-01','2023-11-01',194,5,253,22)
,('2029-05-14','2029-05-21',63,2,150,33)
,('2029-08-04','2029-08-07',152,4,10,220)
,('2023-07-15','2023-08-02',234,4,100,230)
,('2028-08-18','2028-08-18',198,4,186,90)
,('2030-12-03','2030-12-07',246,6,201,85)
,('2026-03-08','2026-03-17',314,1,125,65)
,('2024-11-04','2024-11-08',142,3,44,139)
,('2027-11-26','2027-11-26',202,5,102,86)
,('2029-07-14','2029-07-14',31,2,233,89)
,('2028-10-27','2028-11-26',165,1,108,127)
,('2028-08-04','2028-09-01',119,2,10,245)
,('2023-07-03','2023-07-22',180,1,30,298)
,('2029-11-06','2029-11-06',243,7,214,133)
,('2028-07-06','2028-07-06',278,1,106,147)
,('2023-03-22','2023-04-12',51,6,282,70)
,('2027-12-20','2027-12-20',28,1,104,166)
,('2030-01-02','2030-01-02',340,6,256,100)
,('2026-05-03','2026-05-03',333,5,163,283)
,('2026-07-23','2026-08-18',337,4,14,202)
,('2028-12-12','2029-01-03',283,5,264,240)
,('2027-06-08','2027-06-08',22,1,1,222)
,('2026-06-21','2026-06-21',286,6,204,79)
,('2025-04-14','2025-05-05',132,1,190,46)
,('2027-10-02','2027-10-14',143,5,80,165)
,('2025-06-16','2025-06-18',288,1,21,148)
,('2030-08-02','2030-08-02',305,6,83,55)
,('2025-03-08','2025-04-02',159,3,85,208)
,('2028-06-18','2028-07-04',37,2,44,234)
,('2025-04-12','2025-04-24',247,3,33,132)
,('2028-05-10','2028-05-12',217,3,155,258)
,('2026-04-04','2026-04-04',161,6,60,9)
,('2028-02-02','2028-02-12',269,7,62,87)
,('2024-12-27','2025-01-06',265,3,200,163)
,('2027-06-10','2027-06-10',193,3,94,68)
,('2024-12-13','2024-12-20',196,1,22,8)
,('2024-01-16','2024-02-11',10,3,134,254)
,('2023-02-20','2023-03-04',161,3,57,272)
,('2023-10-17','2023-10-29',58,2,20,211)
,('2030-04-25','2030-04-25',160,3,300,59)
,('2025-10-13','2025-11-01',83,3,78,64)
,('2030-03-07','2030-03-11',128,6,114,230)
,('2028-06-26','2028-07-01',280,7,193,44)
,('2027-11-17','2027-11-19',222,3,133,41)
,('2029-11-14','2029-11-28',7,3,41,112)
,('2028-09-13','2028-09-24',97,5,143,103)
,('2029-02-22','2029-03-15',149,4,77,39)
,('2026-06-23','2026-07-22',335,1,137,12)
,('2023-03-15','2023-04-07',118,6,56,240)
,('2024-07-24','2024-08-10',240,3,132,236)
,('2026-08-27','2026-09-01',196,1,54,234)
,('2023-05-08','2023-05-12',124,3,258,161)
,('2028-08-22','2028-08-22',94,7,279,168)
,('2025-05-25','2025-06-24',156,1,57,28)
,('2026-11-13','2026-11-13',187,6,219,273)
,('2025-04-19','2025-04-19',338,2,2,38)
,('2029-02-06','2029-02-06',211,6,163,250)
,('2026-04-26','2026-05-18',245,1,220,20)
,('2030-02-06','2030-02-06',296,5,243,261)
,('2025-05-26','2025-05-31',161,5,5,146)
,('2024-07-04','2024-07-04',61,2,35,99)
,('2023-07-05','2023-07-06',301,5,284,272)
,('2023-06-22','2023-06-22',281,4,174,60)
,('2030-06-07','2030-06-13',329,7,268,6)
,('2025-01-02','2025-01-02',38,5,107,65)
,('2028-05-03','2028-06-01',188,4,262,238)
,('2024-05-27','2024-06-07',279,7,181,124)
,('2029-05-07','2029-05-25',18,6,171,274)
,('2023-12-17','2023-12-17',256,6,45,93)
,('2023-02-28','2023-02-28',285,6,266,258)
,('2023-03-16','2023-03-16',214,7,292,281)
,('2023-03-01','2023-03-01',204,6,90,204)
,('2030-08-09','2030-08-26',49,1,170,60)
,('2026-07-13','2026-07-21',51,3,151,300)
,('2027-08-10','2027-08-20',336,1,74,10)
,('2028-01-07','2028-01-10',247,5,11,190)
,('2027-11-28','2027-12-07',302,7,41,70)
,('2026-01-20','2026-01-20',172,5,280,102)
,('2025-09-16','2025-09-27',73,3,193,125)
,('2030-10-22','2030-10-22',142,1,29,14)
,('2024-12-13','2024-12-18',92,2,138,83)
,('2029-05-03','2029-05-20',136,2,299,14)
,('2028-05-23','2028-05-23',117,3,207,5)
,('2028-06-24','2028-07-14',283,6,223,136)
,('2023-05-18','2023-06-02',71,4,214,249)
,('2027-01-13','2027-01-13',131,2,27,233)
,('2026-11-15','2026-12-04',153,3,162,46)
,('2030-04-11','2030-04-17',225,6,158,181)
,('2023-03-17','2023-03-31',173,1,170,296)
,('2024-10-17','2024-10-17',167,4,179,261)
,('2024-05-12','2024-06-11',91,7,122,215)
,('2024-08-05','2024-08-05',6,5,128,190)
,('2030-05-20','2030-06-03',296,1,162,48)
,('2027-02-13','2027-02-13',300,6,180,84)
,('2029-11-16','2029-11-16',120,7,185,66)
,('2025-03-06','2025-03-06',317,4,263,229)
,('2029-12-16','2030-01-03',344,7,280,252)
,('2030-03-09','2030-03-09',156,5,254,188)
,('2028-11-09','2028-11-11',263,5,190,189)
,('2024-08-14','2024-08-20',71,2,130,95)
,('2027-08-12','2027-08-20',244,2,15,108)
,('2029-10-23','2029-10-23',76,2,199,51)
,('2026-01-28','2026-02-19',143,4,9,109)
,('2026-02-16','2026-02-16',166,5,233,30)
,('2030-06-09','2030-06-09',150,5,269,178)
,('2027-10-22','2027-11-15',278,3,278,89)
,('2025-03-15','2025-03-15',296,1,218,202)
,('2027-07-05','2027-07-05',148,1,90,263)
,('2025-04-06','2025-04-14',72,6,60,105)
,('2027-02-02','2027-02-17',42,3,212,283)
,('2029-08-15','2029-08-24',26,3,32,66)
,('2024-09-12','2024-10-03',305,3,223,96)
,('2027-09-25','2027-10-13',126,6,209,87)
,('2030-05-08','2030-05-18',107,7,114,231)
,('2023-12-09','2023-12-17',1,1,104,113)
,('2029-10-05','2029-10-17',12,1,161,64)
,('2030-06-14','2030-06-19',121,7,109,123)
,('2023-09-10','2023-09-10',206,2,68,17)
,('2026-12-10','2026-12-23',164,3,74,71)
,('2030-11-03','2030-11-22',263,7,197,125)
,('2027-03-21','2027-03-22',51,3,80,119)
,('2028-02-09','2028-02-23',267,4,200,13)
,('2025-03-06','2025-03-21',214,3,155,100)
,('2026-06-24','2026-06-24',343,1,255,143)
,('2023-05-09','2023-05-17',132,1,99,185)
,('2024-10-18','2024-11-04',84,1,214,234)
,('2023-12-20','2023-12-20',169,7,41,264)
,('2029-05-03','2029-05-28',346,4,199,264)
,('2029-09-21','2029-09-29',298,7,241,166)
,('2025-12-14','2025-12-14',2,2,63,111)
,('2030-10-02','2030-10-26',167,5,278,159)
,('2025-02-18','2025-02-18',267,4,160,142)
,('2026-05-08','2026-05-09',107,6,178,208)
,('2025-12-12','2026-01-11',93,3,268,52)
,('2023-08-05','2023-08-05',194,7,234,61)
,('2023-09-12','2023-09-27',15,7,22,157)
,('2030-05-21','2030-05-21',92,7,181,182)
,('2027-01-28','2027-02-19',18,1,153,229)
,('2025-04-27','2025-05-10',204,5,197,272)
,('2028-06-12','2028-07-10',59,7,265,46)
,('2024-03-20','2024-03-25',208,2,292,58)
,('2025-03-19','2025-04-16',251,7,192,86)
,('2029-07-08','2029-07-08',85,6,29,288)
,('2030-06-15','2030-07-06',199,4,151,139)
,('2028-02-25','2028-03-05',142,3,242,29)
,('2029-09-06','2029-09-11',110,4,293,218)
,('2025-02-11','2025-02-17',329,4,137,222)
,('2029-07-03','2029-07-03',138,2,266,180)
,('2024-08-16','2024-09-04',285,7,189,131)
,('2028-09-05','2028-09-18',248,7,27,66)
,('2024-04-02','2024-04-05',336,6,161,266)
,('2027-02-16','2027-02-25',299,2,116,235)
,('2025-12-21','2025-12-25',277,2,72,109)
,('2024-07-18','2024-07-24',22,5,229,66)
,('2028-03-06','2028-03-06',15,5,67,272)
,('2030-03-26','2030-03-28',213,3,113,219)
,('2023-04-02','2023-04-02',161,5,108,183)
,('2026-06-11','2026-06-19',100,3,265,158)
,('2024-11-26','2024-12-25',289,7,104,210)
,('2024-01-18','2024-01-19',108,1,118,196)
,('2029-12-24','2029-12-24',192,6,161,112)
,('2024-05-27','2024-06-15',131,1,138,109)
,('2025-11-18','2025-12-06',16,4,17,193)
,('2030-05-03','2030-05-21',29,2,122,79)
,('2024-12-07','2025-01-05',323,7,253,83)
,('2028-10-12','2028-10-12',279,3,129,164)
,('2029-03-12','2029-03-30',307,6,160,5)
,('2024-02-24','2024-03-03',295,2,13,35)
,('2028-09-09','2028-09-19',246,1,22,61)
,('2030-05-21','2030-05-21',254,7,249,251)
,('2024-11-22','2024-12-08',233,7,55,212)
,('2024-03-12','2024-03-30',317,6,58,209)
,('2025-10-07','2025-10-21',124,1,298,147)
,('2029-03-25','2029-03-25',342,1,4,35)
,('2023-08-02','2023-08-02',139,6,80,3)
,('2030-07-27','2030-08-10',184,3,10,294)
,('2030-11-12','2030-11-12',75,1,276,43)
,('2027-08-22','2027-08-22',337,6,21,291)
,('2024-02-13','2024-03-06',38,2,287,49)
,('2026-04-24','2026-05-08',150,1,46,254)
,('2025-02-27','2025-02-27',77,1,293,84)
,('2024-10-20','2024-11-06',199,1,27,82)
,('2027-06-22','2027-07-04',25,5,300,140)
,('2028-05-10','2028-05-30',268,4,120,290)
,('2030-08-18','2030-08-18',245,3,6,38)
,('2026-09-15','2026-10-07',141,7,279,251)
,('2030-11-20','2030-12-06',193,2,284,123)
,('2024-01-16','2024-01-26',168,5,151,244)
,('2024-01-13','2024-01-13',266,3,125,244)
,('2023-07-05','2023-08-01',208,2,8,216)
,('2030-02-21','2030-03-04',334,4,263,207)
,('2023-12-19','2024-01-03',79,7,149,290)
,('2026-07-08','2026-07-08',193,4,238,123)
,('2029-05-14','2029-06-08',307,3,300,204)
,('2028-03-27','2028-04-14',40,7,247,61)
,('2026-11-15','2026-11-15',340,2,224,195)
,('2028-09-27','2028-10-07',282,5,115,72)
,('2026-04-10','2026-04-10',126,1,205,240)
,('2027-06-25','2027-07-15',173,6,160,143)
,('2027-06-28','2027-07-12',82,2,118,138)
,('2029-09-05','2029-09-05',23,5,94,142)
,('2024-05-07','2024-05-07',205,2,131,71)
,('2030-03-24','2030-04-16',208,1,266,220)
,('2028-05-24','2028-06-08',342,4,56,3)
,('2025-06-01','2025-06-17',267,2,126,157)
,('2028-02-24','2028-02-24',342,3,299,224)
,('2027-12-06','2027-12-06',70,2,150,38)
,('2025-08-20','2025-09-05',180,1,203,115)
,('2024-07-07','2024-07-13',218,5,142,262)
,('2029-12-24','2029-12-26',208,7,271,98)
,('2029-06-15','2029-06-22',330,4,39,17)
,('2028-12-16','2029-01-09',131,1,177,66);




--hospital
DROP TABLE IF EXISTS hospital;
CREATE TABLE hospital(
    HospitalID INT PRIMARY KEY IDENTITY(1,1),
   HospitalName VARCHAR(33) NOT NULL
  ,LocationID   INTEGER  NOT NULL
);
INSERT INTO hospital(HospitalName,LocationID) VALUES
 ('Summit Crest Hospital',46)
,('Evergreen Medical Center',68)
,('Maplewood General Hospital',23)
,('Starlight Memorial Hospital',26)
,('Willow Creek Medical Center',25)
,('BrightView Regional Hospital',40)
,('Horizon Valley Hospital',20)
,('Sunrise Peak Medical Center',28)
,('Lakeside Health Hospital',96)
,('Blue Ridge Medical Center',29)
,('Golden Oaks General Hospital',34)
,('Meadowbrook Health Hospital',97)
,('Silverlake Community Hospital',12)
,('Tranquil Springs Hospital',83)
,('Crestview Memorial Hospital',18)
,('Westgate General Hospital',61)
,('Riverbend Regional Hospital',91)
,('Oakwood Medical Center',33)
,('Pinehill Memorial Hospital',51)
,('Sierra Heights Medical Center',76)
,('Springvale General Hospital',96)
,('Hopewell Medical Center',81)
,('Seaside Community Hospital',78)
,('Beacon Hill Medical Center',47)
,('Harborview Memorial Hospital',40)
,('Stonebridge General Hospital',85)
,('Northwind Health Hospital',90)
,('Greenfield Medical Center',34)
,('Aspen Valley Hospital',8)
,('Cedar Grove Medical Center',24)
,('Timberland Memorial Hospital',25)
,('Ironwood Health Center',64)
,('Riverside Heights Hospital',67)
,('Windmere Medical Center',41)
,('Shadowbrook General Hospital',50)
,('Hearthstone Regional Hospital',2)
,('Mountainview Health Center',89)
,('Briarwood Medical Center',66)
,('Sapphire Springs Hospital',4)
,('Highland Park General Hospital',77)
,('Everglade Medical Center',30)
,('Cloverfield Health Hospital',58)
,('Foxglove Memorial Hospital',95)
,('Crystal Bay Medical Center',49)
,('Redwood Valley Hospital',15)
,('Snowpeak General Hospital',78)
,('Elmwood Heights Medical Center',68)
,('Twin Pines Regional Hospital',64)
,('Pebblebrook General Hospital',65)
,('Horizon Edge Medical Center',97)
,('Lakeshore General Hospital',11)
,('Misty Hills Medical Center',60)
,('Grandview Health Hospital',82)
,('St. Gabriel’s Hospital',54)
,('Willow Ridge Medical Center',64)
,('Summit Bay Memorial Hospital',42)
,('Moonlight General Hospital',55)
,('Dewpoint Medical Center',91)
,('Autumnwood Health Center',60)
,('Skyline Regional Hospital',36)
,('Everwood Medical Center',72)
,('Meadow Crest Hospital',4)
,('Rolling Hills General Hospital',50)
,('Sunbeam Health Center',33)
,('Palisade Medical Center',20)
,('Glacier View Hospital',75)
,('Whispering Pines General Hospital',65)
,('BrightHorizon Medical Center',9)
,('Shoreline Health Hospital',87)
,('Twilight Memorial Hospital',15)
,('Granite Point Medical Center',91)
,('Silverbrook General Hospital',4)
,('Northgate Regional Hospital',21)
,('Harmony Health Center',14)
,('Harbor Springs Medical Center',84)
,('Seaview Memorial Hospital',78)
,('Rainforest General Hospital',80)
,('Brookhaven Medical Center',52)
,('Sunnyvale Health Hospital',12)
,('Fairmount Memorial Hospital',94)
,('Windsor Crest Medical Center',83)
,('Horizon Pines Hospital',81)
,('Sunset View General Hospital',71)
,('Greenleaf Medical Center',21)
,('Heritage Hills Hospital',81)
,('Oakridge Health Center',42)
,('Skyhaven Medical Center',68)
,('Maple Valley General Hospital',18)
,('Lighthouse Medical Center',24)
,('Sunbrook Memorial Hospital',5)
,('Winterhaven Health Center',47)
,('Harmony Ridge Hospital',28)
,('Crescent Bay Medical Center',43)
,('Serenity Springs Hospital',28)
,('Aspen Heights Medical Center',85)
,('Blue Haven Memorial Hospital',62)
,('Golden Horizon Medical Center',92)
,('Redwood Pines Hospital',66)
,('Mountain Crest Health Center',90)
,('Meadowview General Hospital',97)
,('Cedar Ridge Medical Center',41)
,('Silver Springs Hospital',71)
,('Horizon Bay Medical Center',33)
,('Seaside Shores Hospital',20)
,('Valley Crest Medical Center',94)
,('Stony Brook Memorial Hospital',36)
,('Oceanview Medical Center',92)
,('Tranquility Health Hospital',91)
,('Willow Bend General Hospital',28)
,('New Hope Medical Center',20)
,('Grand Pines Hospital',31)
,('North Shore Health Center',100)
,('Heritage Medical Center',7)
,('Sunnyside Memorial Hospital',91)
,('Rosewood Regional Hospital',84)
,('Timberline Medical Center',67)
,('Cypress Hills Hospital',74)
,('Forest Glen Medical Center',72)
,('Summit Lake Hospital',8)
,('Pine Valley General Hospital',88)
,('Crystal Ridge Medical Center',1)
,('Ocean Crest Hospital',98)
,('Serene Valley Medical Center',96)
,('Riverstone General Hospital',50)
,('Lakewood Health Center',33)
,('Starglow Memorial Hospital',67)
,('Everpine Medical Center',55)
,('Boulder Creek Hospital',99)
,('Cascade Valley General Hospital',63)
,('Sunhaven Medical Center',41)
,('Clearwater Memorial Hospital',40)
,('Mountain Pine Medical Center',59)
,('Brookside Health Hospital',16)
,('Horizon Meadows Medical Center',58)
,('Wildflower General Hospital',4)
,('Summit Grove Medical Center',37)
,('Shady Oaks Hospital',3)
,('Sequoia Health Center',61)
,('Windy Ridge Medical Center',88)
,('Silver Birch Memorial Hospital',57)
,('Bayview General Hospital',62)
,('Everbliss Medical Center',15)
,('Oak Haven Health Hospital',6)
,('Sunset Ridge Medical Center',33)
,('Highland Springs General Hospital',45)
,('Orchard Valley Medical Center',96)
,('Dovecrest Memorial Hospital',97)
,('Ridgeway Health Hospital',100)
,('Cloudview General Hospital',66)
,('Frostvale Medical Center',28)
,('Horizon Brook Hospital',94)
,('Autumn Creek Medical Center',52)
,('Meadowridge Health Hospital',47)
,('Cedarvale General Hospital',36)
,('Maple Haven Medical Center',67)
,('Starview General Hospital',92)
,('Timberwood Health Hospital',94)
,('Elm Ridge Medical Center',49)
,('Baycrest Memorial Hospital',53)
,('Summit Shore General Hospital',56)
,('Morning Dew Medical Center',97)
,('Canyon Creek Hospital',20)
,('Ridgepine General Hospital',79)
,('Blue Horizon Medical Center',81)
,('Echo Valley Hospital',54)
,('Lakefront Health Center',96)
,('Havenbrook Memorial Hospital',55)
,('Northstar General Hospital',99)
,('Skycrest Medical Center',78)
,('Forest Haven Hospital',42)
,('Harbor Glen Health Center',22)
,('Sunrise Crest Hospital',92)
,('Mountain Haven Medical Center',60)
,('Valley Horizon Hospital',74)
,('Shadow Lake Medical Center',89)
,('Crystal Summit Hospital',74)
,('Misty Brook Medical Center',80)
,('Aurora Crest Hospital',81)
,('Golden Bay General Hospital',46)
,('Northwood Medical Center',16)
,('Oakfield Health Hospital',50)
,('Riverbliss Memorial Hospital',66)
,('Timberhill Medical Center',33)
,('Elm Crest General Hospital',95)
,('Summit Springs Medical Center',98)
,('Willow Glen Hospital',24)
,('Sunvale General Hospital',94)
,('Westwind Medical Center',1)
,('Lilybrook Memorial Hospital',46)
,('Coastal Haven Hospital',89)
,('Snowy Peak Medical Center',25)
,('Breezewood General Hospital',38)
,('Evermist Health Center',45)
,('Mountain Breeze Hospital',3)
,('Glacier Hill Medical Center',73)
,('Golden Crest Hospital',60)
,('Maple Pines Medical Center',89)
,('Stony Creek Memorial Hospital',24)
,('Hearthcrest General Hospital',79)
,('Harborwood Medical Center',57);

SELECT TOP 10 * FROM hospital 

DROP TABLE IF EXISTS insurance;
CREATE TABLE insurance(
   Insurance_ID   INTEGER PRIMARY KEY IDENTITY(1,1)
  ,Insurance_Name VARCHAR(22) NOT NULL
  ,Deductible     INTEGER  NOT NULL
  ,Copay          INTEGER  NOT NULL
);
INSERT INTO insurance(Insurance_Name,Deductible,Copay) VALUES
 ('Aetna',200,40)
,('Blue Cross Blue Shield',0,20)
,('Cigna',300,0)
,('UnitedHealthcare',450,20)
,('Kaiser Permanente',250,40)
,('Medicare',600,60)
,('Humana',500,50);

SELECT TOP 10 * FROM insurance;

DROP TABLE IF EXISTS patient;
CREATE TABLE patient(
   PatientID  INTEGER PRIMARY KEY IDENTITY(1,1)
  ,first_name VARCHAR(12) NOT NULL
  ,last_name  VARCHAR(15) NOT NULL
  ,symptoms   VARCHAR(11) NOT NULL
  ,LocationID INTEGER  NOT NULL
);
INSERT INTO patient(first_name,last_name,symptoms,LocationID) VALUES
 ('Abbie','Dumbleton','bloating',89)
,('Dallas','Mea','confusion',49)
,('Langsdon','Whieldon','confusion',70)
,('Janine','Marre','vomiting',8)
,('Gerrie','Baytrop','confusion',71)
,('Cullin','Delgado','chest pain',80)
,('Darb','Simioni','vomiting',68)
,('Tory','Runnalls','bloating',13)
,('Zackariah','McTavy','muscle pain',94)
,('Odey','Petrov','headache',16)
,('Gay','Jest','vomiting',4)
,('Billi','Hulett','chest pain',98)
,('Morris','Guwer','wheezing',26)
,('Lonnie','Ranscomb','depression',65)
,('Hilly','Jean','wheezing',13)
,('Gustavo','Bavister','anxiety',96)
,('Janek','Bourthouloume','wheezing',69)
,('Faulkner','McGuane','chest pain',20)
,('Concettina','Skellen','chest pain',96)
,('Jenifer','Hambly','headache',46)
,('Booth','Sallarie','depression',14)
,('Bertina','Ipgrave','muscle pain',26)
,('Hastie','Whettleton','chest pain',92)
,('Felicdad','Lucien','depression',9)
,('Nonah','Hartnup','muscle pain',38)
,('Sigismundo','Blampey','anxiety',15)
,('Cayla','Haitlie','chest pain',58)
,('Foss','Messam','chest pain',2)
,('Wileen','Jarville','bloating',44)
,('Bordie','Beechcraft','seizures',58)
,('Carmel','Peachman','vomiting',19)
,('Maitilde','Colum','depression',35)
,('Corina','Ingerith','headache',28)
,('Pepi','Dowell','chest pain',87)
,('Gregoor','Haliburton','seizures',61)
,('Thain','Telega','seizures',79)
,('Jeannette','Flory','headache',44)
,('Randall','Ros','confusion',1)
,('Petra','Birdis','confusion',6)
,('Barbara-anne','Philpot','bloating',25)
,('Hermann','McGavin','depression',63)
,('Forbes','Gladtbach','anxiety',4)
,('Daisy','Stanway','depression',58)
,('Ofilia','Went','coughing',14)
,('Jorrie','Bulgen','muscle pain',1)
,('Cory','O'' Ronan','headache',90)
,('Frank','Yell','wheezing',3)
,('Gabriell','Standrin','seizures',2)
,('Karyl','Islip','bloating',80)
,('Andrus','Truscott','headache',64)
,('Randy','Drains','seizures',60)
,('Nanete','Cauldwell','anxiety',53)
,('Lydon','Hawken','anxiety',78)
,('Mandel','Springford','chest pain',23)
,('Penrod','Haswell','vomiting',74)
,('Urbano','Hadley','muscle pain',86)
,('Berty','Moore','confusion',28)
,('Meyer','Colegate','headache',70)
,('Kirbie','Zarb','wheezing',7)
,('Alberik','Pady','headache',3)
,('Perceval','Pedrocco','muscle pain',97)
,('Andreas','Spedroni','confusion',6)
,('Gabbie','Rigeby','confusion',77)
,('Belle','Linggood','muscle pain',89)
,('Alix','Lorence','vomiting',97)
,('Charla','Ronchka','vomiting',76)
,('Antons','Mullin','confusion',35)
,('Nealson','Janoch','confusion',77)
,('Laureen','Kilmurray','vomiting',21)
,('Eleanore','Ivic','chest pain',34)
,('Therine','Omond','headache',58)
,('Shelley','Turmell','anxiety',40)
,('Vergil','Tedder','headache',81)
,('Chaddy','Churchley','coughing',76)
,('Serene','Ternouth','confusion',56)
,('Andrea','Davidde','anxiety',37)
,('Hadleigh','Humm','headache',21)
,('Beitris','Withams','depression',8)
,('Nike','Battie','depression',72)
,('Lindsy','Keers','headache',46)
,('Issie','Grigorini','bloating',55)
,('Dallas','Humble','anxiety',14)
,('Franz','Elizabeth','seizures',40)
,('Armstrong','Mewis','confusion',17)
,('Gwenora','Pavlata','bloating',9)
,('Neale','Dachey','vomiting',22)
,('Wood','Jeffs','vomiting',19)
,('Tobias','Goldman','coughing',65)
,('Osbert','Winsor','confusion',35)
,('Maud','Chown','headache',64)
,('Shel','Yearn','chest pain',84)
,('Junie','Aisman','chest pain',89)
,('Marianne','Lardier','vomiting',3)
,('Sharona','Dagnall','chest pain',24)
,('Dougie','Undrell','headache',60)
,('Sonja','McCready','anxiety',90)
,('Kissie','Molineaux','seizures',97)
,('Celestina','Lalonde','vomiting',93)
,('Kora','Shier','bloating',56)
,('Ewan','Swannie','confusion',24)
,('Hester','Ashley','seizures',53)
,('Amaleta','Leftbridge','vomiting',18)
,('Marthena','Cromblehome','confusion',64)
,('Lorne','Boribal','seizures',19)
,('Lelah','Boothby','headache',100)
,('Edee','Loudiane','vomiting',6)
,('Burnard','Dibb','headache',96)
,('Samantha','Baish','bloating',71)
,('Emalee','Fransoni','seizures',10)
,('Dexter','Hector','confusion',74)
,('Banky','Limeburn','coughing',73)
,('Prudy','Wistance','anxiety',46)
,('Marlena','Di Dello','confusion',23)
,('Licha','Mateuszczyk','wheezing',9)
,('Rowen','Faraker','headache',35)
,('Frank','Couttes','seizures',26)
,('Dacey','Wash','coughing',24)
,('Leelah','Kennard','headache',100)
,('Terri','Giacoboni','anxiety',59)
,('Shoshana','Duckels','depression',65)
,('Justine','Blanpein','depression',89)
,('Toby','Egleton','seizures',9)
,('Reider','Longhorne','vomiting',8)
,('Stephie','McGonagle','bloating',50)
,('Myrta','Fandrey','wheezing',95)
,('Dacey','Gleeton','bloating',20)
,('Sonnnie','O''Dee','confusion',58)
,('Jayne','McCartney','seizures',38)
,('June','Wallen','headache',23)
,('Archambault','Leverington','wheezing',32)
,('Alica','Elbourne','depression',30)
,('Bradan','Westgarth','wheezing',65)
,('Bastian','Redish','muscle pain',20)
,('Henri','Oaks','vomiting',57)
,('Hyacinth','Radborn','muscle pain',5)
,('Ike','Seaborne','muscle pain',50)
,('Syman','Bowhay','anxiety',21)
,('Kristofer','McKinlay','vomiting',100)
,('Amara','Knightsbridge','wheezing',80)
,('Adore','Edworthye','bloating',91)
,('Barret','Merrett','depression',3)
,('Jobey','Touhig','anxiety',74)
,('Tracy','Neissen','headache',85)
,('Odie','Andres','seizures',40)
,('Mikkel','Boddy','depression',7)
,('Ediva','Clamo','anxiety',29)
,('Wendye','Faragher','bloating',59)
,('Fran','Furminger','muscle pain',27)
,('Consuela','Fairnington','wheezing',72)
,('Joey','Fabry','chest pain',61)
,('Frasco','Savin','anxiety',57)
,('Bernardine','Arnoult','confusion',88)
,('Corabel','Bugdell','headache',79)
,('Andie','Staniland','wheezing',100)
,('Rorke','Baynard','bloating',64)
,('Neda','Cleugh','anxiety',30)
,('Gillie','Blowin','anxiety',76)
,('Parrnell','Gilphillan','muscle pain',2)
,('Briana','Irnys','anxiety',80)
,('Drew','Coveney','anxiety',44)
,('Shana','Baylie','seizures',79)
,('Valentia','O''Neal','depression',33)
,('Cassey','Brayfield','chest pain',9)
,('Gwendolin','Merrigans','seizures',43)
,('Sybille','Nemchinov','confusion',57)
,('Mollee','MacEllen','confusion',99)
,('Giuseppe','MacTrustam','anxiety',73)
,('Leora','Applegate','bloating',23)
,('Heddie','Devinn','chest pain',58)
,('Sondra','Mattheus','bloating',78)
,('Sherry','Enden','confusion',14)
,('Mae','Krug','vomiting',25)
,('Stepha','Urion','vomiting',24)
,('Linnell','Blaase','anxiety',51)
,('Con','Ryley','coughing',31)
,('Klemens','Steffan','coughing',55)
,('Thurstan','Coombs','headache',99)
,('Romy','Ferraretto','headache',62)
,('Margeaux','Syalvester','confusion',69)
,('Baryram','Dent','wheezing',9)
,('Padget','Battaille','bloating',2)
,('Mela','Boncoeur','chest pain',60)
,('Diann','Cruikshank','headache',83)
,('Melvin','Ketcher','wheezing',38)
,('Martynne','Eliyahu','depression',38)
,('Cristabel','Phinnis','confusion',35)
,('Loraine','Craythorne','chest pain',3)
,('Skyler','Bulcroft','bloating',12)
,('Esma','Stonard','confusion',24)
,('Kin','Onians','headache',65)
,('Genevra','Shaddick','depression',57)
,('Fonz','Bohler','muscle pain',98)
,('Calley','Tippings','vomiting',19)
,('Rinaldo','Tolliday','coughing',57)
,('Janelle','Calderon','confusion',20)
,('Ring','Bonsall','anxiety',85)
,('Rivalee','Eisenberg','anxiety',20)
,('Gloria','Thistleton','coughing',3)
,('Didi','Kippin','headache',77)
,('Abbie','Twiggins','anxiety',82)
,('Marc','Ugo','confusion',54)
,('Bettina','Bukac','bloating',48)
,('Alonso','Gomme','wheezing',77)
,('Tobin','Rose','confusion',28)
,('Rickie','Schimpke','wheezing',57)
,('Mal','Riddle','bloating',67)
,('Nigel','Conelly','wheezing',19)
,('Shirl','Salzen','headache',80)
,('Gussy','Collar','chest pain',53)
,('Ingemar','Robertson','wheezing',79)
,('Caro','Jessep','muscle pain',39)
,('Theadora','Branford','anxiety',79)
,('Diann','Towriss','confusion',77)
,('Jammal','Cawley','anxiety',92)
,('Kimbra','Ancliff','depression',79)
,('Carmelina','Latch','chest pain',43)
,('Joelynn','Clerk','confusion',61)
,('Jinny','Atkins','headache',82)
,('Wayne','Frangione','confusion',65)
,('Worth','Gisbye','chest pain',10)
,('Blane','Hamsher','bloating',80)
,('Claudell','Pallas','bloating',39)
,('Alyda','Postin','wheezing',16)
,('Silvie','Halcro','chest pain',16)
,('Serge','Winterson','coughing',61)
,('Klaus','Lumpkin','depression',14)
,('Kai','Waddie','headache',12)
,('Tiffie','Tilford','depression',57)
,('Barry','Guyer','muscle pain',31)
,('Cacilie','Paschek','headache',22)
,('Harwilll','Thain','coughing',63)
,('Gus','McGillecole','seizures',83)
,('Edie','Gentry','chest pain',78)
,('Clemmie','McVey','confusion',61)
,('Margo','Worsnap','depression',78)
,('Cesar','Ginman','headache',13)
,('Sheffie','Orniz','anxiety',34)
,('Marnia','Lethardy','chest pain',47)
,('Angelica','Lovick','bloating',17)
,('Petra','Blizard','depression',44)
,('Ara','de la Tremoille','confusion',4)
,('Nicholle','Boucher','headache',98)
,('Orrin','Wrathall','muscle pain',17)
,('Bran','Cratere','depression',36)
,('Elaine','Kee','anxiety',78)
,('Keslie','Woolf','chest pain',10)
,('Pauletta','Rix','wheezing',51)
,('Lenard','Hankey','muscle pain',17)
,('Prue','McGennis','seizures',94)
,('Caril','Berryman','confusion',15)
,('Fergus','Mennithorp','anxiety',29)
,('Gwennie','Turnell','muscle pain',30)
,('Trescha','Stilling','anxiety',37)
,('Cristy','Dobbie','depression',21)
,('Anastasie','Kondrachenko','bloating',55)
,('Marijo','Budleigh','chest pain',23)
,('Ricki','Nornasell','muscle pain',37)
,('Mike','Goodnow','vomiting',89)
,('Evy','Dell Casa','depression',29)
,('Debi','Naylor','chest pain',51)
,('Hannah','Brattan','depression',98)
,('Lara','Griffithe','headache',22)
,('Irene','Seiffert','anxiety',15)
,('Berti','Fyers','confusion',30)
,('Meghan','Dee','wheezing',23)
,('Saidee','Eadmeads','wheezing',13)
,('Jermaine','Fewkes','headache',36)
,('Trumaine','Heindrick','seizures',62)
,('Elisa','Tayt','confusion',51)
,('Benita','Dalgety','vomiting',55)
,('April','Driver','wheezing',67)
,('Edi','Staveley','chest pain',14)
,('Astrix','Ruben','chest pain',92)
,('Ugo','Leader','seizures',22)
,('Jermain','Benardette','chest pain',98)
,('Cass','Blacklidge','muscle pain',30)
,('Dinah','MacGibbon','vomiting',95)
,('Cordie','Lillywhite','headache',35)
,('Trefor','Yantsev','bloating',53)
,('Ketti','Leonard','bloating',100)
,('Bamby','Griswood','coughing',93)
,('Phyllys','Conman','vomiting',5)
,('Parker','Langforth','chest pain',44)
,('Genevieve','Peacher','confusion',53)
,('Elberta','Wicklen','muscle pain',58)
,('Denney','Scrowston','bloating',89)
,('Sig','Fridd','coughing',74)
,('Cyndia','Siddon','chest pain',45)
,('Hali','O''Flannery','wheezing',41)
,('Boyd','Denney','muscle pain',51)
,('Tallie','Rispen','wheezing',97)
,('Prisca','Snelman','depression',44)
,('Eziechiele','Cresser','headache',25)
,('Tammy','Feeley','seizures',10)
,('Georgette','Bleasby','bloating',63)
,('Margaretta','Fonquernie','headache',79)
,('Elka','Imason','wheezing',60)
,('Kenna','Prott','anxiety',79)
,('Ashleigh','Goldthorp','chest pain',54)
,('Rubie','Ackerman','seizures',31);

SELECT TOP 10* FROM patient;
DROP TABLE IF EXISTS bill;
CREATE TABLE bill(
   bill_id             INTEGER PRIMARY KEY IDENTITY(1,1)
  ,amount_covered      NUMERIC(7,2) NOT NULL
  ,payment_status      VARCHAR(7) NOT NULL
  ,out_of_pocket_costs NUMERIC(7,2) NOT NULL
);
INSERT INTO bill(amount_covered,payment_status,out_of_pocket_costs) VALUES
 (4233.95,'paid',835.49)
,(1221.34,'overdue',4947.97)
,(4261.59,'paid',484.6)
,(4838.63,'overdue',3759.24)
,(7432.8,'overdue',702.39)
,(6895.7,'overdue',135.94)
,(5849.66,'pending',4076.23)
,(3409.21,'pending',4475.49)
,(3750.64,'paid',630.15)
,(3502.11,'overdue',4002.37)
,(302.52,'pending',957.81)
,(6404.24,'paid',1669.9)
,(6098.91,'pending',3113.45)
,(8861.28,'overdue',3846.88)
,(4403.07,'overdue',1837.25)
,(5673.38,'overdue',757.46)
,(3879.19,'paid',1236.7)
,(8256.25,'pending',1166.8)
,(9873.43,'pending',1121.39)
,(1374.42,'pending',569.13)
,(2184.59,'pending',2149.66)
,(2054.14,'pending',4239.15)
,(1078.24,'overdue',4183.3)
,(1418.4,'overdue',4470.41)
,(4560.85,'paid',2856.73)
,(5841.57,'paid',4668.88)
,(6905.37,'paid',4707.7)
,(989.53,'pending',903.28)
,(5137.91,'pending',3981.44)
,(8611.53,'overdue',4979.26)
,(6079.96,'overdue',1662.75)
,(4926.29,'overdue',4071.84)
,(5016.05,'overdue',433.86)
,(6621.62,'paid',1128.09)
,(5854.84,'paid',2660.47)
,(9510.22,'paid',2884.76)
,(8840.41,'pending',3566.2)
,(5088.44,'overdue',2492.61)
,(317.22,'overdue',4501.55)
,(6296.75,'overdue',4871.11)
,(5228.19,'paid',1221.85)
,(4120.57,'overdue',4953.04)
,(1852.81,'pending',3999.37)
,(2334.98,'overdue',4013.46)
,(7928.15,'overdue',2877.3)
,(977.39,'paid',4899.11)
,(1565.42,'pending',2080.56)
,(6184.85,'overdue',4938.72)
,(7924,'pending',4924.3)
,(5614.35,'paid',2448.26)
,(7081.86,'pending',3761.11)
,(1828.86,'pending',966.82)
,(6764.23,'overdue',2373.86)
,(3181.47,'paid',591.18)
,(2197.98,'pending',2271.9)
,(7227.78,'pending',3743.13)
,(883.42,'overdue',4168.55)
,(6329.47,'overdue',3245.18)
,(311.44,'overdue',1124.33)
,(2689.61,'pending',2532.1)
,(4421.09,'overdue',4538.61)
,(7683.76,'overdue',4918.81)
,(6437.19,'overdue',2642.34)
,(4816.35,'pending',1240)
,(2062.29,'overdue',526.65)
,(1640.08,'pending',921.1)
,(2679.64,'paid',4937.75)
,(7641.58,'paid',698.96)
,(7914.38,'pending',2752.7)
,(8117.59,'overdue',169)
,(1381.98,'pending',2689.78)
,(2419.4,'pending',526.49)
,(3444.04,'pending',935.48)
,(5330.39,'overdue',4269.4)
,(3144.96,'paid',3190.02)
,(9034.06,'pending',2229.07)
,(6928.36,'paid',84.63)
,(5587.01,'paid',2275.99)
,(7131.77,'overdue',1367.01)
,(9760.83,'paid',1091.59)
,(4352.45,'pending',3675.64)
,(186.6,'overdue',3103.04)
,(1027.89,'overdue',3077.75)
,(1173.47,'paid',1898.07)
,(5568.33,'pending',3478)
,(7361.37,'overdue',4577.84)
,(454.78,'overdue',475.8)
,(3525.34,'overdue',2359.8)
,(1428.61,'pending',4816.46)
,(9575,'pending',2102.55)
,(926.01,'paid',2102.85)
,(2392.14,'paid',3716.04)
,(9167.35,'paid',2125.95)
,(486.02,'overdue',1652.25)
,(1571.12,'paid',2777.56)
,(857.13,'pending',1217.88)
,(8170.19,'overdue',1752.79)
,(8321.67,'paid',176.17)
,(4598.72,'paid',1964.79)
,(5385.01,'overdue',285.66)
,(5849.59,'pending',2962.33)
,(5425.12,'paid',3390.3)
,(1184.97,'paid',2824.94)
,(8197.59,'overdue',4638.44)
,(8292.9,'paid',2340.27)
,(8825.41,'overdue',4079.07)
,(2427.98,'paid',3542.76)
,(3692.61,'overdue',1237.02)
,(5032.55,'overdue',425.63)
,(6935.19,'overdue',3408.9)
,(7043.71,'paid',3442.98)
,(4146.22,'pending',3707.49)
,(1182,'paid',2013.08)
,(3050.15,'paid',1774.85)
,(274.32,'paid',4854.4)
,(4795.27,'overdue',1275.86)
,(5221.78,'overdue',1932.76)
,(5066.93,'pending',2601.85)
,(2448.43,'overdue',4168.79)
,(2452.33,'pending',4472.7)
,(8000.29,'pending',3261.7)
,(5422.84,'paid',2029.53)
,(873.42,'pending',2810.94)
,(2033.45,'overdue',4263.53)
,(3982.08,'pending',1395.43)
,(3918.19,'paid',2140.73)
,(960.08,'overdue',2148.27)
,(152.28,'pending',2184)
,(5166.45,'pending',3920.4)
,(1491.54,'pending',1528.37)
,(9655.44,'overdue',4966.92)
,(3700.48,'overdue',844.27)
,(5494.08,'paid',3443.63)
,(1680.59,'paid',1077.49)
,(7379.26,'pending',4291.75)
,(1052.03,'overdue',410.21)
,(1095.39,'pending',4686.12)
,(9959.96,'paid',612.72)
,(9482.51,'pending',4414.09)
,(8048.24,'pending',2861.83)
,(4611.18,'pending',3409.49)
,(3952.75,'pending',2327.49)
,(994.44,'pending',263.54)
,(54.71,'overdue',1620.49)
,(410.38,'paid',1711.11)
,(9176.56,'overdue',1853.46)
,(9245.52,'overdue',2481.6)
,(2204.47,'pending',3562.04)
,(1440.7,'paid',864.23)
,(5384.33,'paid',1345.99)
,(3656.22,'paid',4122.19)
,(7993.16,'overdue',1013.51)
,(5134.01,'overdue',2048.29)
,(803.92,'pending',2340.77)
,(5946.29,'pending',2916.23)
,(2748.84,'overdue',4315.79)
,(1076.54,'paid',2075.35)
,(5002.99,'overdue',195.96)
,(4337.97,'paid',4295)
,(5218.23,'paid',3026.14)
,(2099.44,'overdue',2928.81)
,(6081.3,'paid',1402.63)
,(599.71,'pending',3239.32)
,(1320.18,'paid',498.28)
,(6070.56,'overdue',1148.56)
,(6406.92,'paid',1038.92)
,(8618.66,'paid',2714.42)
,(9170.95,'pending',3488.14)
,(4979.54,'paid',2760.33)
,(6226.74,'overdue',4371.38)
,(7194.31,'paid',2256.94)
,(5361.6,'paid',4868.13)
,(1696.14,'pending',3089.87)
,(5455.73,'paid',4930.41)
,(98.3,'paid',205.42)
,(5736.19,'pending',927.81)
,(8403.86,'overdue',20.93)
,(9530.67,'pending',1400.11)
,(6470.34,'overdue',1734.64)
,(5277.17,'pending',3985.56)
,(615.56,'overdue',3431.55)
,(439.42,'paid',2833.7)
,(8229.45,'overdue',1708.92)
,(6343.29,'overdue',1274.2)
,(2374.38,'overdue',4763.64)
,(5942.65,'overdue',3932.37)
,(1629.56,'paid',169.64)
,(3547.45,'overdue',935.24)
,(7175.54,'paid',1288.64)
,(3677.69,'overdue',1412.58)
,(3735.47,'pending',837)
,(4884.25,'overdue',2836.42)
,(2894.17,'overdue',3248.51)
,(6807.97,'paid',2856.75)
,(4775.92,'pending',4886.07)
,(2096.78,'paid',1461.74)
,(4326.72,'pending',2515.34)
,(4608.94,'paid',516.31)
,(6179.94,'pending',2777.26)
,(5492.38,'paid',3767.42)
,(1212.72,'overdue',331.46)
,(6396.12,'overdue',3493.8)
,(226.37,'pending',4341.44)
,(5551.95,'paid',4947.25)
,(5268.88,'overdue',1640.41)
,(859.33,'paid',3868.42)
,(3810.27,'paid',2343.4)
,(2897.11,'overdue',1683.08)
,(4448.13,'paid',4670.73)
,(7406.3,'paid',3423.36)
,(6805.64,'pending',138.34)
,(4115.79,'pending',4808.64)
,(7556.56,'overdue',3566.39)
,(1017.21,'paid',4701.62)
,(8166.59,'pending',3613.55)
,(3099.5,'overdue',700.02)
,(4452.99,'paid',2845.78)
,(7102.33,'overdue',1475.09)
,(910.26,'paid',1750.63)
,(8948.55,'paid',4404.69)
,(774.66,'pending',622.52)
,(1384.17,'paid',3935.42)
,(7372.15,'overdue',3860.11)
,(8167.66,'pending',4755.99)
,(6040.29,'overdue',4740.99)
,(1872.34,'overdue',1322.41)
,(626.11,'paid',3425.93)
,(4782.26,'pending',3044.36)
,(4565.37,'paid',566.64)
,(7972.15,'overdue',4393.37)
,(9273.79,'overdue',858.17)
,(9593.33,'pending',102.86)
,(7928.76,'paid',1835.52)
,(4621.47,'paid',2075.67)
,(9392.04,'paid',1347.84)
,(723.19,'pending',3459.07)
,(1739.37,'overdue',61.69)
,(4817.5,'pending',1454.01)
,(5796.95,'paid',4952.91)
,(8803.76,'paid',3584.28)
,(138.34,'paid',1139.55)
,(1240.66,'paid',3345.58)
,(2149.46,'pending',3833.75)
,(8369.12,'overdue',2356.78)
,(780.79,'pending',3571.68)
,(2217.99,'pending',3435.45)
,(4221.65,'pending',2980.75)
,(732.91,'pending',3798.39)
,(8950.98,'paid',3361.54)
,(1911.61,'overdue',732.62)
,(6465.86,'paid',4136.38)
,(9873.57,'overdue',4195.74)
,(3460.18,'overdue',3871.88)
,(4137.63,'pending',4062.42)
,(2547.87,'pending',991.65)
,(4600.54,'paid',225.39)
,(1924.63,'paid',3806.61)
,(1017.84,'paid',4377.02)
,(4980.27,'overdue',2311.87)
,(1023.27,'paid',1884.22)
,(8265.1,'overdue',3692.75)
,(2300.34,'overdue',2397.62)
,(3713.89,'overdue',3144.77)
,(9422.72,'pending',2291)
,(7167.75,'paid',2768.43)
,(2641.85,'pending',3401.35)
,(4945.69,'pending',10.97)
,(6785.48,'paid',3787.55)
,(6332.42,'paid',2038.5)
,(1932.96,'pending',958.79)
,(7858.33,'pending',2837.09)
,(8609.23,'paid',606.81)
,(4469.58,'pending',4176.64)
,(4060.98,'pending',2662.82)
,(5935.47,'paid',4683.81)
,(3705.03,'overdue',3546.27)
,(3252.02,'overdue',4393.8)
,(7098.17,'paid',708.82)
,(1482.65,'overdue',2261.84)
,(2162.17,'overdue',2530.61)
,(3325.99,'pending',154.7)
,(3463.81,'overdue',3145.86)
,(5145.16,'paid',350.46)
,(2602.27,'paid',3333.23)
,(8411.41,'overdue',970.7)
,(4473.08,'overdue',2416.06)
,(2646.77,'paid',748.42)
,(7569.56,'paid',1871.64)
,(3711.24,'pending',487.63)
,(6577.42,'paid',4784.58)
,(6560.67,'paid',2249.02)
,(5607.72,'pending',411.23)
,(2656.94,'paid',3223.11)
,(3747.16,'paid',2121.13)
,(7139.01,'pending',4.37)
,(8404.08,'overdue',621.22)
,(6117.62,'pending',40.28)
,(746.94,'paid',4131.12)
,(8702.01,'pending',1670.7)
,(6697.52,'pending',3521.5)
,(6578.58,'overdue',4550.04)
,(6576.15,'overdue',428.36)
,(5797,'overdue',2725.98)
,(2189.48,'pending',2356.87)
,(1639,'overdue',4182.93)
,(7654.88,'overdue',2081.6)
,(8259.4,'overdue',4130.27)
,(8231.31,'pending',1772.44)
,(616.86,'overdue',2774.39)
,(316.94,'paid',2002.76)
,(948.37,'pending',2314.89)
,(1973.91,'pending',2705.01)
,(8041.87,'pending',3710.96)
,(8377.38,'paid',3264.58)
,(1842.91,'overdue',3682.03)
,(1508.34,'paid',2361.93)
,(6103.36,'overdue',185.92)
,(2070.58,'overdue',4827.23)
,(246.39,'pending',2616.65)
,(7922.7,'paid',2388.51)
,(9383.95,'paid',1265.78)
,(7006.09,'pending',4123.41)
,(8147.04,'paid',569.09)
,(6424.98,'paid',3039.99)
,(9486.76,'paid',3205.89)
,(8608.45,'overdue',1366.39)
,(659.64,'overdue',1788.84)
,(8135.74,'paid',1850.86)
,(7921.54,'overdue',201.74)
,(5659.79,'pending',1910.86)
,(772.99,'paid',4526.4)
,(7683.41,'pending',2685.87)
,(599.55,'overdue',2613.17)
,(6656.59,'overdue',3433.49)
,(3526.83,'overdue',4736.02)
,(1223.27,'pending',908.83)
,(5124.76,'overdue',3896.77)
,(2743.87,'pending',880.17)
,(9061.7,'paid',3074.02)
,(116.61,'pending',4880.88)
,(9622.96,'overdue',758.08)
,(1653.03,'paid',1143.09)
,(5254.05,'pending',243.82)
,(4116.15,'overdue',1564.66)
,(44.74,'paid',3477.78)
,(7348.55,'overdue',3936.66)
,(551.38,'overdue',834.35)
,(9513.36,'paid',1605.32)
,(197.96,'paid',4827.67)
,(7491.07,'overdue',4737.81);


DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor(
   DoctorID    INTEGER PRIMARY KEY IDENTITY(1,1) 
  ,Fname       VARCHAR(10) NOT NULL
  ,Lname       VARCHAR(14) NOT NULL
  ,SpecialtyID INTEGER  NOT NULL
  ,HospitalID  INTEGER  NOT NULL
);
INSERT INTO doctor(Fname,Lname,SpecialtyID,HospitalID) VALUES
 ('Emera','Londer',49,165)
,('Agneta','Moyce',8,151)
,('Braden','Castilla',48,88)
,('Dorette','Meggison',36,138)
,('Mommy','Matuszinski',18,57)
,('Neale','Robertot',7,194)
,('Johnath','Gidney',24,153)
,('Sean','Snead',49,116)
,('Mariele','Rayman',18,46)
,('Farr','Nicol',33,122)
,('Amos','Nixon',9,136)
,('Sibeal','Davern',6,140)
,('Daron','Gooday',37,64)
,('Denyse','Braywood',20,93)
,('Kris','Snufflebottom',9,177)
,('Eldin','Lawn',11,51)
,('Ailey','Fellgett',35,115)
,('Leoline','Musico',15,98)
,('Beatrisa','Perham',20,169)
,('Vail','Vennings',48,84)
,('Delano','McDell',45,149)
,('Virginia','Ladbrooke',17,37)
,('Melodee','Million',14,18)
,('Manfred','Acock',2,159)
,('Doll','Brownscombe',15,182)
,('Gabi','Maker',23,22)
,('Chester','Smallpiece',5,14)
,('Othella','Peltz',7,144)
,('Gannon','Coleford',18,120)
,('Gran','Vsanelli',22,131)
,('Alvera','Esser',7,56)
,('Leela','Goundsy',11,158)
,('Benoit','Butcher',34,60)
,('Bobbie','Rutledge',6,6)
,('Wood','Bramley',18,30)
,('Randa','Kisbee',30,179)
,('Welbie','Pruce',18,22)
,('Sidonia','Rosle',24,97)
,('Angy','Collabine',31,14)
,('Fernande','Beau',2,102)
,('Dulsea','Pistol',33,102)
,('Inesita','Roache',17,172)
,('Wynne','Zambonini',48,49)
,('Rafi','Tilberry',8,22)
,('Creighton','Yell',33,48)
,('Jarrad','Thorius',21,108)
,('Hynda','Roizin',30,56)
,('Amber','Betton',29,75)
,('Trixie','Mayow',21,36)
,('Adlai','Smithe',50,96)
,('Jayme','Brumham',13,96)
,('Tanney','Preshous',10,82)
,('Nomi','Narracott',46,148)
,('Mariele','Boldero',41,59)
,('Hillary','Muckleston',13,121)
,('Xavier','Dyson',33,77)
,('Wesley','Reece',33,154)
,('Athena','Auten',21,161)
,('Demetrius','Bartrop',41,155)
,('Ynes','Lafflin',39,159)
,('Phip','Greenier',8,59)
,('Germana','Brouwer',20,191)
,('Valina','Pantlin',6,105)
,('Agatha','Wathell',33,49)
,('Rene','Henrique',49,28)
,('Nichole','Hayman',8,4)
,('Hallsy','Matitiaho',40,93)
,('Wini','Kondratenko',22,113)
,('Sibel','Torrent',48,153)
,('Joelie','Alchin',3,146)
,('Leshia','Piggen',18,122)
,('Maryellen','Brient',37,179)
,('La verne','Trembey',43,162)
,('Galven','Jannex',30,65)
,('Bebe','Burborough',19,7)
,('Esmeralda','Hanvey',8,197)
,('Daisy','MacShirie',19,28)
,('Chad','Stedman',33,98)
,('Winnie','Husk',19,64)
,('Sasha','Rudeforth',22,181)
,('Roley','Chooter',6,200)
,('Zachariah','Trevan',42,135)
,('Curcio','Redholls',31,2)
,('Didi','Bothe',20,198)
,('Toinette','Bantham',1,32)
,('Pip','Gibbe',24,170)
,('Raina','Hulke',46,164)
,('Belva','Reitenbach',15,31)
,('Talbot','Paynes',28,25)
,('Melania','McQuarrie',37,91)
,('Odessa','Bahl',46,62)
,('Gav','McIllroy',17,142)
,('Gene','Drache',42,98)
,('Carmine','Petrelli',34,186)
,('Dallon','Keyse',13,57)
,('Brice','Baddoe',13,185)
,('Dawna','Bramley',3,90)
,('Manon','Rentoll',25,168)
,('Serena','O''Flaherty',49,115)
,('Kinnie','Swalwell',39,116)
,('Cosimo','Chinge',25,108)
,('Tallie','Ackroyd',3,66)
,('Anton','Benazet',30,96)
,('Hedwiga','Bushrod',50,187)
,('Boycie','Munford',20,119)
,('Jaynell','Copo',27,183)
,('Ilyssa','Shewen',19,15)
,('Corny','Kenforth',44,146)
,('Batholomew','Kleinbaum',11,114)
,('Jefferey','Adamovitch',33,81)
,('Augustina','Peppin',5,190)
,('Emmaline','Hesey',34,187)
,('Orly','Fitchew',26,49)
,('Wittie','McKnish',16,11)
,('Petrina','Coard',22,98)
,('Pavel','Rhys',3,136)
,('Gertrude','Buesden',37,183)
,('Joli','Portis',39,3)
,('Noelani','Speechley',6,25)
,('Etienne','Inold',43,98)
,('Rowan','Mulles',4,120)
,('Tiebout','Briston',48,175)
,('Giuditta','Brandin',49,166)
,('Jodee','Tindle',45,156)
,('Ardra','Eakle',5,165)
,('Marybelle','Audry',35,79)
,('Keenan','Quantrell',31,136)
,('Herc','Ironmonger',13,187)
,('Coriss','Keningley',45,148)
,('Shirline','Gopsall',32,55)
,('Joelynn','Yoselevitch',43,192)
,('Erina','Goodered',41,86)
,('Mikaela','Chatelet',48,200)
,('Meghan','Hallbord',7,52)
,('Jamal','Meni',36,35)
,('Casey','Simonassi',16,189)
,('Gamaliel','Easseby',22,24)
,('Clywd','Trewinnard',4,156)
,('Issie','Coode',21,149)
,('Saundra','Harborow',36,98)
,('Valery','MacCartney',23,45)
,('Cherice','Drinkwater',21,18)
,('Mohandas','Davidson',14,182)
,('Monty','Matashkin',46,141)
,('Nikolaus','Severns',38,101)
,('Eal','Hebbs',19,62)
,('Luther','Leahey',46,135)
,('Wini','Rodd',1,151)
,('Gaelan','Burlay',48,54)
,('Carin','Ricards',23,74)
,('Cordell','Daugherty',46,147)
,('Hodge','Rootham',25,55)
,('Crystie','Senten',6,15)
,('Morgen','Van der Kruys',34,183)
,('Glynn','Slaght',46,105)
,('Henrik','Kochs',26,149)
,('Oates','Philbin',32,184)
,('Biron','Malyon',6,168)
,('Ellene','Linster',29,90)
,('Gregorio','Burgher',33,177)
,('Carena','Kienlein',29,174)
,('Jodie','Millgate',34,124)
,('Heinrick','Inglis',47,143)
,('Ursula','Balcock',2,40)
,('Patrica','Van de Castele',29,7)
,('Eldridge','Sarrell',29,154)
,('Adaline','Walley',39,66)
,('Tucky','Eltun',25,182)
,('Cammi','Brettor',16,79)
,('Franchot','Prine',45,116)
,('Leelah','Leivesley',23,137)
,('Brinna','Duckering',39,172)
,('Gerhardine','Giddons',35,125)
,('Catlin','Cameron',28,3)
,('Homerus','Aslen',37,47)
,('Dina','Rawlinson',37,107)
,('Ariana','Spuner',4,97)
,('Rosaline','Ticehurst',35,29)
,('Lindi','McJerrow',25,50)
,('Shawn','Real',7,149)
,('Riki','Solway',26,129)
,('Lynnelle','Dessant',47,135)
,('Fiona','Moules',14,183)
,('Joni','Hrinchishin',38,153)
,('Olga','Penberthy',26,137)
,('Jenni','Viollet',36,39)
,('Candice','Plomer',47,149)
,('Lenci','Tomney',46,147)
,('Cortie','Ivashin',33,95)
,('Durward','Moine',17,30)
,('Raff','Cuphus',50,87)
,('Cirilo','Sumshon',8,15)
,('Berry','Gosker',32,91)
,('Timmie','McCathay',47,86)
,('Alyssa','Hitzke',17,127)
,('Cate','Reschke',17,14)
,('Garold','Yukhin',9,139)
,('Ambur','Donnachie',48,10)
,('Mackenzie','Alu',32,149)
,('Goraud','Wanklyn',17,117)
,('Cleopatra','Wines',30,77)
,('Becka','Ivashev',2,5)
,('Kym','Shakespear',5,144)
,('Livvyy','Chat',31,189)
,('Marylinda','Blinco',25,172)
,('Torr','Fearne',15,97)
,('Milicent','Treves',39,28)
,('Jori','Bricklebank',50,129)
,('Arturo','Raynton',43,125)
,('Cris','Bountiff',22,165)
,('Bree','Gaiford',14,173)
,('Charlton','Burland',24,16)
,('Gustav','Gouldbourn',8,73)
,('Janeczka','Domnin',26,69)
,('Tabatha','O''Scollain',4,7)
,('Nariko','Gorelli',3,85)
,('Adlai','Bashford',25,124)
,('Griffith','Pankhurst.',42,143)
,('Gib','Andreu',5,189)
,('Bibby','Mazin',42,31)
,('Joelle','Cloughton',15,6)
,('Rori','Adlard',24,122)
,('Hana','Linge',37,147)
,('Wolf','MacKeeg',28,115)
,('Anjela','Maciaszczyk',20,90)
,('Camella','Banghe',41,70)
,('Trumaine','Oppie',40,121)
,('Hervey','Conew',6,183)
,('Kin','Crucetti',18,161)
,('Marieann','Gilbard',48,195)
,('Tommy','Carbery',4,47)
,('Marcel','Klossek',1,50)
,('Richmound','Bellson',46,85)
,('Dudley','Wollrauch',21,41)
,('Hymie','Mussington',16,111)
,('Antonie','Lindsay',24,133)
,('Mildred','Fidge',27,157)
,('Erica','Andriolli',19,18)
,('Letizia','Pantecost',34,45)
,('Normie','Ledgister',37,152)
,('Marcellina','Dixcey',32,79)
,('Lolly','Ervine',4,101)
,('Grier','Spear',19,126)
,('Gerri','Benzing',44,30)
,('Adela','Catling',41,168)
,('Arthur','Isakov',50,79)
,('Lilla','Farrant',37,9)
,('Emmey','Cockhill',39,154)
,('Glennis','Cast',18,112)
,('Blondell','Lindenman',31,39)
,('Viole','McCrachen',26,133)
,('Roanna','William',1,62)
,('Sabine','Pearl',50,65)
,('Lorianna','Kedie',33,132)
,('Blane','Baldoni',25,132)
,('Lidia','MacLaig',46,70)
,('Randal','Klimt',3,66)
,('Conchita','Sweetnam',24,102)
,('Claybourne','Reast',17,65)
,('Jessi','Bridge',7,143)
,('Glenna','McNair',44,155)
,('Grete','Oglethorpe',27,48)
,('Mindy','Obern',14,64)
,('Fielding','Waldocke',14,92)
,('Emlyn','Bawme',49,12)
,('Jeannette','Moyes',22,180)
,('Modestia','Jeannel',2,195)
,('Aryn','Paik',41,146)
,('Margarita','Guilder',17,43)
,('Biddie','Baigent',20,194)
,('Pennie','Carayol',25,49)
,('Marta','Bavin',23,117)
,('Arnoldo','Hartridge',41,19)
,('Lyle','Dullard',31,36)
,('Dorena','Pestor',4,180)
,('Damaris','Wrathmell',35,189)
,('Neddy','Spurway',1,120)
,('Ronni','Corbin',3,147)
,('Tish','Cicetti',39,126)
,('Angelica','Coster',5,59)
,('Benito','Downham',50,130)
,('Gregory','Clouston',35,126)
,('Marisa','Veltman',17,139)
,('Moina','Jobey',48,28)
,('Dyna','Stoneley',14,153)
,('Pren','Hambribe',10,16)
,('Cherice','Dovey',1,182)
,('Madeline','Jansens',10,152)
,('Granger','Egleton',39,56)
,('Harwell','Kmiec',25,112)
,('Batholomew','Thinn',41,140)
,('Elnora','Diffley',17,37)
,('Raquela','Asson',49,87)
,('Sauveur','Geindre',40,158)
,('Corabelle','Bon',30,64)
,('Meghann','Fidal',16,3)
,('Milzie','Rowena',33,177)
,('Rozina','Hamshar',26,185)
,('Donavon','Braunton',31,49)
,('Thedric','Gostridge',22,39);


ALTER TABLE visit 
ADD CONSTRAINT fk_visit_bill FOREIGN KEY (Bill_id) REFERENCES bill(bill_id),
    CONSTRAINT fk_visit_insurance FOREIGN KEY (InsuranceID) REFERENCES insurance(Insurance_ID),
    CONSTRAINT fk_visit_patient FOREIGN KEY (PatientID) REFERENCES patient(PatientID),
    CONSTRAINT fk_visit_doctor FOREIGN KEY (DoctorID) REFERENCES doctor(DoctorID);

ALTER TABLE doctor 
ADD CONSTRAINT fk_doctor_specialty FOREIGN KEY (SpecialtyID) REFERENCES specialty(SpecialtyID),
    CONSTRAINT fk_doctor_hospital FOREIGN KEY (HospitalID) REFERENCES hospital(HospitalID);

ALTER TABLE hospital 
ADD CONSTRAINT fk_hospital_location FOREIGN KEY (LocationID) REFERENCES location(LocationID);

ALTER TABLE patient 
ADD CONSTRAINT fk_patient_location FOREIGN KEY (LocationID) REFERENCES location(LocationID);



--check constraint
--for my test constraint i will make sure that check-in date is before checkout date
ALTER TABLE visit
ADD CONSTRAINT ck_checkin_checkout
CHECK (checkout_date >= checkin_date);

--for my computed column I will be determining patient type, in-patient or out-patient
DROP FUNCTION IF EXISTS udfPatientType;

GO
CREATE FUNCTION udfPatientType(@checkin_date DATE, @checkout_date DATE)
RETURNS VARCHAR(20) AS 
BEGIN
    -- Return the patient type based on the duration of stay
    RETURN 
    CASE 
        WHEN DATEDIFF(DAY, @checkin_date, @checkout_date) > 1 THEN 'in_patient'
        ELSE 'out_patient'
    END
END
GO

--use user defined function to create computed column
ALTER TABLE visit
ADD patient_type AS 
    dbo.udfPatientType(checkin_date, checkout_date);


--for my default I am accounting for patients who want to meet with telehealth providers.
-- if no location id is inserted in, a patient will default to having an online location
ALTER TABLE patient
ADD CONSTRAINT df1_patient_location
DEFAULT 101 FOR LocationID; --location id 101 relates to an online location.

--check constraint: ensure out_of_pocket_costs is never zero.
ALTER TABLE bill
ADD CONSTRAINT chk_bill_out_of_pocket_costs CHECK (out_of_pocket_costs >= 0);

--default constraint: If a Doctor is inserted without a SpecialtyID, they will default to General Medicine (SpecialtyID = 1).
ALTER TABLE doctor
ADD CONSTRAINT df_doctor_specialty DEFAULT 1 FOR SpecialtyID;

--computed column: Get the total number of visits a patient has had.
DROP FUNCTION IF EXISTS udfTotalVisits;
GO

CREATE FUNCTION udfTotalVisits(@patient_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @visit_count INT;

    SELECT @visit_count = COUNT(*)
    FROM visit
    WHERE PatientID = @patient_id;

    RETURN @visit_count;
END;
GO

-- check constraint: ensure every bill has a payment_status to make sure the bills are properly kept track of
ALTER TABLE bill
ADD CONSTRAINT chk_bill_payment_status
CHECK (payment_status != NULL)

-- default constraint: If a patient is inserted with symptom descriptions, they will default to "generally unwell"
ALTER TABLE patient
ADD CONSTRAINT df_patient_symptoms
DEFAULT 'generally unwell' FOR symptoms


-- computed column: latest_visit to see when the patient was last at the hospital
DROP FUNCTION IF EXISTS udfLatestVisit;

GO 
CREATE FUNCTION udfLatestVisit(@patient_id INT)
  RETURNS DATE 
  AS 
  BEGIN 
  RETURN(
    SELECT DISTINCT MAX(checkout_date)
    FROM visit 
    WHERE PatientID = @patient_id
  )
  END 
GO 

ALTER TABLE patient 
ADD latest_visit AS dbo.udfLatestVisit(PatientID)

----------------------------------------- PROJECT DELIVERABLE 4: Data Manipulation and Deriving Information -------------------------------------------

/* 
Complex Query 1: Query to compute the patients with the most visits
  Purpose: I am curious about which patients are perhaps more prone to illness/injury. After finding the patients that visited the hospital the most,
  I would also like to explore their symptoms. In the real world, this would be important for potentially diagnosing patients since we would be able
  to find if they have repeating symptoms.
*/
USE healthcare_db
GO

DROP TABLE IF EXISTS #num_patient_visits;
WITH cte_patient_visit AS (
  SELECT p.PatientID, COUNT(VistID) AS num_visits
  FROM patient AS p 
    JOIN visit AS v ON p.PatientID = v.PatientID
  GROUP BY p.PatientID
)
SELECT pv.PatientID, first_name, last_name, num_visits
INTO #num_patient_visits
FROM cte_patient_visit AS pv 
  JOIN patient AS p ON pv.PatientID = p.PatientID
ORDER BY num_visits DESC;

SELECT TOP 10 * FROM #num_patient_visits ORDER BY num_visits DESC;

/*
Summary of results and implications 
The patients with the most number of visits is:
  - Odey Petrov
  - Saidee Eadmeads
  - April Driver
All three of them have 5 recorded visits, which could mean that they are more prone to illness\injury or perhaps they have a chronic
illness that requires constant checkups. 

I would potentially recommend more careful consideration with these patients, since their health problems seem to be reoccuring. As stated before, this
could be casued by underlying issues, and with many of these more problematic illnesses, earlier diagnosis and treatment always correlates with
higher recovery rate.
*/

-- ** BONUS: extra exploration: symptoms of patients with 5 visits (most) **
WITH cte_top_patients AS (
  SELECT VistID, pv.PatientID, pv.first_name, pv.last_name
  FROM #num_patient_visits AS pv
    JOIN visit AS v ON pv.PatientID = v.PatientID
  WHERE num_visits = 5
)
SELECT tp.first_name, tp.last_name, symptoms
FROM cte_top_patients AS tp 
  JOIN patient AS p ON tp.PatientID = p.PatientID
ORDER BY tp.first_name;

/*
Summary of results and implications
From the results, I can see that these patients are all being checked into the hospital for the same symptoms. By that, I mean April Driver's symptoms
are wheezing for every visit, Odey Petrov's symptoms are all headaches, and etc. These results can be explained because we had to simulate our data,
and we did not simulate different symptoms for every visit, but rather each patient. 

In the real world though, this result is very possible. For example, constant wheezing symptoms could be due to undiagnosed pneumonia, or some other
lung disease. Constant symptoms like this help doctors narrow down the potential illnesses a patient might have.
*/

/*
Query to find the ranked hospitals by the most patients (TOP Hospitals)
  Purpose: Finding the hospital with the most patients versus the least patients is extremely important in order to properly allocate resources.
  Especially in countries that may not have as developed healthcare systems, we would want to make sure hospitals with more people/patients
  have enough resources in order to adequately care for them all.
*/
GO
CREATE OR ALTER PROCEDURE hospital_by_rank(@rank INT)
AS BEGIN 
  WITH cte_hospital_patients AS (
    SELECT HospitalName, COUNT(DISTINCT PatientID) AS num_patients
    FROM hospital AS h 
      JOIN dbo.location AS l ON h.LocationID = l.LocationID
      JOIN patient AS p ON l.LocationID = p.LocationID
    GROUP BY HospitalName
  ),
  cte_hospital_ranks AS (
    SELECT HospitalName, num_patients, DENSE_RANK() OVER(ORDER BY num_patients DESC) AS hosp_rank
    FROM cte_hospital_patients
  )
  SELECT HospitalName, num_patients, hosp_rank
  FROM cte_hospital_ranks 
  WHERE hosp_rank = @rank
END


EXEC hospital_by_rank 1;

/*
Summary of results and implications
From our results, we can see that the Hearthcrest General Hospital and Ridgepine General Hospital are the two hospitals with the most patients
in our database, with both having 8 patients. We can also find the hospitals with the second most patients, and so forth, by changing the parameter
we give the stored procedure.

In the real world, this type of function allows us to narrow down which hospitals need how many resources, so organizations can properly allocate 
resources. Obviously, hospitals with more patients will need more resources than hospitals with less resources, so being able to find them quickly
and easily will allow for better care.
*/


/*
For my exploration, I want to analayze if any trends appear within our billing and insurance tables.

Query 1: What insurance has the highest average out of pocket costs? Is there a correlation to customers?
Purpose: The purpose of this is to assess wether there is an apparent trend with the insurances on which is making the most customers pay out of pocket
costs for their medical visits. 
*/

GO
USE healthcare_db
GO

DROP TABLE IF EXISTS #temp_avg_oop
SELECT Insurance_Name, AVG(out_of_pocket_costs) AS avg_oop_cost
INTO #temp_avg_oop
FROM bill 
JOIN visit ON visit.Bill_id = bill.bill_id
JOIN insurance ON insurance.Insurance_ID = visit.InsuranceID
GROUP BY Insurance_Name;


--curious and wanting to explore if there is a different number of individuals 
DROP TABLE IF EXISTS #temp_num_customers
SELECT insurance.Insurance_Name, COUNT(DISTINCT visit.PatientID) AS num_patient
INTO #temp_num_customers
FROM patient 
JOIN visit ON visit.PatientID = patient.PatientID
JOIN insurance ON visit.InsuranceID = insurance.Insurance_ID
GROUP BY insurance.Insurance_Name;


SELECT nc.Insurance_Name, avg_oop_cost, num_patient
FROM #temp_avg_oop AS toop
JOIN #temp_num_customers AS nc ON nc.Insurance_Name = toop.Insurance_Name
ORDER BY avg_oop_cost DESC;

/*
Summary:
From our output, we can see that Kaiser, Cigna, and Medicare are the insurances with the top amount of average out of pocket costs. Because this
is generated data the number of patients isn't quite accurate. The average number of customers for the top be is 44, and the bottom 3 is 46. So slightly
more individuals use the insurance with lower average out of pocket costs. This makes sense in the real world scheme where companies with more
clients will have better packages and potentially lower costs at each of the hospitals the insurance have in their network. Typically more
customers means lower costs. 
For managerial purposes, we can use offer discounts to the insurance companies who have the most out of pocket expenses in order to 
help patients seaching treatment. 
*/



/*
What types of symptoms from patients incure the most medical costs?
Purpose: Additional I'm doing an exploration of if a specific medical conditions has more medical costs associated with it.
It is important to understand what conditions are incurring the most resources/costs to better support those departments
and allocated more money there. 
*/


DROP TABLE IF EXISTS #avg_cost_per_symptom
SELECT symptoms, COUNT(DISTINCT visit.PatientID) AS num_patient, SUM(out_of_pocket_costs) AS sum_cost
INTO #avg_cost_per_symptom
FROM patient
JOIN visit ON patient.PatientID = visit.PatientID
JOIN bill ON bill.bill_id = visit.Bill_id
GROUP BY symptoms;

SELECT TOP 10 * FROM #avg_cost_per_symptom;

GO
WITH cte_ranked_symptoms 
AS (
SELECT symptoms AS symptom_name, sum_cost / num_patient AS avg_cost,
RANK() OVER (ORDER BY sum_cost / num_patient DESC) AS rank_num
FROM #avg_cost_per_symptom
)
SELECT symptom_name, avg_cost, rank_num
FROM cte_ranked_symptoms
WHERE rank_num <= 3
ORDER BY rank_num;

/*
Summary: coughing, bloating, and anxiet have the most out of pocket expenses for patients. I imagine coughing is the highest because
potentially that would one of the most common symptoms and more individals going in for it, more total costs.
Managerial: We can allocate more resources to the specialized equipment/rooms/doctors that help most with these specific high cost symptoms.
*/


/*
Which doctor specialty occurs the most incurring cost?
This is kinda like the above query but now instead of symptoms we take it from the doctor/hospital route which can give us a little 
more managerial insight.
Purpose: It is important to understand what departments are incurring the most resources/costs to better support those departments
and allocated more money there. 
*/
USE healthcare_db
GO

DROP TABLE IF EXISTS #avg_cost_per_specialty
SELECT SpecialtyName, COUNT(DISTINCT visit.VistID) AS num_visits, 
(SUM(amount_covered)+SUM(out_of_pocket_costs)) AS sum_cost
INTO #avg_cost_per_specialty
FROM specialty AS sp 
JOIN doctor ON doctor.SpecialtyID = sp.SpecialtyID
JOIN visit ON visit.DoctorID = doctor.DoctorID
JOIN bill ON bill.bill_id = visit.Bill_id
GROUP BY SpecialtyName;

SELECT TOP 10 * FROM #avg_cost_per_specialty

GO
WITH cte_ranked_specialty 
AS (
SELECT SpecialtyName, sum_cost / num_visits AS avg_cost,
RANK() OVER (ORDER BY sum_cost / num_visits DESC) AS rank_num
FROM #avg_cost_per_specialty
)
SELECT SpecialtyName, CAST(avg_cost AS NUMERIC(10,2)) AS avg_cost, rank_num
FROM cte_ranked_specialty
WHERE rank_num <= 3
ORDER BY rank_num;

/*
Summary: From our output, it is clear that pediatric endrocrinology, endocrinology, and hematology have the highest total amount billed
associated with their visits. I was not entirely sure what these are but endocrinology which appear 2 times in the top 3 list is the study of
hormones. So perhaps it involves specialized lab techniques or tests that are more expensive than other specialties.
Managerial: From a management point of view, with this list, we can maybe audit these departments first as the most cost comes from them,
or perhaps we can allocate more of the budget to these departments. 
*/

/*
Retrieving a customers billing information.
Purpose: It is important for insurance, hospitals, and patients themselves to be able to access unpaid bills. 
It might also be important to see how much was billed and how much was covered by the insurance. 
*/

GO
CREATE OR ALTER PROCEDURE customer_billing(@patient_id INT)
AS
BEGIN
SELECT first_name, last_name, 
SUM(out_of_pocket_costs) AS amount_due,
SUM(amount_covered)+SUM(out_of_pocket_costs) AS total_billed,
SUM(amount_covered) AS total_covered_by_insurance
FROM patient
JOIN visit ON visit.PatientID = patient.PatientID
JOIN bill ON bill.bill_id = visit.Bill_id
WHERE patient.PatientID = @patient_id
AND  bill.payment_status != 'paid'
GROUP BY first_name, last_name
END;


EXEC customer_billing 10;

/*
Summary: When looking at the case of Odey Petrov we can see that his total amount due is $9,889.99 but the total amount billed was $33331.46 and 
insurance covered $23441.47.
This can be helpful as a manager because we can reach out to individuals who still need to pay their bills and can email/contact them to pay
outstanding/pending bills. Paid bills were not included because as a manager, as long as a bill is paid it won't contribute to outstanding bills.
Recommendation: compile a list of patients with outstandng/pending accounts and utilize the above procedure to find the amount due for each patient
for contact compilation. 
*/


/* 
I want to analyze which symptoms are associated with the highest out-of-pocket  
costs for patients. By ranking symptoms based on their total medical expenses,  
I cwould know which health issues place the greatest financial burden on patients.  

I think this can help healthcare providers and policymakers make informed decisions  
about financial assistance programs, insurance policies, or resource allocation.  
In the real world, identifying costly symptoms could lead to better preventive care  
and early intervention strategies, which can significantly reduce patient expenses.
*/

GO 
CREATE OR ALTER PROCEDURE expensive_symptoms(@rank INT)
AS 
BEGIN
    WITH cte_symptom_costs AS (
        SELECT 
            p.symptoms,
            SUM(b.out_of_pocket_costs) AS total_cost
        FROM patient p
        JOIN visit v ON p.PatientID = v.PatientID
        JOIN bill b ON v.Bill_ID = b.bill_id
        GROUP BY p.symptoms
    ),
    cte_symptom_ranks AS (
        SELECT 
            symptoms,
            total_cost,
            DENSE_RANK() OVER (ORDER BY total_cost DESC) AS cost_rank
        FROM cte_symptom_costs
    )

    SELECT symptoms, total_cost, cost_rank
    FROM cte_symptom_ranks
    WHERE cost_rank = @rank;
END;

GO
EXEC expensive_symptoms 1;


/*
I am interested in finding out which symptoms are the most frequently diagnosed  
and how often patients return for these issues. By doing this, I would know patterns  
that may indicate chronic conditions or recurring health problems.  

Understanding this trend is valuable in the real world, as it allows healthcare  
facilities to allocate resources more effectively and prioritize treatment for  
the most prevalent medical conditions. 
*/
DROP TABLE IF EXISTS #common_symptoms;
CREATE TABLE #common_symptoms (
    symptoms VARCHAR(255),
    num_patients INT,
    total_visits INT,
    avg_visits_per_patient DECIMAL(10,2)
);

WITH symptom_counts AS (
    SELECT 
        p.symptoms,
        COUNT(DISTINCT p.PatientID) AS num_patients,
        COUNT(v.VistID) AS total_visits
    FROM patient p
    JOIN visit v ON p.PatientID = v.PatientID
    GROUP BY p.symptoms
)
INSERT INTO #common_symptoms
SELECT 
    symptoms, 
    num_patients, 
    total_visits,
    CAST(total_visits AS DECIMAL) / NULLIF(num_patients, 0) AS avg_visits_per_patient
FROM symptom_counts
ORDER BY total_visits DESC;

SELECT * FROM #common_symptoms;

/* 
I am curious about which patients have the highest total out-of-pocket  
medical expenses. By ranking patients based on their spending,  
I can analyze financial disparities in healthcare and determine  
which individuals may be struggling with medical costs.  

This information is important for identifying patients 
who may need financial assistance or alternative payment plans.  
*/
GO
CREATE OR ALTER PROCEDURE highest_paying_patients(@rank INT)
AS 
BEGIN
    WITH cte_patient_expenses AS (
        SELECT 
            v.PatientID,
            p.first_name,
            p.last_name,
            SUM(b.out_of_pocket_costs) AS total_out_of_pocket
        FROM visit v
        JOIN bill b ON v.Bill_ID = b.bill_id
        JOIN patient p ON v.PatientID = p.PatientID
        GROUP BY v.PatientID, p.first_name, p.last_name
    ),

    cte_patient_ranks AS (
        SELECT 
            PatientID,
            first_name,
            last_name,
            total_out_of_pocket,
            DENSE_RANK() OVER (ORDER BY total_out_of_pocket DESC) AS spend_rank
        FROM cte_patient_expenses
    )

    SELECT PatientID, first_name, last_name, total_out_of_pocket, spend_rank
    FROM cte_patient_ranks
    WHERE spend_rank = @rank
END;

EXEC highest_paying_patients 1;  
EXEC highest_paying_patients 2;