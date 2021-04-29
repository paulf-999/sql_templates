/*
--------------------------------------------------------------------
© 2017 sqlservertutorial.net All Rights Reserved
--------------------------------------------------------------------
Name   : BikeStores
Link   : http://www.sqlservertutorial.net/load-sample-database/
Version: 1.0
--------------------------------------------------------------------
*/

use BikeStores;

SET IDENTITY_INSERT production.brands ON;  

INSERT INTO production.brands(brand_id,brand_name) VALUES(1,'Electra')
INSERT INTO production.brands(brand_id,brand_name) VALUES(2,'Haro')
INSERT INTO production.brands(brand_id,brand_name) VALUES(3,'Heller')
INSERT INTO production.brands(brand_id,brand_name) VALUES(4,'Pure Cycles')
INSERT INTO production.brands(brand_id,brand_name) VALUES(5,'Ritchey')
INSERT INTO production.brands(brand_id,brand_name) VALUES(6,'Strider')
INSERT INTO production.brands(brand_id,brand_name) VALUES(7,'Sun Bicycles')
INSERT INTO production.brands(brand_id,brand_name) VALUES(8,'Surly')
INSERT INTO production.brands(brand_id,brand_name) VALUES(9,'Trek')

SET IDENTITY_INSERT production.brands OFF;  

