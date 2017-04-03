-- no-auto-rehash

use drh4179

drop table if exists LivesAt;
drop table if exists OurOdetails;
drop table if exists OurOrders;
drop table if exists OurCustomers;
drop table if exists OurProducts;
drop table if exists OurAddresses;


CREATE TABLE OurProducts (PNO varchar(6),
                       PNAME varchar(30),
					   QOH int not null,
					   IMG blob not null,
					   PRICE int not null,
					   DIMENSIONS varchar (10),
					   MEDIUM varchar(50),
                       PRIMARY KEY (PNO)) ENGINE=INNODB;
					   
CREATE TABLE OurAddresses (STREETADD varchar (30),
					   ZIP varchar (6),
					   CITY varchar (20),
					   CSTATE varchar (30),
					   PRIMARY KEY (STREETADD, ZIP)) ENGINE=INNODB;
					   

CREATE TABLE OurCustomers (CEMAIL varchar(40),
                      CNAME varchar(20),
					  PHONE varchar(15),
                      PRIMARY KEY(CEMAIL)) ENGINE=INNODB;
					  
CREATE TABLE OurOrders (ONO int not null AUTO_INCREMENT,
                      CEMAIL varchar(40),
					  RECEIVED date,
					  SHIPPED date,
                      PRIMARY KEY(ONO),
                      FOREIGN KEY (CEMAIL)
                      REFERENCES OurCustomers(CEMAIL)
                      ON UPDATE CASCADE ON DELETE CASCADE) ENGINE=INNODB;
					  
CREATE TABLE OurOdetails(ONO int not null,
                      PNO varchar(6),
                      QTY int not null,
					  PRIMARY KEY(ONO),
                      FOREIGN KEY(ONO)
					  REFERENCES OurOrders(ONO)        
                      ON UPDATE CASCADE ON DELETE CASCADE,
					  FOREIGN KEY(PNO)
					  REFERENCES OurProducts(PNO)
					  ON UPDATE CASCADE ON DELETE RESTRICT) ENGINE=INNODB;
					  
/* Took out ZIP from FOREIGN KEY */					  
CREATE TABLE LivesAt(CEMAIL varchar(40),
					  STREETADD varchar(30),
					  ZIP varchar(6),
					  PRIMARY KEY(CEMAIL,STREETADD,ZIP),
					  FOREIGN KEY(CEMAIL) 
					  REFERENCES OurCustomers(CEMAIL),
					  FOREIGN KEY(STREETADD)
					  REFERENCES OurAddresses(STREETADD)
                      ON UPDATE CASCADE ON DELETE CASCADE)	ENGINE=INNODB;
					  
