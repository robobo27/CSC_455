-- no-auto-rehash
delete from SiteOdetails;
delete from SiteOrders;
delete from SiteCustomers;
delete from SiteEmployees;
delete from SiteParts;
delete from SiteAddresses;
		
/*
Currenty utilizing dummy variables for testing purposes
*/
		
insert into Addresses
	values	('4581 Cherry Street','67226','Wichita', 'Kansas'),
			('3321 Columbus Avenue','60606','Fort Dodge', 'Iowa'),
			('1234 Number Lane','50302','Kansas City', 'Kansas'),
			('387 Short Street','54444','Columbia','South Carolina'),
			('7098 Dismy Court','66002','Liberal','Kansas'),
			('2121 Jump Street','61111','Fort Hays','Kansas'),
			('1051 Page Avenue','28403','Wilmington','North Carolina'),
			('1051 S. Kerr Avenue','28403','Wilmington','North Carolina');
			
			
insert into SiteParts
	values	('01','image1',1,LOAD_FILE('image1.jpg'),2000,'18x24','Oil on panel'),
			('03','image3',1,LOAD_FILE('image3.jpg'),3000,'36x48','Acrylic on canvas'),
			('04','image4',1,LOAD_FILE('image4.jpg'),1800,'18x24','Acrylic on canvas'),
			('05','image5',1,LOAD_FILE('image5.jpg'),2700,'36x48','Acrylic on canvas'),
			('06','image6',1,LOAD_FILE('image6.jpg'),1500,'16x20','Acrylic and color pencil on panel'),
			('07','image7',1,LOAD_FILE('image7.jpg'),500,'9x12','Acrylic on canvas'),
			('08','image8',1,LOAD_FILE('image8.jpg'),950,'28x36','Color pencil on paper'),
			('09','image9',1,LOAD_FILE('image9.jpg'),3000,'36x48','Acrylic on canvas');		

insert into SiteEmployees
	values  ('1000','Harless','67226','1993-12-12'),
			('1001','Owens','60606','1992-01-01'),
			('1002','Roberts','50302','1994-09-01'),
			('1003','Arnold','28411','2002-09-01'),
			('1004','Pena','28411','2003-01-01');			

insert into SiteCustomers
	values ('1111','Charles','123 Main St.','67226','316-636-555'),
		   ('2222','Bertram','237 Ash Avenue','67226','316-689-5555'),
		   ('3333','Barbara','111 Inwood St.','60606','316-111-1234'),
		   ('4444','Will','111 Kenwood St.','54444','416-111-1234'),
		   ('5555','Bill','211 Marlwood St.','28408','416-111-1235'),
		   ('6666','Keely','211 Pinewood St.','28411','416-111-1235'),
		   ('7777','Maera','211 Marlwood St.','28408','416-111-1235');

insert into SiteOrders
	values	('1020','1111','1000','1994-12-10','1994-12-12'),
			('1021','1111','1000','1995-01-12','1995-01-15'),
			('1022','2222','1001','1995-02-13','1995-02-20'),
			('1023','3333','1000','2003-02-15','NULL'),
			('1024','4444','1000','2003-02-15','2003-02-16'),
			('1025','5555','1000','2003-02-15','2003-02-16');
			
insert into SiteOdetails
	values	('1020','10506',1),
			('1020','10800',1),
			('1020','10508',2),
			('1020','10509',3),
			('1021','10601',4),
			('1021','10506',7),
			('1022','10601',1),
			('1022','10701',1),
			('1023','10800',1),
			('1023','10900',1),
			('1023','10506',2),
			('1024','10506',12),
			('1025','10601',2);

			
			
			