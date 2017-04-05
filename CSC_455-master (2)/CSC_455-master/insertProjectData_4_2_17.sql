-- no-auto-rehash
use CPApp

delete from LivesAt;
delete from SiteOdetails2;
delete from SiteOrders2;
delete from SiteCustomers2;
--delete from SiteEmployees2;
delete from SiteProducts2;
delete from SiteAddresses2;

		
/*
Currenty utilizing dummy variables for testing purposes
*/
		
insert into SiteAddresses2
	values	('4581 Cherry Street','67226','Wichita', 'Kansas'),
			('3321 Columbus Avenue','60606','Fort Dodge', 'Iowa'),
			('1234 Number Lane','50302','Kansas City', 'Kansas'),
			('387 Short Street','54444','Columbia','South Carolina'),
			('7098 Dismy Court','66002','Liberal','Kansas'),
			('2121 Jump Street','61111','Fort Hays','Kansas'),
			('1051 Page Avenue','28403','Wilmington','North Carolina'),
			('1051 S. Kerr Avenue','28411','Wilmington','North Carolina');
			
			/*
insert into SiteProducts2
	values	('01','image1',1,/*LOAD_FILE('image1.jpg'),*/Null, 2000,'18x24','Oil on panel'),
			('03','image3',1,/*LOAD_FILE('image3.jpg'),*/Null,3000,'36x48','Acrylic on canvas'),
			('04','image4',1,/*LOAD_FILE('image4.jpg'),*/Null,1800,'18x24','Acrylic on canvas'),
			('05','image5',1,/*LOAD_FILE('image5.jpg'),*/Null,2700,'36x48','Acrylic on canvas'),
			('06','image6',1,/*LOAD_FILE('image6.jpg'),*/Null,1500,'16x20','Acrylic and color pencil on panel'),
			('07','image7',1,/*LOAD_FILE('image7.jpg'),*/Null,500,'9x12','Acrylic on canvas'),
			('08','image8',1,/*LOAD_FILE('image8.jpg'),*/Null,950,'28x36','Color pencil on paper'),
			('09','image9',1,/*LOAD_FILE('image9.jpg'),*/Null,3000,'36x48','Acrylic on canvas');		

				
				insert into SiteProducts2(PNO, PNAME, QOH, PRICE, DIMENSIONS, MEDIUM, IMG)
				Select '01','image1',1,2000,'18x24','Oil on panel', 'D:\fbdp2.jpg';
				*/



insert into SiteProducts2
	values	('01','image1',1,'D:\fbdp2.jpg', 2000,'18x24','Oil on panel'),
			('03','image3',1,'D:\tke101.png',3000,'36x48','Acrylic on canvas'),
			('04','image4',1,'D:\fbdp.jpg',1800,'18x24','Acrylic on canvas'),
			('05','image5',1,'D:\fbdp1.jpg',2700,'36x48','Acrylic on canvas'),
			('06','image6',1,'D:\fbdp2.jpg',1500,'16x20','Acrylic and color pencil on panel'),
			('07','image7',1,'D:\tke101.png',500,'9x12','Acrylic on canvas'),
			('08','image8',1,'D:\fbdp.jpg',950,'28x36','Color pencil on paper'),
			('09','image9',1,'D:\fbdp1.jpg',3000,'36x48','Acrylic on canvas');

insert into SiteCustomers2
	values ('Charles@gmail.com','Charles','316-636-555'),
		   ('Bertram@gmail.com','Bertram','316-689-5555'),
		   ('Barbara@gmail.com','Barbara','316-111-1234'),
		   ('Will@gmail.com','Will','416-111-1234'),
		   ('Bill@gmail.com','Bill','416-111-1235'),
		   ('Keely@gmail.com','Keely','416-111-1236'),
		   ('Maera@gmail.com','Maera','416-111-1235');					

insert into SiteOrders2
	values	('201','Charles@gmail.com','1994-12-10','1994-12-12'),
			('202','Barbara@gmail.com','1995-01-12','1995-01-15'),
			('203','Charles@gmail.com','1995-02-13','1995-02-20'),
			('204','Barbara@gmail.com','2003-02-15','1995-02-21'),
			('205','Charles@gmail.com','2003-02-15','2003-02-16'),
			('206','Barbara@gmail.com','2003-02-15','2003-02-16');
			
insert into SiteOdetails2
	values	('201','01',1),
			('202','03',1),
			('203','04',1),
			('204','05',1),
			('205','06',1),
			('206','07',1);

insert into LivesAt
	values ('Charles@gmail.com','4581 Cherry Street','67226'),
		   ('Bertram@gmail.com','3321 Columbus Avenue','60606'),
		   ('Barbara@gmail.com','1234 Number Lane','50302'),
		   ('Will@gmail.com','387 Short Street','54444'),
		   ('Bill@gmail.com','7098 Dismy Court','66002'),
		   ('Keely@gmail.com','2121 Jump Street','61111'),
		   ('Maera@gmail.com','1051 Page Avenue','28403');
			
			
			