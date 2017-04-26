-- no-auto-rehash

use narayan11;

drop table if exists LivesAt;
drop table if exists OurOrders;
drop table if exists OurProducts;
drop table if exists OurCustomers;


CREATE TABLE OurProducts (PNO varchar(6),
                       PNAME varchar(30),
					   QTY int not null,
					   IMG varchar(50) not null,
					   PRICE int not null,
					   DIMENSIONS varchar (10),
					   MEDIUM varchar(50),
                       PRIMARY KEY (PNO)) ENGINE=INNODB;

CREATE TABLE OurCustomers (CEMAIL varchar(40),
					   CNAME varchar(20),
					   PHONE varchar(15),
                       PRIMARY KEY(CEMAIL)) ENGINE=INNODB;

CREATE TABLE LivesAt (CEMAIL varchar(40),
					   STREETADD varchar (30),
					   ZIP varchar (6),
					   CITY varchar (20),
					   CSTATE varchar (30),
					   PRIMARY KEY (CEMAIL,STREETADD,ZIP),
					   FOREIGN KEY(CEMAIL)
					   REFERENCES OurCustomers(CEMAIL)
					   ON UPDATE CASCADE ON DELETE CASCADE) ENGINE=INNODB;


CREATE TABLE OurOrders (ONO int not null AUTO_INCREMENT,
                       CEMAIL varchar(40),
                       PNO varchar(6),
                       QTY int not null,
					   RECEIVED date,
					   SHIPPED date,
                       PRIMARY KEY(ONO),
                       FOREIGN KEY (CEMAIL)
                       REFERENCES OurCustomers(CEMAIL)
                       ON UPDATE CASCADE ON DELETE CASCADE,
                       FOREIGN KEY(PNO)
                       REFERENCES OurProducts(PNO)
                       ON UPDATE CASCADE ON DELETE RESTRICT) ENGINE=INNODB;

ALTER TABLE OurOrders auto_increment=200;
