--Special thanks to the random generater at generatedata.com for a whole lot of saved typing.

--Vendor List
SET IDENTITY_INSERT Corporate.VendorList ON
INSERT INTO Corporate.VendorList(VendorIndex,VendorName,VendorStAddress,VendorCity,VendorState,VendorZip,VendorCountry,VendorEmail,VendorPhone)
	VALUES(1,'Microsoft','100 Microsoft Way','San Fransisco','CA',98765,'USA','whydidntwestopatWin7@microsoft.com','123456789'),
	(2,'Macromedia',NULL,'San Diego','CA',95405,'USA','abcd@macromedia.net','2433234342'),
	(3,'Google','Whole Planet',NULL,'CA',11111,'USA','google@google.com','1243215655'),
	(4,'Yahoo','Are we still in business St',NULL,'WA',44323,'USA','yahoo@yahoo.com','5323335542'),
	(5,'Lycos','111 fake st','hollywood','CA',53532,'USA','huh@lycos.com','2111113111'),
	(6,'Altavista','unknown','Dallas','TX',76205,'USA','altavista@altavista.com','2452531243'),
	(7,'Chami','533cjije st','Irving','TX',85333,'USA','lycos@who.com',NULL),
	(8,'Adobe','Acrobat Way','New York','NY',24345,'USA','abc@abc.com',NULL),
	(9,'Borland',NULL,NULL,'AR',75464,'USA','BorlandEmail@any.com',NULL),
	(10,'Lavasoft',NULL,NULL,'OR',99977,'USA','random@email.com',NULL),
	(11,'Cakewalk',NULL,NULL,NULL,93842,'USA','cakewalk@easystreet.com',NULL),
	(12,'Sibelius',NULL,NULL,NULL,NULL,'UK','Si@music.com',NULL),
	(13,'Finale',NULL,NULL,NULL,NULL,'France','music@composition.com',NULL),
	(14,'Apple Systems',NULL,NULL,NULL,NULL,'China','apple@apple.com',NULL)
SET IDENTITY_INSERT Corporate.VendorList OFF
GO

