-- no-auto-rehash
delete from SiteOdetails;
delete from SiteOrders;
delete from SiteCustomers;
delete from SiteEmployees;
delete from SiteProducts;
delete from SiteAddresses;
		
/*
Currenty utilizing dummy variables for testing purposes
*/
		
insert into SiteAddresses
	values	('4581 Cherry Street','67226','Wichita', 'Kansas'),
			('3321 Columbus Avenue','60606','Fort Dodge', 'Iowa'),
			('1234 Number Lane','50302','Kansas City', 'Kansas'),
			('387 Short Street','54444','Columbia','South Carolina'),
			('7098 Dismy Court','66002','Liberal','Kansas'),
			('2121 Jump Street','61111','Fort Hays','Kansas'),
			('1051 Page Avenue','28403','Wilmington','North Carolina'),
			('1051 S. Kerr Avenue','28411','Wilmington','North Carolina');
			
			
insert into SiteProducts
	values	('01','image1',1,LOAD_FILE('image1.jpg'),2000,'18x24','Oil on panel'),
			('03','image3',1,LOAD_FILE('image3.jpg'),3000,'36x48','Acrylic on canvas'),
			('04','image4',1,LOAD_FILE('image4.jpg'),1800,'18x24','Acrylic on canvas'),
			('05','image5',1,LOAD_FILE('image5.jpg'),2700,'36x48','Acrylic on canvas'),
			('06','image6',1,LOAD_FILE('image6.jpg'),1500,'16x20','Acrylic and color pencil on panel'),
			('07','image7',1,LOAD_FILE('image7.jpg'),500,'9x12','Acrylic on canvas'),
			('08','image8',1,LOAD_FILE('image8.jpg'),950,'28x36','Color pencil on paper'),
			('09','image9',1,LOAD_FILE('image9.jpg'),3000,'36x48','Acrylic on canvas');		

insert into SiteCustomers
	values ('1111','Charles','123 Main St.','67226','316-636-555'),
		   ('2222','Bertram','237 Ash Avenue','67226','316-689-5555'),
		   ('3333','Barbara','111 Inwood St.','60606','316-111-1234'),
		   ('4444','Will','111 Kenwood St.','54444','416-111-1234'),
		   ('5555','Bill','211 Marlwood St.','28403','416-111-1235'),
		   ('6666','Keely','211 Pinewood St.','28411','416-111-1235'),
		   ('7777','Maera','211 Marlwood St.','28403','416-111-1235');					

insert into SiteOrders
	values	('201','1111','1994-12-10','1994-12-12'),
			('202','1111','1995-01-12','1995-01-15'),
			('203','2222','1995-02-13','1995-02-20'),
			('204','3333','2003-02-15','NULL'),
			('205','4444','2003-02-15','2003-02-16'),
			('206','5555','2003-02-15','2003-02-16');
			
insert into SiteOdetails
	values	('201','01',1),
			('202','03',1),
			('203','04',2),
			('204','05',3),
			('205','06',4),
			('206','07',7);

			
			
			