INSERT INTO customer VALUES 
 (123456789, 'Joejoe', 'female', 7635682565, '77 Bellevue Dr., Lakeland, FL 33801'),
 (234567890, 'Maria', 'female', 216764530, '5 Temple Drive, Winter Springs, FL 32708'),
 (345678901, 'Alex', 'male', 7632783496, '143 Grandrose Rd., Yorktown Heights, NY 10598'),
 (456789012, 'Maddy', 'female', 6268268144, '9460 Grant Street, Wooster, OH 44691'),
 (567890123, 'Steve', 'male', 6077236992, '7123 Chestnut Dr., Mahwah, NJ 07430');

INSERT INTO doctor VALUES 
 (23476, 'Ellie Peterson', 'Cleveland Clinic'),
 (47382, 'John Moss', 'UCLA Medical Center'),
 (83928, 'Lea Young', 'Mayo Clinic'),
 (33872, 'Gregory House', 'PPTH');

insert into pharmacy (P_Id, P_Name, P_Address) values 
(9, 'Exactech, Inc.','71 Corben Junction'),
(74375, 'eGain Corporation', '18 Mccormick Avenue'),
(2527, 'Vertex Energy, Inc', '1 Luster Crossing'),
(80, 'Helios and Matheson Analytics Inc', '80747 La Follette Parkway'),
(89, 'Nuveen Senior Income Fund', '6712 Steensland Court');

insert into employee (E_SSN, E_Name, P_Id) values 
(528729013, 'Skipp Kealey',9),
(557656347, 'Paolina Bergeon',9),
(301306754, 'Redd Meuse',74375),
(210484203,'Willow Godsafe',74375),
(844985549,'Gweneth Mayhow',2527),
(420770502,'Ludvig Peebles',2527),
(890147756,'Jany Ruddlesden',80),
(322920354,'Cornelius Mooreed',80),
(543609585,'Ruthy Rodger',89),
(171646920,'Zelma Critchell',89);

insert into manufacturer (F_ID, F_Name, F_phone_num,F_address) values 
(1,'Topco Associates LLC',2116965923,'293 Ramsey Plaza'),
(2,'Rebel Distributors Corp',6425808247,'810 Reinke Pass'),
(3,'TELEVISA CONSUMER PRODUCTS USA',2335024122,'45437 Oriole Plaza'),
(4,'Harrison Specialty Co., Inc.',4064212145,'0 Carey Trail'),
(5,'PBM Pharmaceuticals Inc.',9495372006,'604 Rigney Park');