--Item Inventory
SET IDENTITY_INSERT Corporate.ItemList ON
INSERT INTO Corporate.ItemList([ItemIndex],[ItemName],[ItemDescription],[ItemPrice],[ItemVendor]) 
	VALUES(1001,'sem, vitae aliquam eros','arcu et pede. Nunc sed orci lobortis','$100.00','Adobe'),
	(1002,'Phasellus','est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius','$37.07','Chami'),
	(1003,'magna','nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare','$63.51','Chami'),
	(1004,'malesuada fames','sit amet, dapibus id, blandit at,','$78.97','Apple Systems'),
	(1005,'sit amet lorem','enim, sit','$6.59','Chami'),
	(1006,'malesuada augue ut lacus. Nulla','elit sed consequat auctor, nunc','$43.61','Yahoo'),
	(1007,'rhoncus. Donec','nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse','$48.72','Lavasoft'),
	(1008,'risus quis diam luctus','nec, mollis vitae, posuere at, velit.','$84.48','Cakewalk'),
	(1009,'magna a neque. Nullam','felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin 
		commodo ipsum. Suspendisse','$68.00','Yahoo'),
	(1010,'ultrices posuere','sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed','$88.80','Finale'),
	(1011,'consectetuer adipiscing','massa. Quisque porttitor','$36.57','Finale'),
	(1012,'ridiculus mus.','nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,','$60.10','Apple Systems'),
	(1013,'ut quam vel sapien imperdiet','Nullam vitae diam. Proin dolor. Nulla semper','$63.54','Microsoft'),
	(1014,'nec, malesuada ut,','Lorem ipsum','$69.83','Microsoft'),
	(1015,'vitae diam.','metus. In nec orci. Donec nibh.','$64.54','Yahoo'),
	(1016,'at','eros. Proin ultrices. Duis volutpat nunc sit amet metus.','$88.79','Google'),
	(1017,'montes, nascetur ridiculus mus.','ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus','$77.15','Borland'),
	(1018,'at,','eu, eleifend nec,','$27.05','Sibelius'),
	(1019,'nunc.','turpis egestas. Aliquam fringilla cursus','$18.00','Microsoft'),
	(1020,'Donec vitae','lacus.','$60.93','Chami');
INSERT INTO Corporate.ItemList([ItemIndex],[ItemName],[ItemDescription],[ItemPrice],[ItemVendor]) 
	VALUES(1021,'eget varius','orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas.','$37.45','Apple Systems'),
	(1022,'faucibus. Morbi','vestibulum lorem, sit amet ultricies sem','$2.49','Sibelius'),
	(1023,'luctus','fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque','$94.89','Macromedia'),
	(1024,'Cras','luctus vulputate, nisi sem semper','$40.82','Google'),
	(1025,'nulla. Integer','mi lorem, vehicula','$10.90','Macromedia'),
	(1026,'diam. Sed diam lorem,','nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,','$49.42','Altavista'),
	(1027,'pulvinar arcu et pede. Nunc','Duis elementum, dui quis','$32.66','Microsoft'),
	(1028,'dolor','arcu. Vestibulum ut eros non enim commodo','$12.05','Adobe'),
	(1029,'est, congue a, aliquet','quis accumsan convallis, ante lectus','$59.58','Microsoft'),
	(1030,'nibh dolor, nonummy','elementum sem,','$27.32','Cakewalk'),
	(1031,'volutpat.','bibendum sed, est. Nunc laoreet lectus','$4.83','Lycos'),
	(1032,'Vivamus nisi. Mauris nulla.','lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi','$74.11','Cakewalk'),
	(1033,'purus. Maecenas libero','est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,','$34.24',
		'Microsoft'),
	(1034,'tellus id','ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique','$68.76','Google'),
	(1035,'Pellentesque ut ipsum ac mi','lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris','$18.85',
		'Google'),
	(1036,'eleifend, nunc risus','a sollicitudin orci sem eget massa. Suspendisse eleifend.','$83.68','Cakewalk'),
	(1037,'cursus a, enim. Suspendisse','cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper',
		'$70.20','Apple Systems'),
	(1038,'euismod mauris eu elit.','aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.','$97.55','Adobe'),
	(1039,'Aliquam adipiscing','erat neque non quam. Pellentesque habitant morbi tristique senectus','$70.81','Adobe'),
	(1040,'sodales at,','ligula. Aenean euismod mauris','$48.05','Apple Systems');
INSERT INTO Corporate.ItemList([ItemIndex],[ItemName],[ItemDescription],[ItemPrice],[ItemVendor]) 
	VALUES(1041,'nisi sem semper','Maecenas malesuada','$30.98','Lycos'),
	(1042,'leo','pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,','$70.89','Macromedia'),
	(1043,'rutrum, justo. Praesent luctus.','lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod','$63.62','Google'),
	(1044,'dignissim magna a','mi fringilla mi lacinia mattis. Integer eu lacus.','$48.38','Microsoft'),
	(1045,'quam','ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor','$94.16','Borland'),
	(1046,'tellus.','vitae erat vel pede blandit congue.','$45.47','Apple Systems'),
	(1047,'est ac facilisis','semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan','$13.21','Borland'),
	(1048,'vitae, erat. Vivamus nisi. Mauris','ac,','$50.18','Lycos'),
	(1049,'consectetuer adipiscing','egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus',
		'$24.41','Cakewalk'),
	(1050,'vulputate mauris sagittis placerat.','vel arcu. Curabitur ut odio vel est tempor bibendum.','$68.50','Altavista'),
	(1051,'sed dolor. Fusce mi lorem,','Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.','$44.68','Altavista'),
	(1052,'vel lectus. Cum','eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,','$82.08','Chami'),
	(1053,'sociis natoque penatibus et magnis','odio a purus. Duis elementum, dui quis accumsan convallis, ante','$56.45','Chami'),
	(1054,'tortor. Integer aliquam','Phasellus libero mauris, aliquam','$24.73','Microsoft'),
	(1055,'Lorem ipsum dolor sit','Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien.','$27.94','Google'),
	(1056,'viverra. Maecenas iaculis aliquet','nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas.','$72.91','Lavasoft'),
	(1057,'faucibus orci luctus et','tincidunt nibh. Phasellus nulla. Integer','$66.71','Cakewalk'),
	(1058,'risus.','auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus.','$84.78','Borland'),
	(1059,'Cras dictum','velit egestas lacinia. Sed','$97.42','Yahoo'),
	(1060,'lectus','sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor','$43.98','Lycos');
INSERT INTO Corporate.ItemList([ItemIndex],[ItemName],[ItemDescription],[ItemPrice],[ItemVendor]) 
	VALUES(1061,'eu nibh','vel, vulputate eu, odio. Phasellus at augue','$9.47','Google'),
	(1062,'tellus sem mollis dui, in','sit amet ultricies sem magna nec quam.','$32.10','Borland'),
	(1063,'sollicitudin adipiscing ligula. Aenean gravida','Curabitur egestas nunc sed libero. Proin sed','$52.20','Apple Systems'),
	(1064,'non, sollicitudin a, malesuada id,','lacus. Aliquam','$47.73','Lavasoft'),
	(1065,'mollis. Duis sit amet diam','ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque',
		'$9.59','Yahoo'),
	(1066,'Donec est. Nunc ullamcorper,','malesuada fringilla est. Mauris eu turpis.','$50.36','Finale'),
	(1067,'eget','a felis ullamcorper viverra.','$95.16','Cakewalk'),
	(1068,'sit amet luctus','semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim','$45.54','Borland'),
	(1069,'dictum eu,','Mauris vestibulum, neque','$50.30','Apple Systems'),
	(1070,'elit,','convallis dolor. Quisque tincidunt pede','$89.64','Chami'),
	(1071,'amet massa. Quisque porttitor','nisl elementum purus, accumsan interdum libero dui nec','$82.58','Microsoft'),
	(1072,'non','ut, molestie in, tempus eu, ligula. Aenean euismod','$23.07','Chami'),
	(1073,'ullamcorper. Duis','cubilia Curae; Phasellus ornare. Fusce','$47.73','Yahoo'),
	(1074,'imperdiet nec, leo. Morbi','tristique','$88.32','Apple Systems'),
	(1075,'egestas,','tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,','$27.01','Macromedia'),
	(1076,'adipiscing lobortis risus. In','fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla',
		'$90.43','Cakewalk'),
	(1077,'Aliquam ultrices iaculis odio.','magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna.','$92.37','Finale'),
	(1078,'risus. Nunc ac sem','est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem','$11.31','Apple Systems'),
	(1079,'at, velit.','fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.','$74.22','Apple Systems'),
	(1080,'dui, nec tempus mauris','at augue id ante dictum cursus. Nunc mauris','$73.34','Sibelius');
INSERT INTO Corporate.ItemList([ItemIndex],[ItemName],[ItemDescription],[ItemPrice],[ItemVendor]) 
	VALUES(1081,'Donec','ipsum','$59.00','Lavasoft'),
	(1082,'vitae, erat. Vivamus nisi.','Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh.','$98.26','Adobe'),
	(1083,'ipsum. Phasellus vitae mauris sit','parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque 
		ac libero','$29.70','Chami'),
	(1084,'ipsum primis in faucibus orci','dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.',
		'$8.74','Sibelius'),
	(1085,'vitae, erat.','odio a purus. Duis elementum, dui','$85.25','Macromedia'),
	(1086,'metus.','magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie','$16.67','Microsoft'),
	(1087,'Cras vulputate velit','vel,','$78.26','Adobe'),
	(1088,'mattis. Integer eu','ac, fermentum vel, mauris. Integer sem','$54.14','Lavasoft'),
	(1089,'tempor','ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum','$47.07','Lycos'),
	(1090,'pede blandit','eu enim. Etiam imperdiet','$69.61','Chami'),
	(1091,'mauris sagittis placerat. Cras dictum','ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris','$48.00','Apple Systems'),
	(1092,'quis massa. Mauris','scelerisque neque sed sem','$52.15','Borland'),
	(1093,'Proin non','Cras pellentesque. Sed dictum. Proin','$31.14','Lavasoft'),
	(1094,'ipsum. Donec','commodo tincidunt nibh. Phasellus nulla. Integer vulputate,','$32.94','Lycos'),
	(1095,'iaculis enim, sit amet','dolor. Fusce','$5.43','Finale'),
	(1096,'Sed eget','eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et','$40.28','Lavasoft'),
	(1097,'Nunc ac sem','sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula','$38.27','Sibelius'),
	(1098,'Aliquam','Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla','$71.68','Chami'),
	(1099,'ultrices posuere','massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus','$32.03','Cakewalk'),
	(1100,'et netus et','adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. 
		Suspendisse non','$49.38','Apple Systems');
SET IDENTITY_INSERT Corporate.ItemList OFF
GO

--Employees
SET IDENTITY_INSERT Corporate.Employees ON
INSERT INTO Corporate.Employees([EmployeeId],[FirstName],[MiddleInit],[LastName],[Title],[Supervisor],[isManager],[isActive])
	VALUES(1,'Gary','E','Gygax','Game Master',NULL,1,1),
	(2,'Ray','A','Eichler','Store Manager',1,1,1),
	(3,'Alex','B','Sirtz','Store Manager',1,1,1),
	(4,'Neil','E','Davis','Store Manager',1,1,1),
	(5,'Joe','H','Reeve','Store Manager',1,1,1),
	(6,'James',NULL,'Reid','Store Manager',1,1,1),
	(7,'Ferdinand','U','Tyson','Warehouse Manager',1,1,1),
	(8,'Barbara','J','Ray','Corporate',6,0,1),
	(9,'Nissim','S','Foster','Corporate',5,0,0),
	(10,'Nina','F','Oliver','Warehouse',6,0,0),
	(11,'Gary','T','Day','Warehouse',4,0,1),
	(12,'Patricia','B','Cotton','Warehouse',2,0,1),
	(13,'Noble','P','Frost','Other',3,0,1),
	(14,'Ashton','L','Mclaughlin','Corporate',6,0,0),
	(15,'Hadley','V','Barnes','Store Associate',1,0,1),
	(16,'Connor','S','Goff','Warehouse',6,0,1),
	(17,'Abraham','K','Golden','Administrative',5,0,0),
	(18,'Helen','D','Lang','Warehouse',2,0,1),
	(19,'Jerry','V','Dillard','Administrative',1,0,0),
	(20,'Vaughan','I','Ayala','Corporate',5,0,0),
	(21,'Kevin','Y','Melendez','Corporate',4,0,1),
	(22,'Ross','A','Cooper','Other',6,0,0),
	(23,'Malcolm','I','Orr','Other',3,0,1),
	(24,'Justin','R','Wilcox','Corporate',5,0,0),
	(25,'Nicole','Y','Aguirre','Other',2,0,1),
	(26,'Noelle','G','Riley','Store Associate',6,0,1);
SET IDENTITY_INSERT Corporate.Employees OFF
GO

--Employee Details
INSERT INTO Corporate.EmployeeDetails([EmployeeId],[EmployeeEmail],[EmployeePhone],[EmployeeStAddress],[EmployeeCity],[EmployeeState],[EmployeeZip],[EmployeeSalary]) 
	VALUES(1,'Aenean.sed@facilisiSed.com','(917) 347-0029','P.O. Box 739, 5685 Sem Av.','Leamington','CO','36763','$85782.17'),
	(2,'Morbi.neque@eratVivamus.com','(754) 628-2632','Ap #247-5115 Ac Street','Castelmarte','CO','43472','$49176.40'),
	(3,'orci@rhoncusid.com','(467) 467-1383','674-4943 Magna Street','Salice Salentino','TX','92566','$22099.50'),
	(4,'montes@quis.net','(980) 607-8684','Ap #800-7491 Ligula St.','Huissen','LA','91457','$29110.22'),
	(5,'malesuada.malesuada@magnis.net','(687) 327-3250','P.O. Box 913, 7968 Ultrices Street','Limache','CA','40677','$33647.11'),
	(6,'tristique.senectus@suscipitnonummy.co.uk','(418) 160-4870','P.O. Box 455, 3316 Magna. St.','York','CA','15275','$63075.05'),
	(7,'dolor.sit@nonummyipsumnon.net','(376) 492-5694','164-7873 Semper, Rd.','Marcinelle','TX','25732','$47260.69'),
	(8,'tellus.lorem@tempus.org','(719) 203-2950','P.O. Box 305, 6821 Faucibus Rd.','Haut-Ittre','CA','47283','$77862.22'),
	(9,'eget.volutpat.ornare@IntegermollisInteger.net','(509) 770-4444','7097 Eros. Rd.','Somma Lombardo','CO','66236','$37161.33'),
	(10,'urna.suscipit.nonummy@felisadipiscing.co.uk','(898) 905-0489','Ap #195-2287 Nisl Av.','Miass','AZ','54456','$75943.67'),
	(11,'ante.dictum.cursus@metusvitaevelit.co.uk','(681) 647-4696','431-9330 Ligula. St.','Belgorod','LA','26024','$63729.54'),
	(12,'auctor@eueratsemper.net','(129) 622-4601','Ap #297-2277 Tristique Ave','Bolsward','CA','45349','$73534.28'),
	(13,'ornare.lectus.justo@acturpisegestas.edu','(907) 764-8097','Ap #606-3869 Vitae, Street','Ternate','CA','60591','$15108.03'),
	(14,'laoreet.lectus@quisurnaNunc.com','(938) 729-7667','P.O. Box 341, 4263 Fringilla Ave','Phoenix','LA','53576','$72419.50'),
	(15,'ac.turpis@ligulaDonecluctus.org','(332) 586-6231','Ap #754-9907 Mauris Rd.','Kearny','CO','63119','$99904.29'),
	(16,'tempus.mauris@Vestibulumaccumsanneque.com','(688) 975-8066','P.O. Box 647, 7537 Est. Avenue','Caldera','TX','25222','$91828.80'),
	(17,'Integer@ultriciesadipiscing.org','(251) 851-8932','541-6011 Primis Rd.','Armadale','CO','98582','$31971.65'),
	(18,'nulla@FuscemollisDuis.co.uk','(434) 491-3744','383-4454 Sed Av.','Tourinne','TX','79670','$57788.36'),
	(19,'aliquet@eget.co.uk','(436) 675-2169','Ap #711-4967 Mi St.','Haren','CO','33816','$94572.26'),
	(20,'Nam.interdum.enim@Suspendissenonleo.net','(870) 687-7777','Ap #746-2621 Nullam Av.','Jefferson City','TX','29999','$16128.32'),
	(21,'mollis.dui.in@sedturpis.ca','(540) 317-5565','Ap #391-2903 Pede Rd.','Montgomery','CA','29638','$18437.05'),
	(22,'aptent.taciti.sociosqu@feugiat.edu','(607) 539-6692','8216 Urna. Av.','Harlingen','LA','12307','$17710.91'),
	(23,'malesuada.fames@CuraeDonectincidunt.com','(328) 394-6674','P.O. Box 350, 9812 Vestibulum Rd.','Amritsar','CA','55394','$47592.79'),
	(24,'posuere.cubilia@enim.com','(482) 798-1691','957-8832 Velit Road','Serang','TX','40796','$84591.39'),
	(25,'odio.Phasellus@Maurisut.edu','(796) 940-0969','604 Fermentum Av.','Raiganj','TX','20373','$23062.89'),
	(26,'eleifend@seddolorFusce.co.uk','(621) 949-8146','Ap #141-6042 Hendrerit Rd.','Krishnanagar','CO','22652','$34110.24');
GO

--Stores
INSERT INTO Corporate.Stores([StoreId],[StoreManager],[StoreStAddress],[StoreCity],[StoreState],[StoreZip]) 
	VALUES(10,2,'Ap #562-7322 Nec Ave','Fraserburgh','TX','72138'),
	(11,3,'3083 Mollis. Av.','Oban','TX','99312'),
	(12,4,'588-2223 Nullam Av.','Khanewal','CA','99516'),
	(13,5,'Ap #470-3897 Ac Rd.','Machilipatnam','CA','74621'),
	(14,6,'P.O. Box 375, 2099 Ut St.','Korbach','CO','47941')
GO

--Customers
SET IDENTITY_INSERT Customer.Customers ON
INSERT INTO Customer.Customers([CustomerIndex],[FirstName],[LastName],[StreetAddress],[City],[State],[Zip],[Email],[Phone],[PreferredStore]) 
	VALUES(1,'Kimberly','Benson','2424 Donec Rd.','Ceuta','OR','63591','ultrices.iaculis.odio@utnisi.com','16980627 -0519','13'),
	(2,'Sopoline','Casey','267-1290 Nisi Avenue','Villanovafranca','OR','94176','a@Maecenasliberoest.ca','16870826 -3028','14'),
	(3,'Callie','Carroll','Ap #868-161 Ipsum Road','Neerheylissem','OR','17269','nisi@liberolacus.org','16230923 -9776','13'),
	(4,'Mara','Goodwin','Ap #429-428 Eu St.','Fossato Serralta','AZ','45683','accumsan.sed.facilisis@nisiCum.co.uk','16510106 -3880','12'),
	(5,'Philip','Kaufman','P.O. Box 762, 9665 Nulla. Rd.','Allentown','OR','82464','bibendum.ullamcorper@nullaDonec.com','16540530 -6449','14'),
	(6,'Martin','Ellison','895-2072 Porttitor Ave','Racine','CA','79596','mattis.semper@atlacus.co.uk','16110221 -3772','11'),
	(7,'Keegan','Hopper','756-8724 Egestas Rd.','Bevilacqua','AK','89364','ipsum.dolor.sit@afeugiat.ca','16380110 -2751','12'),
	(8,'Hoyt','Mooney','Ap #772-9999 Enim. Avenue','Cambridge','AZ','63559','dignissim.magna@pede.org','16430310 -1960','12'),
	(9,'Simon','Frazier','P.O. Box 637, 8004 Eros Road','Jalna','WA','67698','libero@ac.org','16810813 -6709','12'),
	(10,'MacKenzie','French','630-4727 Pede Rd.','Grembergen','TX','22075','Fusce.dolor.quam@Quisque.org','16040623 -0656','10'),
	(11,'Fiona','Guthrie','133-4022 Auctor Road','Chepstow','TX','52855','habitant.morbi.tristique@quisurnaNunc.edu','16261019 -2441','11'),
	(12,'Merrill','Boyle','P.O. Box 790, 4319 Eu, Rd.','Papudo','OR','31552','eget@dictum.com','16160816 -0162','11'),
	(13,'Kristen','Caldwell','Ap #511-9318 Pharetra, St.','Sonipat','AZ','17642','Aliquam.fringilla.cursus@id.edu','16520813 -9203','14'),
	(14,'Xantha','Austin','898-4610 Est, Rd.','Pfungstadt','WA','41905','lectus@ipsum.co.uk','16771116 -7895','14'),
	(15,'Evelyn','Stout','P.O. Box 825, 3174 Cum Rd.','Tonalá','AZ','50260','risus@nibhlaciniaorci.co.uk','16950602 -7763','11'),
	(16,'Ila','Puckett','Ap #461-9360 Mauris Street','Kinross','AZ','72933','luctus.lobortis.Class@In.org','16540201 -6967','11'),
	(17,'Ava','Stanton','Ap #287-7566 Sollicitudin Road','Cambridge','TX','20159','lorem@vehicularisus.com','16850730 -5723','11'),
	(18,'Laura','West','Ap #603-6906 Ultricies Street','Sacramento','OR','74769','Cras.dictum@id.net','16420214 -4335','14'),
	(19,'Lani','Cooke','8346 Et St.','Yeongcheon','TX','10811','Nam.ligula@viverra.org','16400508 -3052','12'),
	(20,'Carissa','Mathis','Ap #783-5430 Elit Rd.','Neder-Over-Heembeek','OR','21473','Vivamus.euismod@tellus.ca','16640213 -9841','13');
INSERT INTO Customer.Customers([CustomerIndex],[FirstName],[LastName],[StreetAddress],[City],[State],[Zip],[Email],[Phone],[PreferredStore]) 
	VALUES(21,'Maia','Barker','454-9899 Pede. Road','Cuccaro Vetere','WA','50972','vitae.risus.Duis@Namligula.org','16691009 -6541','13'),
	(22,'Roary','Roach','287-3066 Vestibulum Street','Aulnay-sous-Bois','TX','15469','amet.consectetuer.adipiscing@quisturpisvitae.ca',
		'16420210 -5765','14'),
	(23,'Curran','Donovan','P.O. Box 215, 7600 Ac, Rd.','Cambridge','OR','43131','elit.Curabitur@metus.ca','16081209 -6303','10'),
	(24,'Victor','Gonzalez','P.O. Box 953, 8517 Enim St.','Zaffelare','TX','47625','elit.pellentesque.a@Aliquamornare.co.uk','16850615 -4544',
		'10'),
	(25,'Carlos','Hall','9129 Magna. Rd.','Tumaco','AZ','55598','et.nunc@condimentum.edu','16230116 -9252','11'),
	(26,'Roth','Pitts','4458 Et, Road','Kashira','AZ','24924','sed@liberoettristique.org','16270823 -3313','11'),
	(27,'Risa','Richards','849-6357 Est Rd.','Rüsselsheim','AZ','30733','elit.pretium@Nullamscelerisque.net','16970511 -8611','12'),
	(28,'Madaline','Luna','866-2318 Mauris Ave','Koekelberg','WA','42187','non.ante.bibendum@necquam.ca','16201213 -8380','10'),
	(29,'Rafael','Cote','Ap #475-2688 Vivamus Road','Opprebais','TX','25627','Donec.felis@volutpatornare.org','16210510 -9710','12'),
	(30,'Forrest','Lamb','7991 Mauris, St.','Detroit','OR','61763','erat.nonummy.ultricies@magnaa.ca','16771104 -6974','13'),
	(31,'Sydnee','Ortega','8621 Curabitur Rd.','CŽroux-Mousty','CO','73935','bibendum.sed@semvitae.co.uk','16580712 -3558','12'),
	(32,'Uriah','Decker','Ap #217-4361 Per St.','Gravataí','TX','84101','id.blandit@tinciduntaliquamarcu.net','16250202 -9321','12'),
	(33,'Deanna','Mckinney','685-4324 Mi. Rd.','Frankfurt am Main','OR','72627','et.nunc@acfacilisis.co.uk','16160812 -0620','11'),
	(34,'Amber','Winters','Ap #604-9330 Enim Av.','Tucson','TX','21245','est@ullamcorper.net','16790404 -5775','13'),
	(35,'TaShya','Crosby','235-4380 Laoreet Road','Warisoulx','TX','16612','molestie.in@tempusmauris.edu','16650511 -4543','10'),
	(36,'Ainsley','Huffman','Ap #267-3693 Sapien, Ave','Karak','CA','38462','luctus@nullaDonecnon.com','16970716 -2245','12'),
	(37,'Wayne','Holman','562-8902 Faucibus Rd.','Cour-sur-Heure','OR','40289','eleifend@Maecenas.ca','16180820 -9934','14'),
	(38,'Lucius','Kirk','4720 Massa. Av.','Volokolamsk','FL','28963','ut.erat.Sed@dictumPhasellus.ca','16910304 -7677','10'),
	(39,'Josephine','Graham','P.O. Box 842, 9680 Posuere Rd.','Enschede','WA','82991','risus@Curabiturdictum.com','16041002 -6827','13'),
	(40,'Brianna','Clay','362-8102 Non, Rd.','Wonju','TX','86442','ornare@fringilla.co.uk','16420620 -3640','11');
INSERT INTO Customer.Customers([CustomerIndex],[FirstName],[LastName],[StreetAddress],[City],[State],[Zip],[Email],[Phone],[PreferredStore]) 
	VALUES(41,'Molly','Miles','P.O. Box 871, 247 Est, Rd.','Drayton Valley','CA','95752','Curabitur@tincidunt.co.uk','16560418 -0355','12'),
	(42,'Rowan','Suarez','Ap #899-643 Nunc Avenue','Bergen','AZ','40686','Donec@nec.ca','16080204 -5971','14'),
	(43,'Lacey','Craft','8916 Fusce Street','Vietri di Potenza','TX','49027','placerat.orci@accumsanconvallisante.ca','16740805 -8415','11'),
	(44,'Carson','Huff','4805 Ipsum. St.','Bostaniçi','AZ','22912','sed@massaSuspendisse.edu','16041226 -5118','12'),
	(45,'Brianna','Mcgowan','Ap #188-7427 Mi. Rd.','Essex','CO','64582','Aliquam@vehicula.co.uk','16020306 -4712','14'),
	(46,'Jena','Swanson','Ap #254-8362 Pretium Avenue','Cabo de Hornos','AK','40916','ligula.eu@luctussitamet.co.uk','16990111 -3838','11'),
	(47,'Xanthus','Mcdowell','490-5194 Enim. St.','Segni','AZ','29581','justo.Proin.non@Sed.co.uk','16700124 -5385','13'),
	(48,'Rashad','Hopkins','Ap #691-9366 Lobortis. Ave','Neder-Over-Heembeek','WA','74337','lacinia.orci@egetmagnaSuspendisse.com',
		'16140602 -1780','13'),
	(49,'Miranda','Castillo','162 Ligula. St.','Vadodara','CA','67333','quis@vehicula.net','16881220 -1369','11'),
	(50,'Melissa','Foreman','Ap #439-5364 Ornare Rd.','Onega','AK','75436','augue@malesuadavel.edu','16591019 -2912','12'),
	(51,'Hillary','Anderson','2652 Phasellus Av.','Dilsen-Stokkem','AK','12318','aliquam.iaculis.lacus@Nullamvelitdui.com','16370621 -3059',
		'12'),
	(52,'Quamar','Carlson','P.O. Box 187, 2643 Et Rd.','Elbląg','AK','65582','Donec@Crasvehiculaaliquet.org','16661024 -5828','10'),
	(53,'Jael','Phillips','8599 Velit Rd.','Davenport','CO','87137','lobortis.ultrices.Vivamus@ornaresagittis.ca','16660608 -0288','11'),
	(54,'Yetta','Rhodes','9708 Metus. St.','Lahore','CO','56846','diam@nunc.ca','16950614 -2737','14'),
	(55,'Shaine','Simpson','982-612 Est Ave','Obaix','AK','85571','natoque.penatibus@Quisque.ca','16640311 -3795','12'),
	(56,'Beau','Campos','Ap #774-5985 Proin Av.','Orai','OR','20824','dolor@Vestibulumaccumsan.co.uk','16691002 -5219','13'),
	(57,'Bevis','Nolan','457-9965 Sed Ave','Vallenar','FL','96996','faucibus.id.libero@sem.org','16840502 -0838','12'),
	(58,'Linus','Maxwell','595-3559 Cubilia St.','Nijkerk','TX','49389','Quisque.nonummy@pharetra.net','16770807 -0003','10'),
	(59,'Naida','Hardy','P.O. Box 101, 6560 Donec Avenue','Verrebroek','CO','49925','pede@sociisnatoque.edu','16130401 -6809','14'),
	(60,'Wyatt','Bowers','P.O. Box 265, 2772 Euismod St.','Çarşamba','WA','59051','mauris@posuerecubiliaCurae.com','16331209 -1782','13');
INSERT INTO Customer.Customers([CustomerIndex],[FirstName],[LastName],[StreetAddress],[City],[State],[Zip],[Email],[Phone],[PreferredStore]) 
	VALUES(61,'Kaye','Emerson','5683 Ornare Av.','St. Pölten','WA','55902','ipsum.sodales@convallis.org','16310717 -6947','14'),
	(62,'Thane','Clemons','2824 Velit. Street','North Vancouver','CA','81664','adipiscing.Mauris.molestie@molestieSed.net','16190416 -7226',
		'10'),
	(63,'Carson','Conrad','Ap #507-9453 Cursus Avenue','Nodebais','OR','18217','eu.tellus.Phasellus@Suspendissealiquetmolestie.edu',
		'16060409 -2692','11'),
	(64,'Gareth','Travis','P.O. Box 612, 1707 Mauris Road','Vijayawada','WA','49167','tristique.senectus@justoPraesentluctus.edu',
		'16821108 -6585','10'),
	(65,'Ruby','Ochoa','421-6984 Nam Rd.','Imst','AK','26320','semper.dui.lectus@laoreetposuere.org','16741025 -8821','11'),
	(66,'Sonia','Trujillo','280-5342 Donec Ave','Cambridge Bay','CA','60094','arcu@erat.com','16190510 -2107','11'),
	(67,'Shelly','Wiggins','5353 Id Av.','Pudahuel','TX','99149','et.netus.et@nuncidenim.edu','16500516 -4495','14'),
	(68,'Quinn','Leblanc','P.O. Box 474, 1073 Natoque St.','Township of Minden Hills','AK','51537','pellentesque.eget@ideratEtiam.co.uk',
		'16420207 -7378','10'),
	(69,'TaShya','Holt','P.O. Box 159, 7742 Tortor Road','Gadag Betigeri','WA','79239','nec.urna.et@placeratvelit.co.uk','16991119 -9140',
		'14'),
	(70,'Malcolm','James','997-6369 Sed, Street','Saint-Brieuc','TX','57664','Cum.sociis.natoque@semper.ca','16360402 -4780','10'),
	(71,'Lani','Jacobs','7569 Dui. Street','Maracalagonis','AK','34856','vitae.purus.gravida@loremfringillaornare.edu','16390106 -2657','14'),
	(72,'Larissa','Bird','1350 A, Avenue','Moustier-sur-Sambre','AZ','95951','tristique@dolor.ca','16160610 -7314','10'),
	(73,'Hedda','Barnes','Ap #514-2047 Nibh. Street','Trinità d''Agultu e Vignola','WA','77057','Suspendisse.dui.Fusce@velnisl.com',
		'16920717 -3692','13'),
	(74,'Hadassah','Flowers','396 Non Rd.','Stockerau','AK','75577','facilisis.non.bibendum@pedePraesenteu.ca','16620927 -3108','10'),
	(75,'Nadine','Duran','6967 Eget, Street','Sint-Joost-ten-Node','FL','96516','Donec.felis@auctorvelit.co.uk','16040615 -9376','13'),
	(76,'Gannon','Buck','122-9820 Id Rd.','Imst','FL','33914','rhoncus.id.mollis@tellusnonmagna.ca','16950930 -0696','10'),
	(77,'Salvador','Rosa','Ap #806-7156 Elit, Street','Birmingham','AK','41129','et.commodo.at@ullamcorpervelit.org','16480928 -4161','13'),
	(78,'Ivana','Holcomb','Ap #691-553 Dictum Ave','Longano','WA','38770','malesuada.malesuada@loremtristique.edu','16431114 -8912','10'),
	(79,'Ramona','Lee','1505 Vehicula. Road','Beauvechain','OR','89424','pulvinar.arcu@euismodenim.com','16690922 -3569','12'),
	(80,'Minerva','Burks','Ap #944-2219 Nullam Rd.','Frigento','WA','90360','ut.mi@vehicula.edu','16860519 -9416','13');
INSERT INTO Customer.Customers([CustomerIndex],[FirstName],[LastName],[StreetAddress],[City],[State],[Zip],[Email],[Phone],[PreferredStore]) 
	VALUES(81,'Russell','Marsh','5316 Sem Avenue','Ladispoli','FL','18971','ut@etmagnisdis.edu','16850527 -2255','11'),
	(82,'Dana','Hardy','7556 Mauris Av.','Carbonear','TX','67913','Vestibulum.ante@Aeneangravidanunc.co.uk','16760725 -0110','14'),
	(83,'Brenna','Buchanan','Ap #724-8712 Auctor Ave','Camarones','CO','89501','mauris@ultricesmauris.co.uk','16630805 -6180','12'),
	(84,'Duncan','Riley','P.O. Box 115, 5353 Porttitor Street','Nanton','WA','66476','netus.et.malesuada@faucibusut.net','16040812 -1366',
		'14'),
	(85,'Imogene','Potter','4248 Lobortis Av.','Rignano Garganico','FL','22429','ornare@natoque.org','16811216 -8060','11'),
	(86,'Selma','Flynn','215-7857 Eget, St.','Queenstown','CA','55330','tellus.imperdiet.non@Aeneanmassa.ca','16800503 -6135','14'),
	(87,'Steven','Maynard','6525 Curabitur Ave','Bruderheim','CO','29821','In.tincidunt.congue@utipsum.ca','16491114 -8031','14'),
	(88,'Beau','Walters','Ap #659-5992 Et St.','Los Muermos','CO','40034','tempor.lorem.eget@egetipsum.ca','16920706 -3794','11'),
	(89,'Dolan','Mcpherson','762-7019 Semper St.','Bonnyville','CO','36776','et@cursus.org','16041018 -6399','14'),
	(90,'Inga','Berg','Ap #513-1334 Elit Avenue','Marchihue','CO','48349','molestie@ultricesposuerecubilia.co.uk','16110220 -3104','14'),
	(91,'Yvette','Meyers','Ap #918-3674 Ornare, Ave','Dzerzhinsky','OR','59373','ante.ipsum.primis@Nuncpulvinararcu.org','16180820 -5551',
		'12'),
	(92,'Marvin','Tyson','Ap #625-4540 Facilisis St.','Fino Mornasco','WA','81879','nisl.Quisque@hendreritneque.ca','16470929 -5226','12'),
	(93,'Deirdre','Duran','P.O. Box 914, 3840 Cras Road','Fontecchio','FL','42261','orci@fringillaest.com','16181209 -1096','11'),
	(94,'Yolanda','Cole','3790 Elit. Avenue','Challand-Saint-Victor','AZ','30503','Morbi.non@esttempor.edu','16060604 -2174','14'),
	(95,'Karly','Bean','558-7522 Nec, St.','Blankenfelde-Mahlow','AZ','92329','lectus@dictumultriciesligula.net','16590212 -8288','13'),
	(96,'Walker','Howard','P.O. Box 620, 7335 Nam Street','Parndorf','AZ','97359','non@pharetrafeliseget.org','16570227 -8333','14'),
	(97,'Rosalyn','Pena','P.O. Box 211, 7060 Velit Av.','Ponoka','AK','11986','erat.Sed@accumsansed.com','16641205 -7371','10'),
	(98,'Fuller','Macdonald','2378 Gravida Rd.','Gretna','CO','81653','ullamcorper@euultricessit.co.uk','16220314 -5954','10'),
	(99,'Shafira','Rivers','Ap #451-2807 Cum Av.','Medio Atrato','CA','49343','Nunc@diamluctuslobortis.ca','16920115 -0134','13'),
	(100,'Evelyn','Head','4359 Lectus Road','San Juan (San Juan de Tibás)','AZ','42714','in.magna@aliquet.com','16290711 -3944','11');
SET IDENTITY_INSERT Customer.Customers OFF
GO

--Orders
SET IDENTITY_INSERT Corporate.Orders ON
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(1,'IU73RF-6217-7DY6',92,'2015-10-04 02:41:59',4,'2021-06-10 18:06:41'),
	(2,'AL0VBC-6921-1LO1',63,'2016-07-16 02:15:00',2,'2021-03-09 23:28:10'),
	(3,'TU9HNQ-8177-0PX1',43,'2016-12-07 23:59:23',2,'2019-11-01 19:26:59'),
	(4,'ZE9CQX-3831-3RZ6',17,'2016-06-28 17:04:23',3,'2020-05-18 23:25:37'),
	(5,'FM2RKO-8837-2OV9',2,'2018-09-30 08:21:49',2,'2019-12-06 03:34:03'),
	(6,'VM0CKC-4262-8GX5',6,'2012-06-20 15:04:14',0,'2019-11-19 08:43:39'),
	(7,'VM8MPB-5610-5FM6',74,'2016-06-01 19:04:12',0,'2020-07-29 10:53:05'),
	(8,'WG0EXK-6225-8VW2',10,'2013-11-24 23:28:30',3,'2020-03-08 12:25:10'),
	(9,'QU4UYS-0817-0AK3',13,'2018-07-28 00:07:22',0,'2020-05-19 21:44:16'),
	(10,'OS4DUB-6205-9UP7',22,'2016-12-25 06:31:32',1,'2019-09-15 17:40:02'),
	(11,'NJ3TRS-1634-2VA5',99,'2018-09-07 14:01:03',2,'2020-08-17 10:00:04'),
	(12,'JQ5VPF-0292-3VC5',79,'2014-10-28 01:58:00',1,'2020-03-03 13:55:24'),
	(13,'JZ3UHH-7061-4IW5',73,'2013-07-26 06:19:18',-1,'2021-01-07 23:46:49'),
	(14,'BQ8ALO-3701-8AA3',53,'2016-03-20 00:22:07',2,'2021-05-20 10:01:48'),
	(15,'ZX0GHH-5690-8BV3',97,'2016-04-26 06:18:50',4,'2019-12-15 21:33:57'),
	(16,'GQ6AAF-6738-0ZD8',64,'2016-04-19 05:09:06',-1,'2020-01-04 04:07:46'),
	(17,'RG1YGR-8685-3BP7',18,'2013-05-13 10:35:52',4,'2020-05-31 09:28:31'),
	(18,'MZ1LGO-5301-0EO8',40,'2016-07-27 13:06:38',0,'2020-09-07 10:24:57'),
	(19,'GA2NNL-3572-8NU6',66,'2018-07-12 14:33:11',0,'2019-09-19 17:53:53'),
	(20,'PG1FVB-5741-9HE7',51,'2014-09-12 21:35:15',-1,'2021-03-02 15:22:13');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(21,'CQ9JGN-5233-6NA3',87,'2017-06-02 01:30:32',1,'2020-07-12 06:42:50'),
	(22,'ZJ1MTH-6443-4TM5',19,'2018-11-16 23:24:49',-1,'2019-09-13 23:59:15'),
	(23,'OJ5HAL-7058-1GU0',68,'2018-02-06 01:00:30',0,'2020-09-15 02:39:42'),
	(24,'AP9TTG-4813-9ML4',22,'2014-12-25 15:12:09',0,'2020-05-02 20:55:44'),
	(25,'CB1OXA-3419-1HM9',7,'2012-12-14 08:19:38',-1,'2020-03-17 02:17:19'),
	(26,'FP6RCA-4167-1VW3',54,'2013-11-30 03:11:24',3,'2020-10-02 09:22:33'),
	(27,'WR5GDT-1277-1XW7',65,'2016-05-11 12:46:54',0,'2020-09-30 21:20:48'),
	(28,'HU9RXC-4933-1HP3',81,'2016-03-13 01:36:07',1,'2021-01-02 12:23:48'),
	(29,'XD9DJB-8341-5DT6',61,'2012-12-11 04:48:52',4,'2020-08-25 11:36:19'),
	(30,'WM8FGY-0395-4BW2',26,'2019-02-02 22:13:25',1,'2019-08-03 03:40:25'),
	(31,'BM5VYT-0854-7DU8',39,'2015-10-13 10:56:19',1,'2019-12-21 10:49:14'),
	(32,'GD9XTF-9096-5CK8',69,'2018-08-31 08:11:23',3,'2019-11-20 08:32:10'),
	(33,'OR8YWM-7714-3PD6',45,'2020-04-30 23:31:42',3,'2020-07-10 23:17:54'),
	(34,'OG3SXA-3491-7SD2',58,'2016-08-12 18:57:22',0,'2020-02-27 17:47:56'),
	(35,'WB6EAG-2599-2VY7',92,'2018-10-29 17:41:33',1,'2020-05-04 22:33:15'),
	(36,'BN2HTP-4544-5QY7',23,'2015-04-25 03:51:31',2,'2019-11-03 01:38:59'),
	(37,'KK1DQC-3541-9NC8',87,'2016-04-07 15:40:58',2,'2020-03-10 02:36:33'),
	(38,'SM4UPL-5803-8MZ4',25,'2019-03-30 11:18:55',2,'2019-08-30 01:33:06'),
	(39,'RX0LBY-1957-9ZF2',32,'2015-08-15 18:45:12',4,'2020-06-17 23:24:14'),
	(40,'KM1MPN-2136-7PJ9',83,'2017-08-12 09:29:12',0,'2020-03-31 16:39:30');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(41,'KR4NGW-1625-5RN6',93,'2016-05-30 19:27:21',4,'2020-11-17 21:13:21'),
	(42,'GU7FNS-0388-7YO8',42,'2015-10-05 02:10:15',3,'2020-11-09 01:25:53'),
	(43,'QF3MDR-7960-8ZL1',71,'2013-02-02 13:48:23',4,'2020-08-18 14:56:24'),
	(44,'VB1CIL-7038-7MH8',98,'2018-02-14 12:50:27',1,'2020-01-15 21:54:42'),
	(45,'SF2MWI-4943-2SR5',83,'2017-06-18 08:21:54',1,'2019-09-14 19:57:29'),
	(46,'MU8WIM-3315-4DE5',5,'2018-04-13 03:56:37',1,'2020-05-01 08:10:03'),
	(47,'DP3MNS-5848-6RU4',89,'2018-08-03 17:41:04',-1,'2021-01-30 03:04:07'),
	(48,'RC1QBQ-8990-9UG8',40,'2013-03-28 18:15:09',3,'2019-10-24 10:43:10'),
	(49,'OC1POE-7513-8XC4',42,'2014-03-04 07:29:21',4,'2020-05-13 01:49:24'),
	(50,'XF3WTW-7460-7DB3',35,'2019-01-20 10:33:44',2,'2021-05-30 18:18:29'),
	(51,'VW2QCB-1820-9DL0',58,'2013-11-29 08:40:43',2,'2020-03-26 19:51:31'),
	(52,'YL1IJS-3212-0FZ6',88,'2015-11-02 14:53:57',0,'2020-08-24 14:10:29'),
	(53,'JO9YWN-5337-5SC1',2,'2017-06-04 00:09:44',3,'2020-01-23 03:22:57'),
	(54,'DI8ZDS-7337-7TM7',9,'2019-04-25 20:35:18',2,'2020-09-14 13:42:03'),
	(55,'GC2KCU-0549-2JK9',27,'2015-01-23 04:07:37',-1,'2021-04-19 23:59:14'),
	(56,'HZ5AUG-8032-6KS8',73,'2017-08-02 14:07:34',1,'2019-12-21 16:47:46'),
	(57,'KN3UVW-6237-4HG4',53,'2013-04-05 15:12:54',2,'2019-12-30 02:06:06'),
	(58,'FA0PYS-0693-4AS3',3,'2018-07-11 09:48:05',3,'2020-12-29 23:40:32'),
	(59,'AA2EIQ-5761-4WP6',62,'2014-01-05 13:27:45',2,'2020-05-28 00:56:14'),
	(60,'KI6VKE-1967-7AH6',58,'2019-09-12 22:20:01',0,'2020-08-20 02:09:20');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(61,'IG9CCY-2068-1ZW9',10,'2018-09-15 05:59:16',3,'2020-07-20 01:00:32'),
	(62,'NV3CDM-5302-0QC6',76,'2019-02-21 05:24:44',-1,'2020-02-05 17:33:29'),
	(63,'UD4BWD-0218-7OS8',97,'2019-04-24 21:26:24',4,'2020-02-23 04:34:30'),
	(64,'AJ8LSB-0476-3QV4',61,'2014-05-14 20:59:04',4,'2021-06-09 15:32:44'),
	(65,'UA4JKI-2191-0RK2',60,'2019-02-27 06:53:12',4,'2020-09-10 06:57:02'),
	(66,'MI1MQJ-9077-8XG0',23,'2016-06-26 23:43:35',2,'2021-02-05 18:35:08'),
	(67,'SW6GSQ-1112-2DW4',61,'2018-08-25 03:36:38',2,'2019-11-02 18:48:01'),
	(68,'XA2JOS-0512-2QA2',64,'2018-04-01 02:20:45',4,'2021-04-08 21:19:02'),
	(69,'FT9EFB-0724-6FY3',83,'2017-06-01 04:22:44',4,'2019-09-25 06:31:51'),
	(70,'NZ1EVV-6467-9JJ3',69,'2019-04-05 00:22:59',1,'2021-02-08 21:48:10'),
	(71,'XU6QAM-4683-3VN0',32,'2015-09-10 04:35:47',0,'2020-05-23 01:04:45'),
	(72,'ZC7YSV-6476-2EX5',2,'2018-07-01 14:34:43',4,'2021-01-06 20:47:45'),
	(73,'ZK7TRW-8494-8YV5',52,'2013-11-18 04:03:55',1,'2021-05-11 03:07:18'),
	(74,'TZ8PGC-4698-5RW1',85,'2017-03-04 19:25:13',3,'2021-01-18 06:02:38'),
	(75,'OY0GXX-8336-8SK7',30,'2017-10-02 14:50:16',1,'2020-01-03 00:48:30'),
	(76,'CZ3SWC-8724-9BI0',65,'2014-08-25 00:55:29',4,'2021-01-01 12:26:58'),
	(77,'YO5IGN-8357-7LO8',93,'2015-01-15 12:23:00',3,'2021-03-11 03:10:15'),
	(78,'JA8MHO-3818-5WV5',44,'2015-07-31 14:08:10',1,'2021-03-03 09:01:52'),
	(79,'XS8FQH-9317-4QL3',72,'2018-09-28 08:52:53',-1,'2021-01-13 23:32:45'),
	(80,'VY1TUZ-1413-1TL3',22,'2013-11-18 04:18:48',1,'2020-04-01 22:04:28');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(81,'MH1EMN-4031-4QL5',98,'2014-06-02 00:09:58',3,'2021-02-20 18:58:47'),
	(82,'GC8BDP-6620-2MR6',49,'2013-01-13 01:52:28',1,'2021-05-13 13:23:43'),
	(83,'ES5BOH-1332-7NI4',19,'2017-07-24 10:34:13',2,'2020-09-23 10:29:11'),
	(84,'IG8NVE-3245-1XR7',74,'2014-06-22 19:36:22',2,'2020-11-29 23:00:55'),
	(85,'PA1MTR-2154-5CO5',96,'2017-05-28 22:07:38',4,'2019-07-18 02:18:01'),
	(86,'JB0QTO-9345-2GU2',84,'2015-04-13 08:56:59',4,'2019-09-17 05:05:43'),
	(87,'GS0FXC-4143-9EA5',44,'2015-01-27 04:22:19',0,'2020-01-05 19:14:51'),
	(88,'VB1NND-8074-3QC8',31,'2012-11-30 14:33:12',0,'2019-12-08 08:56:18'),
	(89,'NT7XWC-0909-9JN1',87,'2016-03-09 00:42:02',-1,'2019-09-29 03:15:22'),
	(90,'QL3DFK-3127-7QP1',29,'2012-11-24 14:41:07',-1,'2020-05-27 05:08:03'),
	(91,'OJ6XVP-3199-6HF1',66,'2019-06-30 14:16:33',0,'2020-07-04 00:26:31'),
	(92,'ZM9HPA-0662-7YX9',69,'2016-12-29 12:52:23',3,'2021-06-02 10:10:26'),
	(93,'UG5VIF-0836-7XM1',19,'2012-08-17 16:47:10',3,'2019-10-19 02:15:46'),
	(94,'KT6JIB-9093-9NR9',16,'2017-01-17 18:52:31',3,'2020-07-06 01:50:43'),
	(95,'XM3NJV-0547-1DN1',39,'2015-10-06 15:20:21',-1,'2020-07-18 03:22:08'),
	(96,'QX1WOF-7333-7JY9',34,'2016-11-30 06:34:38',1,'2020-04-01 22:40:39'),
	(97,'BQ7DYP-7377-8XJ5',50,'2016-06-21 01:45:53',3,'2021-01-04 01:28:37'),
	(98,'GH0UVH-2652-3DR6',59,'2017-01-07 17:28:39',1,'2019-11-26 19:56:35'),
	(99,'TU2GWU-1651-3FD4',65,'2016-08-24 11:36:10',1,'2021-04-20 02:33:11'),
	(100,'NO7WVM-8516-6MW0',18,'2018-07-28 19:52:03',0,'2019-08-16 03:06:02');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(101,'MI8DKE-5534-9IJ4',21,'2015-08-30 16:29:33',2,'2019-11-06 12:37:33'),
	(102,'NC6AQC-8752-9QR6',33,'2015-02-14 11:04:30',-1,'2021-03-31 18:09:51'),
	(103,'PD6IYM-7641-8LX2',85,'2017-09-22 17:45:43',1,'2020-03-03 11:21:35'),
	(104,'JT2ACT-9467-9BL7',85,'2016-06-14 05:20:32',-1,'2019-11-18 11:52:16'),
	(105,'MQ2AXN-6108-3LM3',62,'2017-12-30 08:46:08',3,'2020-06-26 19:01:08'),
	(106,'WJ4WZU-7742-1LE4',70,'2015-01-05 11:33:37',2,'2020-10-28 19:27:30'),
	(107,'SL2XFI-1730-1SK3',69,'2012-07-22 10:57:04',3,'2019-10-12 13:27:04'),
	(108,'SW8PKG-5695-6RB4',3,'2017-09-26 20:15:03',1,'2019-07-08 02:37:47'),
	(109,'FJ1OAB-4482-3EB2',47,'2013-11-21 01:45:41',2,'2020-11-21 08:42:47'),
	(110,'FC1ONJ-3516-3HP7',66,'2017-08-01 02:47:09',1,'2019-11-25 00:46:51'),
	(111,'CJ9YIY-9673-9HD9',88,'2016-10-09 13:15:31',-1,'2021-04-13 12:11:31'),
	(112,'IJ2MSU-2774-9UJ3',7,'2019-03-21 15:46:34',-1,'2019-11-15 13:07:26'),
	(113,'PX0GLG-9874-1VD5',8,'2020-05-07 16:37:07',1,'2019-07-17 11:59:36'),
	(114,'FZ2YVQ-6199-3OQ5',15,'2014-06-20 11:04:04',2,'2019-10-19 11:34:17'),
	(115,'OX9YIO-0790-9RB3',62,'2013-03-29 17:56:19',3,'2021-06-19 15:30:40'),
	(116,'PQ3QBW-0021-0FO7',41,'2012-11-08 10:15:24',-1,'2019-08-25 17:31:12'),
	(117,'YJ3VBM-6799-9AH7',86,'2014-01-20 13:20:47',-1,'2021-03-24 20:44:51'),
	(118,'RI6OFH-6038-0YW4',46,'2019-01-13 21:12:28',-1,'2019-10-21 01:50:24'),
	(119,'LW5XCP-7463-9DE3',59,'2013-06-10 16:14:08',4,'2020-06-04 18:51:38'),
	(120,'JJ4URO-0721-4NG0',4,'2018-07-28 00:08:41',3,'2020-09-17 09:29:12');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(121,'NW6GTT-0196-9EY5',8,'2013-07-15 16:17:20',0,'2021-05-04 07:27:35'),
	(122,'YH2MEX-0077-3EH0',17,'2014-09-15 01:26:02',-1,'2021-05-27 20:01:17'),
	(123,'CT3DEO-0337-5PY8',97,'2016-12-03 10:42:10',2,'2020-07-03 06:58:26'),
	(124,'PB9MZO-9311-1NA8',48,'2019-02-03 10:56:40',2,'2020-05-27 21:28:47'),
	(125,'HD9HVR-4697-3OV8',3,'2019-05-26 09:30:38',3,'2019-09-12 16:05:02'),
	(126,'QL1RAI-1222-1QU3',92,'2017-07-09 08:03:29',-1,'2019-08-27 12:42:55'),
	(127,'WD2WBD-3950-9LR2',34,'2019-07-15 23:54:48',2,'2020-02-06 11:11:23'),
	(128,'VI4JLA-6841-7MA2',32,'2020-01-31 20:31:37',0,'2021-04-09 18:06:51'),
	(129,'PF1TAJ-7688-1BG4',69,'2018-12-19 01:33:53',4,'2020-02-25 21:42:23'),
	(130,'YR5KVK-1666-0KB6',92,'2019-06-21 04:26:31',3,'2019-07-19 07:25:14'),
	(131,'UQ0UWO-2751-1ZZ2',53,'2018-09-09 00:06:49',0,'2020-11-24 06:00:19'),
	(132,'RE3JGP-3596-7ZP2',72,'2020-02-21 11:59:28',0,'2019-11-12 23:53:34'),
	(133,'GV6KUI-2483-7YM7',30,'2016-05-22 04:38:27',1,'2021-06-18 06:05:26'),
	(134,'CJ4GUZ-5278-7EP6',48,'2013-09-27 20:25:20',1,'2020-08-31 03:07:13'),
	(135,'LL7EDK-0154-8AU2',67,'2017-05-09 00:18:38',1,'2020-07-20 20:27:28'),
	(136,'OW3GQV-6905-4QN5',29,'2018-01-15 15:35:10',-1,'2020-04-30 03:00:22'),
	(137,'WC3ZGW-7484-7KK0',39,'2016-08-21 14:21:10',2,'2020-10-17 17:47:29'),
	(138,'MX5IUM-8106-1SS3',37,'2016-07-29 10:51:14',1,'2020-07-01 12:57:11'),
	(139,'HC9CGZ-5040-9RA5',78,'2016-12-31 22:56:42',-1,'2021-04-01 07:55:21'),
	(140,'RB5OIA-0893-1KQ4',67,'2019-07-10 07:13:06',4,'2021-05-11 07:14:58');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(141,'JA0HYA-2996-2HK2',80,'2015-12-29 11:21:00',4,'2020-01-26 19:15:50'),
	(142,'KA5ASK-4135-9FD9',53,'2018-03-08 04:13:53',1,'2021-02-19 05:14:19'),
	(143,'NB1GHN-7380-7OM2',7,'2019-06-10 16:59:05',3,'2021-01-01 23:33:59'),
	(144,'KD7TAR-7275-9EE3',2,'2017-06-02 08:13:42',2,'2020-08-07 15:06:02'),
	(145,'YK8VEW-2027-2VZ9',22,'2013-11-10 11:28:42',3,'2019-08-22 13:41:52'),
	(146,'PG6FFL-4761-8IB4',61,'2013-03-25 00:48:33',-1,'2021-01-21 08:33:32'),
	(147,'MI2UOM-9128-5CX8',9,'2016-09-05 06:18:00',3,'2020-12-20 05:02:42'),
	(148,'AI3KKC-9571-5WI5',50,'2019-06-07 16:26:44',2,'2020-03-13 06:42:37'),
	(149,'GT5ESG-3196-3WC3',88,'2013-12-31 16:12:34',4,'2020-08-30 21:13:11'),
	(150,'MS3JYN-7687-5LU2',63,'2017-01-15 20:19:38',0,'2019-07-03 04:00:26'),
	(151,'RJ9IZS-1505-0PL8',92,'2016-07-25 19:02:28',4,'2020-02-05 04:10:35'),
	(152,'WD7WCD-1878-1OJ6',29,'2012-09-20 14:05:19',-1,'2020-01-17 06:11:27'),
	(153,'UZ1PJM-0860-1XK2',41,'2015-03-07 05:05:05',1,'2019-10-31 01:11:19'),
	(154,'YI5PYW-3516-9WT3',80,'2015-09-09 13:01:00',-1,'2019-07-08 11:36:30'),
	(155,'AW2DZA-1607-9FI8',74,'2016-07-18 15:27:37',0,'2019-11-14 19:13:09'),
	(156,'NS1CWD-4625-6BU9',80,'2017-06-10 09:38:05',1,'2020-02-29 21:11:29'),
	(157,'NG2CYB-2116-8YI3',46,'2018-06-24 01:15:39',4,'2019-09-08 09:16:15'),
	(158,'LH7XDZ-3299-7US3',89,'2017-05-20 19:31:44',2,'2020-02-11 14:45:48'),
	(159,'SN4BOB-8574-8FD3',97,'2017-06-09 09:13:05',3,'2019-12-15 13:41:44'),
	(160,'UM8BDA-0778-7CV9',81,'2017-04-19 18:17:02',-1,'2021-02-27 08:44:15');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(161,'JU3YWT-8946-7JQ5',25,'2015-07-31 10:03:45',-1,'2020-11-22 23:08:57'),
	(162,'RF9QZW-9151-4HC6',66,'2012-06-07 11:36:33',3,'2020-02-18 12:09:54'),
	(163,'HV7IYW-4242-3GE8',44,'2017-10-29 00:41:24',4,'2020-10-09 03:37:04'),
	(164,'QQ9UXF-9579-5XP3',69,'2015-01-08 02:46:38',4,'2021-01-21 12:05:40'),
	(165,'MN0GQG-9810-6CX1',83,'2014-09-10 03:44:08',-1,'2020-11-23 05:12:19'),
	(166,'TZ4FPN-9350-1XT4',63,'2012-10-23 16:45:47',0,'2020-01-11 18:08:51'),
	(167,'HM3FPO-9784-9LT2',66,'2018-09-18 19:58:16',2,'2020-08-22 16:54:51'),
	(168,'KI1FFA-7823-6UN0',83,'2012-06-17 13:01:54',3,'2020-06-24 15:16:36'),
	(169,'AA2SAB-0570-2NA3',6,'2019-08-28 15:46:15',-1,'2019-10-15 10:12:08'),
	(170,'HR5WXC-4764-1BU9',53,'2015-05-09 09:21:10',-1,'2020-01-21 14:46:28'),
	(171,'BH6ZAM-3233-1ST4',12,'2019-11-14 21:36:41',-1,'2021-01-12 08:09:18'),
	(172,'SA2UJQ-4041-2IV7',33,'2017-05-18 03:32:27',3,'2021-06-29 00:43:11'),
	(173,'XG0JYC-2059-4AM1',55,'2018-03-03 14:50:54',1,'2019-12-29 23:29:37'),
	(174,'XQ6BXT-8776-1JP2',86,'2018-04-10 14:13:07',3,'2019-09-13 10:56:56'),
	(175,'VV8HDW-3584-8KI5',24,'2014-01-14 12:13:46',0,'2020-02-26 19:14:18'),
	(176,'NF7LDE-2394-6RF9',74,'2015-05-09 20:52:19',3,'2021-04-16 16:17:03'),
	(177,'BG2DPM-6937-5WK6',13,'2016-07-13 04:02:26',0,'2020-05-23 04:22:34'),
	(178,'GB0SAJ-1472-4BB6',89,'2013-11-14 05:01:13',1,'2021-01-13 14:23:35'),
	(179,'RI5QET-7782-9FW7',74,'2012-08-05 05:45:41',3,'2020-11-08 15:53:52'),
	(180,'XX3JCO-5956-9LQ2',18,'2020-06-07 21:20:44',0,'2020-07-03 22:50:49');
INSERT INTO Corporate.Orders([OrderIndex],[OrderId],[CustomerId],[OrderDateTime],[OrderStatus],[OrderStatusDate]) 
	VALUES(181,'JD2RSP-0871-7RR0',63,'2018-11-26 06:19:24',3,'2020-03-29 02:43:22'),
	(182,'LG0CUE-7848-0ME7',42,'2018-09-25 16:58:31',2,'2020-07-03 14:18:50'),
	(183,'XD6VDH-6298-6IB4',19,'2016-12-23 10:16:16',4,'2021-05-18 03:38:23'),
	(184,'ZT0AYB-4680-7FN7',14,'2020-03-05 14:37:10',3,'2020-03-17 11:43:28'),
	(185,'BQ4UVQ-8302-9FJ1',74,'2017-05-10 08:17:25',0,'2021-03-28 19:36:06'),
	(186,'SH8FYV-8944-9PV2',94,'2016-10-25 19:30:09',1,'2019-11-16 15:52:38'),
	(187,'GA4HIE-8076-7UV1',63,'2019-06-13 03:21:44',0,'2020-03-21 17:25:24'),
	(188,'SK5RWA-8433-6GQ8',93,'2019-01-21 01:45:27',4,'2020-04-17 11:55:33'),
	(189,'VO6JHB-3217-3KV5',81,'2016-06-29 09:14:05',2,'2020-11-08 10:04:28'),
	(190,'OV2FTY-7360-6AY9',17,'2013-03-06 20:06:01',1,'2020-12-02 01:27:56'),
	(191,'HG3JZB-7453-1XV0',91,'2017-11-09 13:50:11',4,'2020-09-02 11:50:14'),
	(192,'WJ1XZK-2929-9HH7',32,'2013-12-15 05:24:39',0,'2021-04-19 16:16:55'),
	(193,'BD9ULE-1980-0CD9',48,'2017-08-24 20:32:50',-1,'2019-10-24 16:24:20'),
	(194,'ZV0KGM-9012-3HT7',33,'2014-03-27 17:12:49',4,'2020-08-27 22:57:16'),
	(195,'FB4SWY-9959-3VI2',29,'2014-08-10 08:44:39',-1,'2020-02-26 00:21:03'),
	(196,'EA5WXY-2567-0FG5',11,'2014-10-05 00:42:02',3,'2020-10-22 11:20:08'),
	(197,'HQ8OZE-4358-0QG0',89,'2016-06-28 12:13:24',3,'2020-08-22 08:44:19'),
	(198,'LQ2GDV-1872-3QG8',25,'2013-12-31 07:02:01',0,'2020-10-18 08:35:38'),
	(199,'JU3WSR-4951-3CL4',31,'2014-04-27 07:12:56',-1,'2019-12-29 12:00:08'),
	(200,'WL1AJU-3492-7VV3',16,'2017-04-02 12:52:47',-1,'2019-11-22 19:45:52');
SET IDENTITY_INSERT Corporate.Orders OFF
GO

--Order Invoices
SET IDENTITY_INSERT Corporate.OrderInvoice ON
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(1,156,1010,6),(2,137,1060,6),(3,66,1016,6),(4,140,1067,6),(5,15,1017,6),
	(6,178,1056,1),(7,159,1071,9),(8,167,1076,2),(9,160,1010,10),
	(10,77,1059,9),(11,190,1009,5),(12,19,1055,10),(13,113,1024,1),(14,113,1012,6),
	(15,56,1071,4),(16,117,1005,4),(17,173,1086,2),(18,90,1023,5),(19,178,1091,10),(20,87,1066,8);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(21,29,1023,3),(22,101,1075,1),(23,119,1051,3),(24,165,1099,8),(25,56,1007,9),
	(26,52,1048,7),(27,126,1058,4),(28,128,1090,3),(29,164,1061,4),
	(30,67,1018,2),(31,66,1055,5),(32,163,1099,1),(33,136,1044,1),(34,77,1006,4),
	(35,44,1054,8),(36,126,1004,10),(37,179,1003,3),(38,154,1101,9),(39,178,1061,6),(40,72,1079,2);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(41,136,1074,7),(42,38,1036,5),(43,189,1038,4),(44,113,1098,8),
	(45,36,1075,10),(46,117,1028,10),(47,33,1036,3),(48,103,1045,7),(49,113,1031,9),
	(50,189,1013,8),(51,156,1060,4),(52,82,1025,6),(53,84,1057,7),(54,175,1022,6),
	(55,123,1029,8),(56,160,1061,6),(57,188,1064,4),(58,132,1094,7),(59,145,1092,8),(60,13,1070,9);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(61,111,1034,10),(62,51,1003,10),(63,165,1048,2),(64,81,1074,3),
	(65,76,1024,2),(66,192,1057,4),(67,185,1042,9),(68,63,1049,3),(69,101,1052,9),
	(70,63,1016,8),(71,33,1058,8),(72,48,1089,3),(73,177,1070,5),(74,144,1010,4),
	(75,154,1032,6),(76,184,1085,9),(77,22,1037,8),(78,35,1057,2),(79,166,1007,6),(80,190,1081,7);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(81,23,1037,2),(82,83,1034,2),(83,19,1045,9),(84,25,1098,1),(85,72,1054,2),
	(86,53,1095,1),(87,57,1019,8),(88,194,1077,2),(89,184,1018,6),
	(90,158,1060,1),(91,2,1058,5),(92,89,1062,7),(93,70,1032,7),(94,48,1076,6),
	(95,25,1091,1),(96,1,1078,3),(97,95,1002,8),(98,191,1009,10),(99,102,1005,5),(100,64,1030,4);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(101,156,1045,2),(102,167,1050,8),(103,183,1038,3),(104,62,1063,1),
	(105,31,1101,8),(106,54,1093,5),(107,174,1027,2),(108,184,1059,3),(109,187,1059,7),
	(110,35,1023,3),(111,23,1060,9),(112,32,1050,10),(113,24,1074,10),(114,130,1030,6),
	(115,163,1016,7),(116,59,1043,5),(117,101,1095,8),(118,139,1007,6),(119,178,1089,3),(120,144,1004,7);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(121,132,1026,5),(122,166,1055,3),(123,135,1080,7),(124,182,1043,1),
	(125,44,1070,6),(126,145,1100,1),(127,28,1047,6),(128,89,1080,8),(129,30,1044,4),
	(130,27,1098,8),(131,150,1021,9),(132,33,1059,3),(133,93,1084,7),(134,23,1017,10),
	(135,43,1053,4),(136,34,1029,4),(137,111,1018,4),(138,145,1051,5),(139,109,1086,3),(140,64,1082,2);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(141,27,1033,2),(142,159,1096,10),(143,188,1093,4),(144,8,1019,6),
	(145,120,1097,4),(146,78,1084,7),(147,149,1016,4),(148,16,1099,9),(149,8,1053,10),
	(150,177,1061,3),(151,34,1041,5),(152,126,1003,7),(153,13,1089,6),(154,61,1097,3),
	(155,83,1067,6),(156,41,1040,1),(157,67,1094,5),(158,45,1050,1),(159,109,1052,10),(160,114,1059,7);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(161,172,1084,9),(162,51,1085,7),(163,46,1015,5),(164,109,1007,9),
	(165,150,1069,5),(166,147,1051,5),(167,58,1008,6),(168,78,1001,6),(169,184,1054,2),
	(170,125,1061,6),(171,137,1045,3),(172,70,1091,9),(173,105,1071,8),(174,89,1027,5),
	(175,193,1018,6),(176,20,1028,6),(177,34,1031,9),(178,87,1093,7),(179,198,1080,4),(180,161,1098,8);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(181,172,1021,9),(182,96,1037,5),(183,141,1040,4),(184,190,1063,9),
	(185,70,1077,5),(186,154,1065,10),(187,39,1028,8),(188,120,1066,7),(189,182,1091,2),
	(190,99,1065,1),(191,41,1032,1),(192,26,1008,5),(193,172,1001,4),(194,155,1009,9),
	(195,2,1011,4),(196,150,1022,1),(197,132,1093,10),(198,98,1081,7),(199,166,1038,8),(200,17,1023,9);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(201,170,1087,1),(202,7,1040,1),(203,52,1027,3),(204,87,1034,9),
	(205,66,1078,7),(206,139,1039,6),(207,53,1046,9),(208,137,1004,5),(209,141,1031,10),
	(210,61,1077,3),(211,124,1005,3),(212,38,1039,7),(213,23,1064,4),(214,179,1101,10),
	(215,50,1042,5),(216,16,1098,3),(217,24,1023,1),(218,60,1050,4),(219,96,1069,7),(220,198,1015,3);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(221,162,1097,10),(222,63,1031,2),(223,20,1011,1),(224,128,1072,4),
	(225,87,1084,7),(226,35,1038,5),(227,131,1080,9),(228,9,1072,9),(229,93,1058,4),
	(230,98,1061,1),(231,177,1081,2),(232,114,1027,6),(233,41,1050,4),(234,35,1024,6),
	(235,81,1005,3),(236,79,1028,9),(237,166,1026,10),(238,151,1087,7),(239,1,1066,7),(240,182,1083,1);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(241,158,1081,4),(242,199,1097,8),(243,161,1038,8),(244,123,1015,2),
	(245,8,1091,2),(246,77,1071,4),(247,27,1004,9),(248,123,1014,9),(249,145,1094,10),
	(250,128,1084,4),(251,165,1028,7),(252,97,1055,9),(253,178,1066,10),(254,21,1003,2),
	(255,113,1101,9),(256,172,1097,6),(257,31,1073,4),(258,20,1027,2),(259,27,1101,8),(260,22,1046,3);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(261,105,1072,7),(262,200,1043,1),(263,71,1088,9),(264,78,1036,6),(265,121,1093,3),
	(266,188,1064,7),(267,104,1101,5),(268,62,1078,1),(269,15,1074,3),
	(270,76,1032,10),(271,180,1057,9),(272,56,1054,10),(273,152,1079,8),(274,148,1096,8),
	(275,128,1028,7),(276,116,1019,10),(277,153,1027,7),(278,193,1040,3),(279,72,1051,2),(280,87,1011,10);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(281,171,1086,1),(282,79,1035,6),(283,173,1071,8),(284,143,1005,1),
	(285,157,1100,4),(286,190,1038,10),(287,120,1098,5),(288,102,1057,4),(289,70,1046,1),
	(290,20,1070,4),(291,162,1031,6),(292,47,1018,7),(293,51,1004,6),(294,93,1048,10),
	(295,89,1051,4),(296,104,1057,5),(297,177,1047,2),(298,118,1035,6),(299,187,1045,5),(300,38,1022,5);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(301,84,1089,6),(302,143,1084,10),(303,22,1092,3),(304,12,1093,8),(305,43,1073,4),
	(306,187,1074,2),(307,9,1056,8),(308,69,1037,7),(309,23,1097,8),(310,121,1055,6),
	(311,126,1024,10),(312,59,1050,8),(313,58,1056,2),(314,130,1087,6),(315,52,1095,4),
	(316,10,1080,8),(317,164,1083,10),(318,94,1068,1),(319,39,1014,9),(320,167,1010,4);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(321,175,1045,10),(322,68,1037,4),(323,134,1061,8),(324,147,1040,1),
	(325,196,1037,9),(326,146,1047,6),(327,194,1043,1),(328,172,1062,4),(329,151,1075,6),
	(330,111,1013,2),(331,72,1029,6),(332,30,1094,6),(333,81,1079,8),(334,109,1091,4),
	(335,8,1018,6),(336,107,1002,1),(337,192,1021,2),(338,108,1089,6),(339,159,1052,6),(340,72,1035,9);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(341,81,1054,2),(342,94,1071,3),(343,5,1080,5),(344,96,1040,8),(345,144,1070,4),
	(346,23,1013,7),(347,59,1060,6),(348,27,1072,8),(349,37,1082,1),(350,42,1024,1),
	(351,128,1055,10),(352,177,1005,3),(353,59,1036,8),(354,173,1015,9),(355,89,1075,10),
	(356,29,1057,9),(357,83,1088,1),(358,179,1085,4),(359,116,1093,7),(360,138,1058,5);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(361,62,1018,8),(362,170,1080,2),(363,13,1010,8),(364,111,1092,7),
	(365,121,1021,9),(366,83,1044,3),(367,44,1025,4),(368,12,1047,10),(369,103,1029,8),
	(370,115,1041,1),(371,177,1056,5),(372,8,1100,9),(373,182,1053,6),(374,59,1025,5),
	(375,184,1016,10),(376,160,1018,7),(377,126,1042,10),(378,97,1094,5),(379,11,1029,3),(380,82,1077,2);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(381,199,1071,3),(382,140,1019,6),(383,21,1004,2),(384,171,1034,7),
	(385,18,1011,4),(386,163,1100,5),(387,122,1017,7),(388,58,1051,3),(389,156,1051,10),
	(390,51,1034,1),(391,191,1064,1),(392,93,1014,2),(393,108,1002,9),(394,49,1013,6),
	(395,45,1027,1),(396,153,1085,4),(397,195,1043,10),(398,41,1028,8),(399,113,1062,10),(400,175,1045,4);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(401,120,1002,2),(402,109,1024,3),(403,163,1048,3),(404,97,1076,5),
	(405,43,1028,9),(406,73,1053,8),(407,2,1082,3),(408,54,1060,6),(409,54,1006,8),
	(410,116,1094,2),(411,23,1067,10),(412,84,1015,1),(413,61,1013,8),(414,72,1008,6),
	(415,3,1081,7),(416,108,1054,7),(417,78,1089,10),(418,134,1046,7),(419,104,1087,10),(420,196,1067,5);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(421,67,1041,3),(422,149,1006,4),(423,195,1042,4),(424,145,1018,2),
	(425,47,1038,5),(426,162,1001,4),(427,26,1061,9),(428,182,1049,1),(429,137,1099,5),
	(430,30,1034,3),(431,114,1059,1),(432,76,1086,4),(433,58,1054,9),(434,84,1019,4),
	(435,177,1065,1),(436,49,1080,8),(437,192,1066,3),(438,130,1035,6),(439,9,1051,9),(440,73,1055,5);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(441,25,1057,1),(442,61,1002,9),(443,12,1022,2),(444,18,1039,3),
	(445,93,1073,3),(446,51,1082,2),(447,140,1015,9),(448,199,1092,10),(449,147,1029,9),
	(450,44,1064,9),(451,24,1004,5),(452,149,1048,1),(453,12,1012,5),(454,29,1039,10),
	(455,134,1055,2),(456,69,1012,5),(457,83,1007,7),(458,143,1064,6),(459,113,1065,6),(460,152,1041,5);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(461,114,1072,4),(462,84,1009,4),(463,77,1020,1),(464,74,1052,8),
	(465,92,1095,7),(466,148,1026,3),(467,103,1005,10),(468,154,1098,1),(469,7,1098,1),
	(470,153,1040,3),(471,189,1058,4),(472,53,1072,10),(473,81,1094,5),(474,154,1034,2),
	(475,164,1057,6),(476,200,1067,1),(477,159,1079,3),(478,165,1057,2),(479,85,1024,9),(480,121,1014,2);
INSERT INTO Corporate.OrderInvoice([InvoiceLineNumber],[OrderIndex],[ItemId],[ItemQuantity]) 
	VALUES(481,159,1039,4),(482,65,1078,8),(483,82,1085,6),(484,197,1088,10),
	(485,137,1082,6),(486,130,1012,9),(487,63,1005,8),(488,68,1020,1),(489,141,1007,1),
	(490,91,1045,8),(491,93,1037,5),(492,3,1018,3),(493,113,1036,4),(494,175,1073,2),
	(495,126,1013,7),(496,194,1018,5),(497,28,1020,8),(498,16,1008,2),(499,54,1019,1),(500,170,1096,8);
SET IDENTITY_INSERT Corporate.OrderInvoice OFF
GO

--Customer Reviews
INSERT INTO Customer.CustomerFeedback([CustomerIndex],[StoreReviewed],[CustomerRating],[CustomerFeedback]) 
	VALUES(13,12,'4','iaculis enim, sit amet ornare lectus justo eu'),(33,13,'8','auctor'),(76,10,'6','imperdiet ornare. In'),
	(9,12,'9','eget laoreet'),(46,14,'2','a tortor. Nunc commodo auctor velit. Aliquam nisl.'),(19,10,'7','Nullam enim.'),(85,10,'2','a mi'),
	(60,14,'1','Etiam'),(64,12,'6','et magnis dis parturient montes, nascetur ridiculus mus.'),(60,13,'8','quis'),(44,14,'5','malesuada ut, sem.'),
	(28,12,'1','ligula. Aenean gravida nunc'),(97,12,'1','Aenean gravida nunc sed pede. Cum sociis natoque penatibus et'),(19,13,'6','Donec est.'),
	(96,10,'2','Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue'),(8,11,'6','nec, imperdiet nec, leo. Morbi neque tellus,'),
	(11,14,'7','ultrices. Duis volutpat nunc sit amet'),(51,10,'6','gravida. Aliquam tincidunt, nunc'),
	(23,14,'10','ultricies ornare, elit elit fermentum risus, at fringilla'),(36,13,'7','montes, nascetur ridiculus');
INSERT INTO Customer.CustomerFeedback([CustomerIndex],[StoreReviewed],[CustomerRating],[CustomerFeedback]) 
	VALUES(94,11,'9','blandit. Nam nulla magna, malesuada vel, convallis'),
	(10,12,'10','magnis dis parturient montes, nascetur ridiculus mus. Aenean eget'),
	(92,14,'4','imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus'),(48,13,'7','metus. Aenean sed pede nec'),
	(98,13,'6','Donec non justo.'),(83,10,'1','Suspendisse eleifend. Cras sed leo. Cras vehicula'),
	(17,13,'2','Duis dignissim tempor arcu. Vestibulum ut eros non enim'),(77,14,'10','lacus. Mauris non dui nec urna suscipit nonummy. Fusce'),
	(3,10,'7','arcu imperdiet ullamcorper.'),(61,12,'4','adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at'),(12,10,'1','Lorem'),
	(39,14,'4','nisl arcu iaculis enim, sit amet ornare lectus justo eu'),(75,13,'9','rhoncus. Donec'),
	(16,11,'7','malesuada ut, sem. Nulla interdum. Curabitur dictum.'),(17,11,'10','sodales elit erat vitae risus. Duis'),(56,12,'6','convallis'),
	(42,13,'5','imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.'),(52,14,'10','rhoncus. Proin nisl sem, consequat nec, mollis'),
	(30,13,'0','sapien. Nunc pulvinar'),(57,11,'10','Nunc');
INSERT INTO Customer.CustomerFeedback([CustomerIndex],[StoreReviewed],[CustomerRating],[CustomerFeedback]) 
	VALUES(57,11,'5','Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus'),(99,12,'4','amet, consectetuer adipiscing elit.'),
	(84,11,'3','sit amet diam eu dolor egestas rhoncus. Proin nisl'),
	(92,11,'2','accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.'),(95,12,'2','massa'),
	(90,12,'6','sodales elit erat vitae risus. Duis a mi fringilla'),(86,14,'5','at risus. Nunc ac sem ut dolor dapibus gravida.'),
	(98,14,'2','Nulla facilisi.'),(93,12,'3','at, egestas a,'),(63,10,'5','sodales nisi magna sed dui. Fusce aliquam, enim nec tempus'),
	(67,12,'6','molestie orci tincidunt adipiscing. Mauris molestie'),(6,11,'6','tincidunt, nunc ac mattis ornare, lectus ante dictum'),
	(71,13,'1','Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu'),(15,13,'4','Donec'),
	(9,10,'7','congue a, aliquet vel, vulputate'),(67,13,'6','a sollicitudin orci sem'),(23,12,'5','Cras'),(9,11,'7','non, bibendum sed, est. Nunc'),
	(78,12,'9','a ultricies adipiscing,'),(43,14,'1','massa lobortis ultrices. Vivamus rhoncus. Donec est.');
INSERT INTO Customer.CustomerFeedback([CustomerIndex],[StoreReviewed],[CustomerRating],[CustomerFeedback]) 
	VALUES(69,12,'7','elit elit fermentum risus, at'),(53,12,'8','vitae velit'),
	(57,12,'4','sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,'),(82,12,'9','aliquet, sem ut cursus luctus, ipsum leo elementum'),
	(45,13,'0','ipsum ac mi eleifend egestas. Sed pharetra, felis'),(98,10,'9','nec luctus felis purus ac'),(71,13,'7','dolor sit'),
	(13,10,'4','libero'),(76,14,'5','ut lacus. Nulla tincidunt, neque vitae semper'),(42,11,'3','molestie orci'),(4,11,'1','lacus. Aliquam rutrum'),
	(72,13,'4','fermentum metus. Aenean sed pede nec ante blandit viverra.'),
	(23,14,'8','nec ligula consectetuer rhoncus. Nullam velit dui, semper et,'),(60,13,'4','vel nisl. Quisque fringilla euismod enim. Etiam gravida'),
	(92,14,'6','augue id ante dictum cursus. Nunc mauris'),(46,13,'4','arcu et pede. Nunc sed orci'),
	(54,12,'1','Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada'),(99,12,'10','egestas,'),(9,11,'1','ridiculus mus. Proin'),
	(31,13,'3','enim, sit amet');
INSERT INTO Customer.CustomerFeedback([CustomerIndex],[StoreReviewed],[CustomerRating],[CustomerFeedback]) 
	VALUES(27,11,'9','sed orci'),(5,12,'3','sed'),(34,14,'6','arcu.'),(4,10,'4','vitae, posuere at, velit. Cras'),(36,13,'7','Donec'),
	(78,11,'9','natoque penatibus et magnis dis parturient montes, nascetur'),(10,10,'7','ullamcorper, velit'),
	(78,11,'7','et magnis dis parturient montes, nascetur ridiculus mus. Proin vel'),(28,13,'4','sem ut cursus luctus,'),
	(75,14,'7','nec orci. Donec nibh. Quisque nonummy'),(54,10,'1','dictum augue malesuada malesuada.'),(52,13,'4','nisi'),
	(1,13,'2','mollis non, cursus non,'),(63,11,'4','orci,'),(70,12,'8','id risus quis diam luctus lobortis.'),(41,10,'2','Duis risus odio,'),
	(10,10,'8','risus, at fringilla purus mauris'),(75,12,'8','nunc sed libero. Proin sed turpis nec mauris blandit mattis.'),
	(29,12,'8','euismod enim. Etiam gravida molestie arcu. Sed eu'),(32,14,'7','blandit mattis. Cras eget nisi dictum augue');
GO
