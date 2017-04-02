-- no-auto-rehash

use drh4179

drop table if exists LivesAt;
drop table if exists SiteOdetails2;
drop table if exists SiteOrders2;
drop table if exists SiteCustomers2;
drop table if exists SiteProducts2;
drop table if exists SiteAddresses2;


CREATE TABLE SiteProducts2 (PNO varchar(6),
                       PNAME varchar(30),
					   QOH int not null,
					   IMG blob not null,
					   PRICE int not null,
					   DIMENSIONS varchar (10),
					   MEDIUM varchar(50),
                       PRIMARY KEY (PNO)) ENGINE=INNODB;
					   
CREATE TABLE SiteAddresses2 (STREETADD varchar (30),
					   ZIP varchar (6),
					   CITY varchar (20),
					   CSTATE varchar (30),
					   PRIMARY KEY (STREETADD, ZIP)) ENGINE=INNODB;
					   

CREATE TABLE SiteCustomers2 (CEMAIL varchar(40),
                      CNAME varchar(20),
					  PHONE varchar(15),
                      PRIMARY KEY(CEMAIL)) ENGINE=INNODB;
					  
CREATE TABLE SiteOrders2 (ONO int not null AUTO_INCREMENT,
                      CEMAIL varchar(40),
					  RECEIVED date,
					  SHIPPED date,
                      PRIMARY KEY(ONO),
                      FOREIGN KEY (CEMAIL)
                      REFERENCES SiteCustomers2(CEMAIL)
                      ON UPDATE CASCADE ON DELETE CASCADE) ENGINE=INNODB;
					  
CREATE TABLE SiteOdetails2(ONO int not null,
                      PNO varchar(6),
                      QTY int not null,
					  PRIMARY KEY(ONO),
                      FOREIGN KEY(ONO)
					  REFERENCES SiteOrders2(ONO)        
                      ON UPDATE CASCADE ON DELETE CASCADE,
					  FOREIGN KEY(PNO)
					  REFERENCES SiteProducts2(PNO)
					  ON UPDATE CASCADE ON DELETE RESTRICT) ENGINE=INNODB;
					  
/* Took out ZIP from FOREIGN KEY */					  
CREATE TABLE LivesAt(CEMAIL varchar(40),
					  STREETADD varchar(30),
					  ZIP varchar(6),
					  PRIMARY KEY(CEMAIL,STREETADD,ZIP),
					  FOREIGN KEY(CEMAIL) 
					  REFERENCES SiteCustomers2(CEMAIL),
					  FOREIGN KEY(STREETADD)
					  REFERENCES SiteAddresses2(STREETADD)
                      ON UPDATE CASCADE ON DELETE CASCADE)	ENGINE=INNODB;
					  
