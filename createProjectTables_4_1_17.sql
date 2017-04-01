-- no-auto-rehash

use drh4179

drop table if exists SiteOdetails;
drop table if exists SiteOrders;
drop table if exists SiteCustomers;
drop table if exists SiteProducts;
drop table if exists SiteAddresses;


CREATE TABLE SiteProducts (PNO varchar(6),
                       PNAME varchar(30),
					   QOH int not null,
					   IMG blob not null,
					   PRICE int not null,
					   DIMENSIONS varchar (10),
					   MEDIUM varchar(50),
                       PRIMARY KEY (PNO)) ENGINE=INNODB;
CREATE TABLE SiteAddresses (STREETADD varchar (30),
					   ZIP varchar (6),
					   CITY varchar (20),
					   CSTATE varchar (30),
					   PRIMARY KEY (STREETADD)) ENGINE=INNODB;
					   

CREATE TABLE SiteCustomers (CEMAIL varchar(40),
                      CNAME varchar(20),
                      STREET varchar(20),
					  ZIP varchar(6),
					  PHONE varchar(15),
                      PRIMARY KEY(CEMAIL),
                      FOREIGN KEY(ZIP)
                      REFERENCES SiteAddresses(ZIP)
                      ON UPDATE CASCADE ON DELETE CASCADE) ENGINE=INNODB;
					  
CREATE TABLE SiteOrders (ONO varchar(6),
                      CNO varchar(6),
					  RECEIVED date,
					  SHIPPED date,
                      PRIMARY KEY(ONO),
                      FOREIGN KEY (CNO)
                      REFERENCES SiteCustomers(CNO)
                      ON UPDATE CASCADE ON DELETE CASCADE) ENGINE=INNODB;
					  
CREATE TABLE SiteOdetails (ONO varchar(6),
                      PNO varchar(6),
                      QTY int not null,
                      FOREIGN KEY(ONO)
					  REFERENCES SiteOrders(ONO)        
                      ON UPDATE CASCADE ON DELETE CASCADE,
					  PRIMARY KEY(ONO),
					  FOREIGN KEY(PNO)
					  REFERENCES SiteProducts(PNO)) ENGINE=INNODB;
