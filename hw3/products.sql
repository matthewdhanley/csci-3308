
DROP TABLE    nwProducts   ;
CREATE TABLE  nwProducts  
   (
   ProductID        int           NOT NULL ,
   ProductName      varchar(40)   NOT NULL ,
   SupplierID       int           NULL ,
   CategoryID       int           NULL ,
   QuantityPerUnit  varchar(20)   NULL ,
   UnitPrice        decimal(9,2)  DEFAULT '0',
   UnitsInStock     smallint      DEFAULT '0',
   UnitsOnOrder     smallint      DEFAULT '0',
   ReorderLevel     smallint      DEFAULT '0',
   Discontinued     char(1)       DEFAULT '0',

   PRIMARY KEY (ProductID)  
   ) 
   CHARACTER SET utf8 COLLATE utf8_general_ci;


INSERT INTO  nwProducts  VALUES (1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.00, 39, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00, 17, 40, 25, '0');
INSERT INTO  nwProducts  VALUES (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00, 13, 70, 25, '0');
INSERT INTO  nwProducts  VALUES (4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.00, 31, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.00, 22, 30, 30, '0');
INSERT INTO  nwProducts  VALUES (12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.00, 86, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (13, 'Konbu', 6, 8, '2 kg box', 6.00, 24, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.50, 39, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.00, 0, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.50, 42, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.20, 25, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81.00, 40, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.00, 3, 40, 5, '0');
INSERT INTO  nwProducts  VALUES (22, 'Gustaf''s Kn�ckebr�d', 9, 5, '24 - 500 g pkgs.', 21.00, 104, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (23, 'Tunnbr�d', 9, 5, '12 - 250 g pkgs.', 9.00, 61, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (24, 'Guaran� Fant�stica', 10, 1, '12 - 355 ml cans', 4.50, 20, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (25, 'NuNuCa Nu�-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.00, 76, 0, 30, '0');
INSERT INTO  nwProducts  VALUES (26, 'Gumb�r Gummib�rchen', 11, 3, '100 - 250 g bags', 31.23, 15, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.90, 49, 0, 30, '0');
INSERT INTO  nwProducts  VALUES (28, 'R�ssle Sauerkraut', 12, 7, '25 - 825 g cans', 45.60, 26, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (29, 'Th�ringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.50, 0, 70, 20, '0');
INSERT INTO  nwProducts  VALUES (32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.00, 9, 40, 25, '0');
INSERT INTO  nwProducts  VALUES (33, 'Geitost', 15, 4, '500 g', 2.50, 112, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.00, 111, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.00, 20, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19.00, 112, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.00, 11, 50, 25, '0');
INSERT INTO  nwProducts  VALUES (38, 'C�te de Blaye', 18, 1, '12 - 75 cl bottles', 263.50, 17, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.00, 69, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.40, 123, 0, 30, '0');
INSERT INTO  nwProducts  VALUES (41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65, 85, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.00, 26, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.00, 17, 10, 25, '0');
INSERT INTO  nwProducts  VALUES (44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45, 27, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (45, 'Rogede sild', 21, 8, '1k pkg.', 9.50, 5, 70, 15, '0');
INSERT INTO  nwProducts  VALUES (46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.00, 95, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.50, 36, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (48, 'Chocolade', 22, 3, '10 pkgs.', 12.75, 15, 70, 25, '0');
INSERT INTO  nwProducts  VALUES (49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.00, 10, 60, 15, '0');
INSERT INTO  nwProducts  VALUES (50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25, 65, 0, 30, '0');
INSERT INTO  nwProducts  VALUES (51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.00, 20, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.00, 38, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (53, 'Perth Pasties', 24, 6, '48 pieces', 32.80, 0, 0, 0, '1');
INSERT INTO  nwProducts  VALUES (54, 'Tourti�re', 25, 6, '16 pies', 7.45, 21, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (55, 'P�t� chinois', 25, 6, '24 boxes x 2 pies', 24.00, 115, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.00, 21, 10, 30, '0');
INSERT INTO  nwProducts  VALUES (57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.50, 36, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25, 62, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.00, 79, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.00, 19, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (61, 'Sirop d''�rable', 29, 2, '24 - 500 ml bottles', 28.50, 113, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (62, 'Tarte au sucre', 29, 3, '48 pies', 49.30, 17, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.90, 24, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (64, 'Wimmers gute Semmelkn�del', 12, 5, '20 bags x 4 pieces', 33.25, 22, 80, 30, '0');
INSERT INTO  nwProducts  VALUES (65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05, 76, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.00, 4, 100, 20, '0');
INSERT INTO  nwProducts  VALUES (67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.00, 52, 0, 10, '0');
INSERT INTO  nwProducts  VALUES (68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.50, 6, 10, 15, '0');
INSERT INTO  nwProducts  VALUES (69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.00, 26, 0, 15, '0');
INSERT INTO  nwProducts  VALUES (70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.00, 15, 10, 30, '0');
INSERT INTO  nwProducts  VALUES (71, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.50, 26, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.80, 14, 0, 0, '0');
INSERT INTO  nwProducts  VALUES (73, 'R�d Kaviar', 17, 8, '24 - 150 g jars', 15.00, 101, 0, 5, '0');
INSERT INTO  nwProducts  VALUES (74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.00, 4, 20, 5, '0');
INSERT INTO  nwProducts  VALUES (75, 'Rh�nbr�u Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75, 125, 0, 25, '0');
INSERT INTO  nwProducts  VALUES (76, 'Lakkalik��ri', 23, 1, '500 ml', 18.00, 57, 0, 20, '0');
INSERT INTO  nwProducts  VALUES (77, 'Original Frankfurter gr�ne So�e', 12, 2, '12 boxes', 13.00, 32, 0, 15, '0');