SET IDENTITY_INSERT production.categories ON;  
INSERT INTO production.categories(category_id,category_name) VALUES(1,'Children Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(2,'Comfort Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(3,'Cruisers Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(4,'Cyclocross Bicycles')
INSERT INTO production.categories(category_id,category_name) VALUES(5,'Electric Bikes')
INSERT INTO production.categories(category_id,category_name) VALUES(6,'Mountain Bikes')
INSERT INTO production.categories(category_id,category_name) VALUES(7,'Road Bikes')

SET IDENTITY_INSERT production.categories OFF;  

SET IDENTITY_INSERT production.products ON;
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Trek 820 - 2016',9,6,2016,379.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(2,'Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(3,'Surly Wednesday Frameset - 2016',8,6,2016,999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(4,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(5,'Heller Shagamaw Frame - 2016',3,6,2016,1320.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(6,'Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(7,'Trek Slash 8 27.5 - 2016',9,6,2016,3999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(8,'Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(9,'Trek Conduit+ - 2016',9,5,2016,2999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(10,'Surly Straggler - 2016',8,4,2016,1549)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(11,'Surly Straggler 650b - 2016',8,4,2016,1680.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(12,'Electra Townie Original 21D - 2016',1,3,2016,549.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(13,'Electra Cruiser 1 (24-Inch) - 2016',1,3,2016,269.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(14,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,3,2016,269.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(15,'Electra Moto 1 - 2016',1,3,2016,529.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(16,'Electra Townie Original 7D EQ - 2016',1,3,2016,599.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(17,'Pure Cycles Vine 8-Speed - 2016',4,3,2016,429)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(18,'Pure Cycles Western 3-Speed - Women''s - 2015/2016',4,3,2016,449)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(19,'Pure Cycles William 3-Speed - 2016',4,3,2016,449)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(20,'Electra Townie Original 7D EQ - Women''s - 2016',1,3,2016,599.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(21,'Electra Cruiser 1 (24-Inch) - 2016',1,1,2016,269.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(22,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,1,2016,269.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(23,'Electra Girl''s Hawaii 1 (20-inch) - 2015/2016',1,1,2016,299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(24,'Electra Townie Original 21D - 2016',1,2,2016,549.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(25,'Electra Townie Original 7D - 2015/2016',1,2,2016,499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(26,'Electra Townie Original 7D EQ - 2016',1,2,2016,599.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(27,'Surly Big Dummy Frameset - 2017',8,6,2017,999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(28,'Surly Karate Monkey 27.5+ Frameset - 2017',8,6,2017,2499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(29,'Trek X-Caliber 8 - 2017',9,6,2017,999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(30,'Surly Ice Cream Truck Frameset - 2017',8,6,2017,999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(31,'Surly Wednesday - 2017',8,6,2017,1632.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(32,'Trek Farley Alloy Frameset - 2017',9,6,2017,469.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(33,'Surly Wednesday Frameset - 2017',8,6,2017,469.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(34,'Trek Session DH 27.5 Carbon Frameset - 2017',9,6,2017,469.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(35,'Sun Bicycles Spider 3i - 2017',7,6,2017,832.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(36,'Surly Troll Frameset - 2017',8,6,2017,832.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(37,'Haro Flightline One ST - 2017',2,6,2017,379.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(38,'Haro Flightline Two 26 Plus - 2017',2,6,2017,549.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(39,'Trek Stache 5 - 2017',9,6,2017,1499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(40,'Trek Fuel EX 9.8 29 - 2017',9,6,2017,4999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(41,'Haro Shift R3 - 2017',2,6,2017,1469.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(42,'Trek Fuel EX 5 27.5 Plus - 2017',9,6,2017,2299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(43,'Trek Fuel EX 9.8 27.5 Plus - 2017',9,6,2017,5299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(44,'Haro SR 1.1 - 2017',2,6,2017,539.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(45,'Haro SR 1.2 - 2017',2,6,2017,869.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(46,'Haro SR 1.3 - 2017',2,6,2017,1409.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(47,'Trek Remedy 9.8 - 2017',9,6,2017,5299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(48,'Trek Emonda S 4 - 2017',9,7,2017,1499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(49,'Trek Domane SL 6 - 2017',9,7,2017,3499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(50,'Trek Silque SLR 7 Women''s - 2017',9,7,2017,5999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(51,'Trek Silque SLR 8 Women''s - 2017',9,7,2017,6499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(52,'Surly Steamroller - 2017',8,7,2017,875.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(53,'Surly Ogre Frameset - 2017',8,7,2017,749.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(54,'Trek Domane SL Disc Frameset - 2017',9,7,2017,3199.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(55,'Trek Domane S 6 - 2017',9,7,2017,2699.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(56,'Trek Domane SLR 6 Disc - 2017',9,7,2017,5499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(57,'Trek Emonda S 5 - 2017',9,7,2017,1999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(58,'Trek Madone 9.2 - 2017',9,7,2017,4999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(59,'Trek Domane S 5 Disc - 2017',9,7,2017,2599.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(60,'Sun Bicycles ElectroLite - 2017',7,5,2017,1559.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(61,'Trek Powerfly 8 FS Plus - 2017',9,5,2017,4999.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(62,'Trek Boone 7 - 2017',9,4,2017,3499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(63,'Trek Boone Race Shop Limited - 2017',9,4,2017,3499.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(64,'Electra Townie Original 7D - 2017',1,3,2017,489.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(65,'Sun Bicycles Lil Bolt Type-R - 2017',7,3,2017,346.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(66,'Sun Bicycles Revolutions 24 - 2017',7,3,2017,250.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(67,'Sun Bicycles Revolutions 24 - Girl''s - 2017',7,3,2017,250.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(68,'Sun Bicycles Cruz 3 - 2017',7,3,2017,449.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(69,'Sun Bicycles Cruz 7 - 2017',7,3,2017,416.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(70,'Electra Amsterdam Original 3i - 2015/2017',1,3,2017,659.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(71,'Sun Bicycles Atlas X-Type - 2017',7,3,2017,416.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(72,'Sun Bicycles Biscayne Tandem 7 - 2017',7,3,2017,619.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(73,'Sun Bicycles Brickell Tandem 7 - 2017',7,3,2017,749.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(74,'Electra Cruiser Lux 1 - 2017',1,3,2017,439.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(75,'Electra Cruiser Lux Fat Tire 1 Ladies - 2017',1,3,2017,599.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(76,'Electra Girl''s Hawaii 1 16" - 2017',1,3,2017,299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(77,'Electra Glam Punk 3i Ladies'' - 2017',1,3,2017,799.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(78,'Sun Bicycles Biscayne Tandem CB - 2017',7,3,2017,647.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(79,'Sun Bicycles Boardwalk (24-inch Wheels) - 2017',7,3,2017,402.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(80,'Sun Bicycles Brickell Tandem CB - 2017',7,3,2017,761.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(81,'Electra Amsterdam Fashion 7i Ladies'' - 2017',1,3,2017,1099.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(82,'Electra Amsterdam Original 3i Ladies'' - 2017',1,3,2017,659.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(83,'Trek Boy''s Kickster - 2015/2017',9,1,2017,149.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(84,'Sun Bicycles Lil Kitt''n - 2017',7,1,2017,109.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(85,'Haro Downtown 16 - 2017',2,1,2017,329.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(86,'Trek Girl''s Kickster - 2017',9,1,2017,149.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(87,'Trek Precaliber 12 Boys - 2017',9,1,2017,189.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(88,'Trek Precaliber 12 Girls - 2017',9,1,2017,189.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(89,'Trek Precaliber 16 Boys - 2017',9,1,2017,209.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(90,'Trek Precaliber 16 Girls - 2017',9,1,2017,209.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(91,'Trek Precaliber 24 (21-Speed) - Girls - 2017',9,1,2017,349.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(92,'Haro Shredder 20 - 2017',2,1,2017,209.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(93,'Haro Shredder 20 Girls - 2017',2,1,2017,209.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(94,'Haro Shredder Pro 20 - 2017',2,1,2017,249.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(95,'Electra Girl''s Hawaii 1 16" - 2017',1,1,2017,299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(96,'Electra Moto 3i (20-inch) - Boy''s - 2017',1,1,2017,349.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(97,'Electra Savannah 3i (20-inch) - Girl''s - 2017',1,1,2017,349.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(98,'Electra Straight 8 3i (20-inch) - Boy''s - 2017',1,1,2017,489.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(99,'Electra Sugar Skulls 1 (20-inch) - Girl''s - 2017',1,1,2017,299.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(100,'Electra Townie 3i EQ (20-inch) - Boys'' - 2017',1,1,2017,489.99)


SET IDENTITY_INSERT production.products OFF;

-- sales.customers table
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY',14127);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA',95008);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA',90278);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY',11553);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA',95820);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY',14450);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY',14215);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY',11372);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY',11050);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY',10950);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Deshawn','Mendoza',NULL,'deshawn.mendoza@yahoo.com','8790 Cobblestone Street ','Monsey','NY',10952);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Robby','Sykes','(516) 583-7761','robby.sykes@hotmail.com','486 Rock Maple Street ','Hempstead','NY',11550);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lashawn','Ortiz',NULL,'lashawn.ortiz@msn.com','27 Washington Rd. ','Longview','TX',75604);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Garry','Espinoza',NULL,'garry.espinoza@hotmail.com','7858 Rockaway Court ','Forney','TX',75126);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Linnie','Branch',NULL,'linnie.branch@gmail.com','314 South Columbia Ave. ','Plattsburgh','NY',12901);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Emmitt','Sanchez','(212) 945-8823','emmitt.sanchez@hotmail.com','461 Squaw Creek Road ','New York','NY',10002);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Caren','Stephens',NULL,'caren.stephens@msn.com','914 Brook St. ','Scarsdale','NY',10583);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Georgetta','Hardin',NULL,'georgetta.hardin@aol.com','474 Chapel Dr. ','Canandaigua','NY',14424);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lizzette','Stein',NULL,'lizzette.stein@yahoo.com','19 Green Hill Lane ','Orchard Park','NY',14127);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Aleta','Shepard',NULL,'aleta.shepard@aol.com','684 Howard St. ','Sugar Land','TX',77478);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tobie','Little',NULL,'tobie.little@gmail.com','10 Silver Spear Dr. ','Victoria','TX',77904);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Adelle','Larsen',NULL,'adelle.larsen@gmail.com','683 West Kirkland Dr. ','East Northport','NY',11731);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kaylee','English',NULL,'kaylee.english@msn.com','8786 Fulton Rd. ','Hollis','NY',11423);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Corene','Wall',NULL,'corene.wall@msn.com','9601 Ocean Rd. ','Atwater','CA',95301);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Regenia','Vaughan',NULL,'regenia.vaughan@gmail.com','44 Stonybrook Street ','Mahopac','NY',10541);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Theo','Reese','(562) 215-2907','theo.reese@gmail.com','8755 W. Wild Horse St. ','Long Beach','NY',11561);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Santos','Valencia',NULL,'santos.valencia@yahoo.com','7479 Carpenter Street ','Sunnyside','NY',11104);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Jeanice','Frost',NULL,'jeanice.frost@hotmail.com','76 Devon Lane ','Ossining','NY',10562);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Syreeta','Hendricks',NULL,'syreeta.hendricks@msn.com','193 Spruce Road ','Mahopac','NY',10541);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Jamaal','Albert',NULL,'jamaal.albert@gmail.com','853 Stonybrook Street ','Torrance','CA',90505);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Williemae','Holloway','(510) 246-8375','williemae.holloway@msn.com','69 Cypress St. ','Oakland','CA',94603);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Araceli','Golden',NULL,'araceli.golden@msn.com','12 Ridgeview Ave. ','Fullerton','CA',92831);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Deloris','Burke',NULL,'deloris.burke@hotmail.com','895 Edgemont Drive ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Brittney','Woodward',NULL,'brittney.woodward@aol.com','960 River St. ','East Northport','NY',11731);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Guillermina','Noble',NULL,'guillermina.noble@msn.com','6 Del Monte Lane ','Baldwinsville','NY',13027);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Bernita','Mcdaniel',NULL,'bernita.mcdaniel@hotmail.com','2 Peg Shop Ave. ','Liverpool','NY',13090);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Melia','Brady',NULL,'melia.brady@gmail.com','907 Shirley Rd. ','Maspeth','NY',11378);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Zelma','Browning',NULL,'zelma.browning@aol.com','296 Second Street ','Astoria','NY',11102);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Janetta','Aguirre','(717) 670-2634','janetta.aguirre@aol.com','214 Second Court ','Lancaster','NY',14086);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Ronna','Butler',NULL,'ronna.butler@gmail.com','9438 Plymouth Court ','Encino','CA',91316);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kathie','Freeman',NULL,'kathie.freeman@msn.com','667 Temple Dr. ','Queensbury','NY',12804);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tangela','Quinn',NULL,'tangela.quinn@aol.com','4 S. Purple Finch Road ','Richmond Hill','NY',11418);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Mozelle','Carter','(281) 489-9656','mozelle.carter@aol.com','895 Chestnut Ave. ','Houston','TX',77016);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Onita','Johns',NULL,'onita.johns@msn.com','32 Glen Creek Lane ','Elmont','NY',11003);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Bennett','Armstrong',NULL,'bennett.armstrong@aol.com','688 Walnut Street ','Bethpage','NY',11714);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Monika','Berg',NULL,'monika.berg@gmail.com','369 Vernon Dr. ','Encino','CA',91316);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Bridgette','Guerra',NULL,'bridgette.guerra@hotmail.com','9982 Manor Drive ','San Lorenzo','CA',94580);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Cesar','Jackson',NULL,'cesar.jackson@gmail.com','8068 N. Griffin Ave. ','Liverpool','NY',13090);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Caroll','Hays',NULL,'caroll.hays@yahoo.com','9381 Wrangler St. ','Fairport','NY',14450);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Cleotilde','Booth',NULL,'cleotilde.booth@gmail.com','17 Corona St. ','Sugar Land','TX',77478);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Gertrud','Rhodes',NULL,'gertrud.rhodes@aol.com','9961 Meadowbrook Street ','Merrick','NY',11566);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tu','Ramirez',NULL,'tu.ramirez@hotmail.com','24 W. Courtland Street ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Saturnina','Garner',NULL,'saturnina.garner@gmail.com','8538 Fairground St. ','Glendora','CA',91740);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Fran','Yang',NULL,'fran.yang@hotmail.com','440 Pearl St. ','Utica','NY',13501);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Diana','Guerra',NULL,'diana.guerra@hotmail.com','45 Chapel Ave. ','Merrick','NY',11566);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lolita','Mosley','(281) 363-3309','lolita.mosley@hotmail.com','376 S. High Ridge St. ','Houston','TX',77016);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Pamala','Henry',NULL,'pamala.henry@aol.com','197 Bridgeton Ave. ','Bronx','NY',10451);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Damien','Dorsey',NULL,'damien.dorsey@yahoo.com','161 Old York Street ','Central Islip','NY',11722);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Latasha','Stanley',NULL,'latasha.stanley@gmail.com','8068 Fordham Drive ','Rockville Centre','NY',11570);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Neil','Mccall',NULL,'neil.mccall@gmail.com','7476 Oakland Dr. ','San Carlos','CA',94070);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Elinore','Aguilar',NULL,'elinore.aguilar@msn.com','9766 Rockcrest Ave. ','San Angelo','TX',76901);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Alica','Hunter',NULL,'alica.hunter@hotmail.com','8 San Juan Drive ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tenisha','Lyons',NULL,'tenisha.lyons@aol.com','78 E. Rock Creek Street ','Amityville','NY',11701);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Bobbie','Foster',NULL,'bobbie.foster@yahoo.com','988 Pineknoll Ave. ','Desoto','TX',75115);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kanesha','Vega',NULL,'kanesha.vega@gmail.com','771 E. Oxford Drive ','Rome','NY',13440);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lorrie','Becker',NULL,'lorrie.becker@yahoo.com','19 North Court ','Garland','TX',75043);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tommie','Melton','(916) 802-2952','tommie.melton@gmail.com','8 West Old York St. ','Sacramento','CA',95820);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Jayne','Kirkland',NULL,'jayne.kirkland@hotmail.com','7800 Second Lane ','Rowlett','TX',75088);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Katelin','Kennedy',NULL,'katelin.kennedy@gmail.com','286 Myrtle Lane ','Rocklin','CA',95677);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tomasa','Carson',NULL,'tomasa.carson@aol.com','10 Clark Avenue ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Takako','Casey',NULL,'takako.casey@aol.com','7548 Court Lane ','Bronx','NY',10451);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Petronila','Norris',NULL,'petronila.norris@aol.com','72 South Marshall Lane ','South El Monte','CA',91733);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Melanie','Hayes',NULL,'melanie.hayes@msn.com','5 N. Hall Dr. ','Liverpool','NY',13090);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Georgeann','Waller',NULL,'georgeann.waller@yahoo.com','9797 Bald Hill Ave. ','North Tonawanda','NY',14120);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Abby','Gamble',NULL,'abby.gamble@aol.com','60 Myers Dr. ','Amityville','NY',11701);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Parker','Prince',NULL,'parker.prince@hotmail.com','21 Sulphur Springs Drive ','Port Jefferson Station','NY',11776);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Keri','Bridges',NULL,'keri.bridges@gmail.com','8504 Brickell Ave. ','Richardson','TX',75080);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Chi','Goff',NULL,'chi.goff@aol.com','3 W. Glen Ridge Avenue ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Ashanti','Parks',NULL,'ashanti.parks@hotmail.com','846 N. Helen St. ','Baldwin','NY',11510);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Sarai','Mckee','(716) 912-8110','sarai.mckee@msn.com','641 Glenwood Avenue ','Buffalo','NY',14215);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Zina','Bonner',NULL,'zina.bonner@hotmail.com','9312 8th Street ','San Lorenzo','CA',94580);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lizzie','Joyner',NULL,'lizzie.joyner@msn.com','8541 Roberts St. ','Coachella','CA',92236);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tiesha','Daniel',NULL,'tiesha.daniel@yahoo.com','6 West Bohemia Lane ','Scarsdale','NY',10583);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Armand','Whitehead',NULL,'armand.whitehead@hotmail.com','639 Harvey St. ','Lindenhurst','NY',11757);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Teofila','Fischer',NULL,'teofila.fischer@aol.com','1 West Brickyard St. ','Huntington Station','NY',11746);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lissa','Vargas',NULL,'lissa.vargas@yahoo.com','517 Victoria Ave. ','Oswego','NY',13126);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Yan','Mcgowan',NULL,'yan.mcgowan@msn.com','8960 Newport Ave. ','Duarte','CA',91010);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Titus','Bullock',NULL,'titus.bullock@gmail.com','29 Oxford Avenue ','Hollis','NY',11423);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Arvilla','Osborn',NULL,'arvilla.osborn@gmail.com','60 Acacia Lane ','Upland','CA',91784);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Marjorie','Logan',NULL,'marjorie.logan@msn.com','95 Grandrose St. ','Franklin Square','NY',11010);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Marvin','Mullins','(619) 635-2027','marvin.mullins@aol.com','7489 Redwood Drive ','San Diego','CA',92111);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tena','Cruz',NULL,'tena.cruz@yahoo.com','1 South St. ','Farmingdale','NY',11735);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Corrina','Sawyer','(248) 370-1364','corrina.sawyer@yahoo.com','95 Briarwood Lane ','Troy','NY',12180);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Sharyn','Hopkins',NULL,'sharyn.hopkins@hotmail.com','4 South Temple Ave. ','Baldwinsville','NY',13027);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Letitia','Franco',NULL,'letitia.franco@aol.com','607 Lakeview Drive ','Saratoga Springs','NY',12866);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Floretta','Higgins',NULL,'floretta.higgins@hotmail.com','870 Lilac Dr. ','Bayside','NY',11361);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Louanne','Martin',NULL,'louanne.martin@hotmail.com','1 Campfire Ave. ','Yuba City','CA',95993);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Violet','Valenzuela',NULL,'violet.valenzuela@msn.com','8668 Piper Street ','Plattsburgh','NY',12901);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Carie','Kidd',NULL,'carie.kidd@yahoo.com','6 East Clinton Street ','Monroe','NY',10950);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kellie','Franco',NULL,'kellie.franco@yahoo.com','444 South Walnut Rd. ','Commack','NY',11725);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Nichelle','Howell',NULL,'nichelle.howell@aol.com','7670 Forest St. ','Scarsdale','NY',10583);

-- stores

INSERT INTO sales.stores(store_name, phone, email, street, city, state, zip_code)
VALUES('Santa Cruz Bikes','(831) 476-4321','santacruz@bikes.shop','3700 Portola Drive', 'Santa Cruz','CA',95060),
      ('Baldwin Bikes','(516) 379-8888','baldwin@bikes.shop','4200 Chestnut Lane', 'Baldwin','NY',11432),
      ('Rowlett Bikes','(972) 530-5555','rowlett@bikes.shop','8000 Fairway Avenue', 'Rowlett','TX',75088);


-- production.stocks 
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,1,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,2,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,3,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,4,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,5,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,6,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,7,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,8,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,9,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,10,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,11,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,12,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,13,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,14,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,15,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,16,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,17,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,18,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,19,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,20,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,21,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,22,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,23,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,24,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,25,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,26,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,27,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,28,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,29,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,30,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,31,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,32,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,33,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,34,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,35,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,36,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,37,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,38,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,39,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,40,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,41,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,42,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,43,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,44,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,45,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,46,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,47,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,48,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,49,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,50,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,51,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,52,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,53,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,54,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,55,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,56,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,57,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,58,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,59,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,60,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,61,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,62,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,63,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,64,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,65,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,66,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,67,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,68,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,69,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,70,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,71,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,72,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,73,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,74,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,75,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,76,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,77,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,78,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,79,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,80,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,81,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,82,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,83,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,84,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,85,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,86,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,87,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,88,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,89,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,90,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,91,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,92,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,93,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,94,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,95,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,96,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,97,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,98,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,99,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,100,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,101,17);

SET IDENTITY_INSERT sales.staffs ON;  

INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,1,NULL);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',1,1,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(5,'Jannette','David','jannette.david@bikes.shop','(516) 379-4444',1,2,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(6,'Marcelene','Boyer','marcelene.boyer@bikes.shop','(516) 379-4445',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(7,'Venita','Daniel','venita.daniel@bikes.shop','(516) 379-4446',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(8,'Kali','Vargas','kali.vargas@bikes.shop','(972) 530-5555',1,3,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(9,'Layla','Terrell','layla.terrell@bikes.shop','(972) 530-5556',1,3,7);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(10,'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557',1,3,7);

SET IDENTITY_INSERT sales.staffs OFF;  

SET IDENTITY_INSERT sales.orders ON;  
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(1,259,4,'20160101','20160103','20160103',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(2,1212,4,'20160101','20160104','20160103',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(3,523,4,'20160102','20160105','20160103',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(4,175,4,'20160103','20160104','20160105',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(5,1324,4,'20160103','20160106','20160106',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(6,94,4,'20160104','20160107','20160105',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(7,324,4,'20160104','20160107','20160105',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(8,1204,4,'20160104','20160105','20160105',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(9,60,4,'20160105','20160108','20160108',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(10,442,4,'20160105','20160106','20160106',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(11,1326,4,'20160105','20160108','20160107',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(12,91,4,'20160106','20160108','20160109',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(13,873,4,'20160108','20160111','20160111',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(14,258,4,'20160109','20160111','20160112',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(15,450,4,'20160109','20160110','20160112',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(16,552,4,'20160112','20160115','20160115',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(17,1175,4,'20160112','20160114','20160114',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(18,541,4,'20160114','20160117','20160115',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(19,696,4,'20160114','20160117','20160116',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(20,923,4,'20160114','20160116','20160117',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(21,1250,4,'20160115','20160116','20160118',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(22,1035,4,'20160116','20160118','20160117',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(23,1149,4,'20160116','20160119','20160119',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(24,636,4,'20160118','20160120','20160119',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(25,657,4,'20160118','20160121','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(26,1280,4,'20160118','20160121','20160119',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(27,57,4,'20160119','20160121','20160120',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(28,252,4,'20160119','20160120','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(29,437,4,'20160120','20160122','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(30,1348,4,'20160120','20160121','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(31,1238,4,'20160120','20160122','20160122',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(32,1259,4,'20160121','20160124','20160122',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(33,236,4,'20160121','20160122','20160122',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(34,80,4,'20160122','20160125','20160123',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(35,813,4,'20160122','20160125','20160124',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(36,1321,4,'20160123','20160124','20160124',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(37,164,4,'20160125','20160128','20160126',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(38,583,4,'20160125','20160127','20160126',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(39,1296,4,'20160125','20160126','20160126',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(40,348,4,'20160127','20160128','20160129',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(41,979,4,'20160127','20160130','20160129',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(42,1095,4,'20160127','20160128','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(43,1434,4,'20160127','20160128','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(44,861,4,'20160128','20160131','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(45,1220,4,'20160128','20160131','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(46,746,4,'20160129','20160131','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(47,1234,4,'20160129','20160130','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(48,1012,4,'20160130','20160201','20160202',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(49,608,4,'20160131','20160201','20160202',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(50,872,4,'20160131','20160203','20160202',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(51,1047,4,'20160201','20160202','20160203',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(52,767,4,'20160203','20160204','20160205',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(53,965,4,'20160203','20160204','20160205',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(54,535,4,'20160204','20160207','20160207',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(55,1173,4,'20160204','20160207','20160206',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(56,1241,4,'20160204','20160206','20160207',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(57,1305,4,'20160204','20160206','20160206',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(58,504,4,'20160205','20160207','20160207',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(59,563,4,'20160205','20160207','20160206',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(60,151,4,'20160206','20160208','20160207',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(61,277,4,'20160206','20160209','20160209',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(62,208,4,'20160207','20160210','20160210',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(63,1075,4,'20160207','20160209','20160209',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(64,1185,4,'20160207','20160208','20160209',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(65,996,4,'20160208','20160209','20160211',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(66,1253,4,'20160209','20160212','20160212',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(67,526,4,'20160209','20160211','20160210',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(68,381,4,'20160210','20160211','20160213',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(69,1413,4,'20160210','20160212','20160211',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(70,50,3,'20160211','20160211',NULL,3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(71,797,4,'20160211','20160214','20160212',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(72,1386,4,'20160212','20160215','20160213',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(73,612,4,'20160212','20160215','20160214',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(74,264,4,'20160213','20160215','20160215',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(75,587,4,'20160214','20160215','20160217',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(76,9,3,'20160216','20160216',NULL,2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(77,385,4,'20160216','20160219','20160219',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(78,1182,4,'20160216','20160218','20160219',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(79,529,4,'20160217','20160220','20160220',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(80,397,4,'20160217','20160220','20160219',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(81,521,4,'20160217','20160219','20160218',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(82,1223,4,'20160218','20160221','20160220',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(83,393,4,'20160219','20160220','20160220',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(84,317,4,'20160220','20160222','20160221',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(85,1174,4,'20160220','20160223','20160221',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(86,276,4,'20160221','20160222','20160223',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(87,516,4,'20160221','20160222','20160223',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(88,1069,4,'20160221','20160222','20160223',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(89,668,4,'20160221','20160224','20160224',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(90,414,4,'20160223','20160225','20160224',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(91,648,4,'20160225','20160227','20160228',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(92,1309,4,'20160225','20160228','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(93,1328,4,'20160226','20160228','20160227',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(94,929,4,'20160227','20160228','20160229',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(95,218,4,'20160227','20160229','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(96,1094,4,'20160227','20160229','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(97,204,4,'20160228','20160229','20160301',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(98,1194,4,'20160228','20160229','20160229',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(99,1165,4,'20160229','20160301','20160303',3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(100,1237,4,'20160301','20160304','20160303',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(101,271,4,'20160301','20160304','20160304',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(102,336,4,'20160302','20160305','20160303',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(103,991,4,'20160303','20160306','20160305',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(104,7,4,'20160303','20160305','20160305',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(105,306,4,'20160303','20160305','20160304',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(106,422,4,'20160304','20160305','20160305',3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(107,633,4,'20160306','20160309','20160309',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(108,12,4,'20160306','20160309','20160307',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(109,1255,4,'20160306','20160309','20160309',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(110,677,4,'20160306','20160308','20160309',3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(111,630,4,'20160307','20160310','20160310',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(112,469,4,'20160308','20160311','20160310',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(113,1078,4,'20160308','20160311','20160311',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(114,1431,4,'20160308','20160310','20160311',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(115,1369,4,'20160309','20160311','20160311',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(116,471,4,'20160310','20160311','20160311',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(117,740,4,'20160310','20160313','20160311',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(118,577,4,'20160312','20160314','20160313',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(119,925,4,'20160312','20160314','20160314',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(120,327,4,'20160314','20160315','20160317',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(121,755,4,'20160314','20160315','20160316',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(122,786,4,'20160314','20160316','20160315',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(123,766,4,'20160315','20160318','20160317',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(124,403,4,'20160316','20160318','20160317',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(125,685,4,'20160316','20160319','20160317',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(126,1365,4,'20160316','20160318','20160318',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(127,484,4,'20160317','20160318','20160319',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(128,86,4,'20160318','20160320','20160321',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(129,84,4,'20160319','20160321','20160321',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(130,1049,4,'20160319','20160322','20160320',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(131,316,4,'20160319','20160322','20160320',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(132,46,4,'20160320','20160322','20160323',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(133,409,4,'20160320','20160322','20160321',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(134,679,4,'20160320','20160321','20160321',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(135,1354,4,'20160321','20160323','20160323',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(136,1192,4,'20160321','20160324','20160323',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(137,370,4,'20160323','20160326','20160325',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(138,438,4,'20160323','20160324','20160325',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(139,710,4,'20160323','20160324','20160326',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(140,1264,4,'20160323','20160326','20160326',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(141,557,4,'20160325','20160327','20160326',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(142,170,4,'20160326','20160327','20160327',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(143,693,4,'20160326','20160328','20160328',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(144,1124,4,'20160326','20160329','20160329',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(145,366,4,'20160327','20160329','20160330',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(146,288,4,'20160328','20160330','20160330',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(147,55,4,'20160328','20160331','20160331',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(148,714,4,'20160328','20160330','20160330',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(149,763,4,'20160328','20160330','20160329',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(150,332,4,'20160329','20160331','20160401',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(151,926,4,'20160329','20160401','20160331',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(152,76,4,'20160329','20160330','20160330',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(153,498,4,'20160330','20160402','20160401',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(154,1286,4,'20160331','20160401','20160401',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(155,371,4,'20160402','20160403','20160404',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(156,357,4,'20160403','20160406','20160405',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(157,43,4,'20160403','20160406','20160406',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(158,117,3,'20160404','20160404',NULL,3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(159,32,4,'20160404','20160406','20160406',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(160,205,4,'20160404','20160406','20160406',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(161,251,4,'20160404','20160407','20160405',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(162,31,4,'20160406','20160408','20160407',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(163,1325,4,'20160406','20160407','20160407',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(164,610,4,'20160407','20160408','20160409',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(165,574,4,'20160408','20160410','20160410',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(166,338,4,'20160408','20160411','20160411',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(167,1034,4,'20160408','20160409','20160411',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(168,1147,4,'20160409','20160412','20160411',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(169,99,4,'20160410','20160411','20160411',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(170,1200,4,'20160410','20160411','20160413',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(171,237,4,'20160411','20160414','20160414',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(172,1079,4,'20160411','20160412','20160414',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(173,117,4,'20160411','20160414','20160413',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(174,1361,4,'20160412','20160413','20160415',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(175,951,4,'20160413','20160414','20160414',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(176,643,4,'20160415','20160416','20160417',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(177,121,4,'20160416','20160419','20160419',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(178,756,4,'20160416','20160417','20160418',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(179,616,4,'20160417','20160419','20160419',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(180,918,4,'20160417','20160420','20160419',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(181,459,4,'20160418','20160420','20160420',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(182,854,4,'20160418','20160419','20160420',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(183,22,4,'20160419','20160420','20160420',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(184,134,4,'20160419','20160421','20160422',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(185,24,3,'20160420','20160420',NULL,1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(186,1127,4,'20160421','20160422','20160424',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(187,183,4,'20160422','20160423','20160424',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(188,390,4,'20160422','20160423','20160425',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(189,1288,4,'20160423','20160424','20160426',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(190,98,4,'20160423','20160425','20160425',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(191,919,4,'20160427','20160428','20160428',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(192,728,4,'20160427','20160428','20160429',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(193,1366,4,'20160428','20160430','20160430',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(194,558,4,'20160428','20160430','20160501',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(195,727,4,'20160428','20160501','20160501',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(196,1247,4,'20160428','20160430','20160501',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(197,127,4,'20160430','20160503','20160503',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(198,640,4,'20160501','20160504','20160503',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(199,760,4,'20160501','20160504','20160504',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(200,1074,4,'20160501','20160503','20160503',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(201,280,4,'20160501','20160504','20160502',3,9);

SET IDENTITY_INSERT sales.orders OFF;  

INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,1,20,1,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,2,8,2,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,3,10,2,1549.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,4,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,5,4,1,2899.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,1,20,1,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,2,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,1,3,1,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,2,20,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(4,1,2,2,749.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,1,10,2,1549.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,2,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,3,26,1,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,1,18,1,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,2,12,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,3,20,1,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,4,3,2,999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,5,9,2,2999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,1,15,1,529.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,2,3,1,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,3,17,2,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(8,1,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(8,2,20,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(9,1,7,2,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(10,1,14,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,1,8,1,1799.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,2,22,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,3,16,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(12,1,4,2,2899.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(12,2,11,1,1680.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,1,13,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,2,17,2,429.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,3,20,2,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,4,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(14,1,6,1,469.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,1,12,2,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,2,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,3,18,2,449.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,4,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,1,8,1,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,2,21,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,3,13,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,4,14,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,1,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,2,23,1,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,3,5,1,1320.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,4,20,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,1,2,2,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,2,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,3,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,4,25,2,499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,5,9,2,2999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(19,1,10,1,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(19,2,9,2,2999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(20,1,9,1,2999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(20,2,10,2,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,1,14,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,2,17,1,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,3,10,1,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(22,1,15,2,529.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(22,2,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,1,4,2,2899.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,2,23,2,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,3,13,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(24,1,3,2,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(24,2,18,2,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,1,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,2,10,2,1549.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,3,22,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,4,14,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,5,21,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,1,7,1,3999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,2,2,1,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,3,12,1,549.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,4,21,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,1,5,1,1320.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,2,19,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,3,26,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,4,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,1,5,1,1320.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,2,7,2,3999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,3,14,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,4,6,1,469.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,1,24,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,2,6,1,469.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,3,21,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,4,8,1,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,5,14,2,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,1,26,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,2,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,3,19,1,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,4,4,1,2899.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,5,7,2,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(31,1,11,2,1680.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(31,2,9,2,2999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,1,8,2,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,2,12,2,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,3,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(33,1,23,2,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(33,2,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(34,1,8,2,1799.99,0.07);