INSERT INTO medicine VALUES 
 (10001, 'Luminal', 6, '01/03/2024', null, 9, 1, null, null),
 (10002, 'Luminal', 6, '11/11/2023', null, 2527, 3, null, null),
 (10003, 'Luminal', 6, '11/11/2023', 528729013, 9, 3, 123456789, '11/01/2020'),
 (10004, 'Luminal', 6, '12/11/2023', 557656347, 9, 3, 234567890, '11/09/2020'),
 (10005, 'Luminal', 6, '12/01/2023', 557656347, 9, 3, 234567890, '11/09/2020'),
 (10006, 'Valium', 8, '02/01/2025', 301306754, 74375, 5, 345678901, '01/05/2018'),
 (10007, 'Valium', 8, '02/01/2025', 210484203, 74375, 4, 345678901, '02/04/2018'),
 (10008, 'Valium', 8, '03/02/2024', 210484203, 74375, 5, 456789012, '04/01/2019'),
 (10009, 'Vicodin', 4, '06/01/2022', 844985549, 2527, 2, 345678901, '11/09/2019'), 
 (10010, 'Vicodin', 4, '08/01/2022', 420770502, 2527, 3, 345678901, '11/09/2019'), 
 (10011, 'Vicodin', 4, '08/01/2022', null, 80, 3, null, null), 
 (10012, 'Demerol', 9, '08/12/2023', null, 80, 3, null, null), 
 (10013, 'Demerol', 9, '08/12/2023', 420770502, 2527, 3, 456789012, '04/01/2019'),
 (10014, 'Demerol', 9, '08/13/2023', 844985549, 2527, 4, 567890123, '04/11/2019'), 
 (10015, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
 (10016, 'Ritalin', 7, '07/13/2026', null, 89, 2, null, null), 
 (10017, 'Ritalin', 7, '07/14/2025', 557656347, 89, 2, 123456789, '11/01/2020'),
 (10018, 'Ritalin', 7, '07/14/2025', 420770502, 2527, 4, 123456789, '11/02/2020'), 
 (10019, 'Xanax', 3, '07/16/2025', 322920354, 80, 1, 234567890, '11/09/2020'), 
 (10020, 'Xanax', 3, '07/16/2025', null, 80, 2, null, null);
 
INSERT INTO prescription_medicine VALUES
 (10001, 23476), 
 (10002, 47382),
 (10003, 23476),
 (10004, 23476),
 (10005, 33872), 
 (10006, 47382), 
 (10007, 83928), 
 (10008, 33872), 
 (10009, 33872), 
 (10010, 33872), 
 (10011, 83928), 
 (10012, 47382), 
 (10013, 47382), 
 (10014, 83928), 
 (10015, 83928), 
 (10016, 83928), 
 (10017, 33872), 
 (10018, 33872), 
 (10019, 23476), 
 (10020, 47382);

INSERT INTO medicine VALUES
 (1,'VECURONIUM BROMIDE',59,'08/19/2023',528729013,9,1,123456789,'09/17/2021'),
 (2,'Ultravist',40,'02/23/2023',528729013,9,1,123456789,'11/24/2021'),
 (3,'BUPROPION HYDROCHLORIDE',63,'09/20/2023',557656347,9,1,123456789,'01/11/2021'),
 (4,'Hydrocortisone',84,'04/09/2023',557656347,9,1,123456789,'08/28/2021'),
 (5,'CVS',87,'11/13/2023',301306754,74375,2,234567890,'05/13/2021'),
 (6,'Aricept',59,'09/25/2023',301306754,74375,2,234567890,'10/10/2021'),
 (7,'Naproxen',21,'12/17/2023',210484203,74375,2,234567890,'02/08/2021'),
 (8,'Quinapril',54,'01/29/2023',210484203,74375,2,234567890,'09/25/2021'),
 (9,'KONSYL Orange Flavor Psyllium Fiber - Original Texture',56,'11/28/2023',844985549,2527,3,345678901,'03/02/2021'),
 (10,'ESIKA 3-IN-1 PRO MAKE UP FOUNDATION SPF 20 BASE DE MAQUILLAJE PARA ROSTRO 3-EN-1 PRO FPS 20',69,'10/26/2023',844985549,2527,3,345678901,'04/07/2021'),
 (11,'OMNIPAQUE',23,'03/08/2023',420770502,2527,3,345678901,'09/23/2021'),
 (12,'TremorSoothe',79,'08/19/2023',420770502,2527,3,345678901,'05/23/2021'),
 (13,'HYZAAR',83,'07/25/2023',890147756,80,4,456789012,'01/26/2021'),
 (14,'Sodium Sulfacetamide',64,'09/12/2023',890147756,80,4,456789012,'07/18/2021'),
 (15,'Topco',13,'05/10/2023',322920354,80,4,456789012,'02/18/2021'),
 (16,'good sense cold head congestion',86,'04/03/2023',322920354,80,4,456789012,'02/16/2021'),
 (17,'Prednisone',20,'02/08/2023',543609585,89,5,567890123,'11/22/2021'),
 (18,'Diclofenac Sodium',83,'03/19/2023',543609585,89,5,567890123,'03/04/2021'),
 (19,'Clonidine Hydrochloride',20,'11/02/2023',171646920,89,5,567890123,'09/21/2021'),
 (20,'Olanzapine',91,'07/19/2023',171646920,89,5,567890123,'01/31/2021');

 INSERT INTO medicine VALUES 
  (10021, 'Luminal', 6, '01/03/2024', null, 9, 1, null, null),
  (10022, 'Luminal', 6, '11/11/2023', null, 9, 3, null, null),
  (10023, 'Luminal', 6, '01/03/2024', null, 9, 1, null, null),
  (10024, 'Luminal', 6, '11/11/2023', null, 9, 3, null, null),
  (10025, 'Valium', 8, '02/01/2025', 301306754, 80, 5, null, null),
  (10026, 'Valium', 8, '02/01/2025', 301306754, 80, 5, null, null),
  (10027, 'Demerol', 9, '08/12/2023', 420770502, 80, 3, null, null),
  (10028, 'Demerol', 9, '08/13/2023', 844985549, 80, 4, null, null), 
  (10029, 'Ritalin', 7, '07/13/2026', null, 89, 2, null, null), 
  (10030, 'Ritalin', 7, '07/14/2025', 557656347, 89, 2, null, null),
  (10031, 'Ritalin', 7, '07/14/2025', 557656347, 89, 2, null, null),
  (10032, 'Vicodin', 4, '08/01/2022', null, 80, 3, null, null), 
  (10033, 'Vicodin', 4, '08/01/2022', null, 80, 3, null, null), 
  (10034, 'Xanax', 3, '07/16/2025', null, 80, 2, null, null);
 
 
 INSERT INTO prescription_medicine VALUES
  (10021, 47382),
  (10022, 47382),
  (10023, 47382),
  (10024, 47382),
  (10025, 23476),
  (10026, 23476),
  (10027, 23476),
  (10028, 23476),
  (10029, 23476),
  (10030, 23476),
  (10031, 23476),
  (10032, 23476),
  (10033, 23476), 
  (10034, 23476); 

INSERT INTO medicine VALUES 
(10035, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10036, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10037, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10038, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10039, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10040, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10041, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10042, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10043, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10044, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null),
(10045, 'Ritalin', 7, '07/13/2026', null, 74375, 2, null, null);

INSERT INTO prescription_medicine VALUES
  (10035, 23476),
  (10036, 23476),
  (10037, 23476),
  (10038, 23476),
  (10039, 23476),
  (10040, 23476),
  (10041, 23476),
  (10042, 23476),
  (10043, 23476), 
  (10044, 23476),
  (10045, 23476);
  
INSERT INTO medicine VALUES 
  (21,'Olanzapine',91,'07/19/2023',171646920,89,5,null,'01/31/2021'),
  (22,'Olanzapine',91,'07/19/2023',171646920,89,5,null,'01/31/2021'),
  (23,'CVS',87,'11/13/2023',301306754,74375,2,null,'05/13/2021'),
  (24,'CVS',87,'11/13/2023',301306754,74375,2,null,'05/13/2021'),
  (25,'Clonidine Hydrochloride',20,'11/02/2023',171646920,89,5,null,'09/21/2021'),
  (26,'Clonidine Hydrochloride',20,'11/02/2023',171646920,89,5,null,'09/21/2021');