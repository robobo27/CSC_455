CREATE PROCEDURE `AddCustomer`(in customerEmail varchar(50),in customerName varchar(50),in phone varchar(15))
BEGIN
	set autocommit = 0;
	start transaction;
	INSERT INTO OurCustomers values(customerEmail,customerName,phone);
END

CREATE PROCEDURE `AddCustomerWithout`(in customerEmail varchar(50),in customerName varchar(50),in phone varchar(15))
BEGIN
	INSERT INTO OurCustomers values(customerEmail,customerName,phone);
END

CREATE PROCEDURE `AddLivesAt`(in customerEmail varchar(50),in streetAddress varchar(50),in zipcode varchar(6),in city varchar(50),in state varchar(50))
BEGIN
	INSERT INTO LivesAt
    VALUES (customerEmail,streetAddress,zipcode,city,state);
END

CREATE PROCEDURE `AddOrder`(in customeremail varchar(50),in partnumber varchar(6), in quantity int,in receive date,in ship date)
BEGIN
	INSERT into OurOrders (CEMAIL,PNO,QTY,RECEIVED,SHIPPED) values (customeremail,partnumber,quantity,receive,ship);
END

CREATE PROCEDURE `Commit`()
BEGIN
	commit;
    set autocommit = 1;
END

CREATE PROCEDURE `RemoveCustomer`(in customerEmail varchar(50))
BEGIN
	DELETE from OurCustomers 
    WHERE CEMAIL = customerEmail;
END

CREATE PROCEDURE `RemoveLivesAt`(in customerEmail varchar(50),in streetAddress varchar(50),in zipcode varchar(6))
BEGIN
	DELETE from LivesAt
    WHERE CEMAIL = customerEmail and STREETADD = streetAddress and ZIP = zipcode;
END

CREATE PROCEDURE `RemoveOrder`(in ordernumber int)
BEGIN
	DELETE from OurOrders 
    WHERE ONO = ordernumber;
END

CREATE PROCEDURE `RemoveProduct`(in productNumber varchar(6))
BEGIN
	DELETE from OurProducts
    WHERE PNO = productNumber;
END

CREATE PROCEDURE `Rollback`()
BEGIN
	rollback;
    set autocommit = 1;
END

CREATE PROCEDURE `StartTransaction`()
BEGIN
	set autocommit = 0;
	start transaction;
    
END

CREATE PROCEDURE `UpdateCustomer`(in customerEmail varchar(50),in customerName varchar(50),in phone varchar(15))
BEGIN
	UPDATE OurCustomers SET CEMAIL = customerEmail,CNAME = customerName,PHONE = phone 
    WHERE CEMAIL = customerEmail;
END

CREATE PROCEDURE `UpdateLivesAt`(in customerEmail varchar(50),in streetAddress varchar(50),in zipcode varchar(6),in city varchar(50),in state varchar(50))
BEGIN
	UPDATE LivesAt
    SET CEMAIL = customerEmail,STREETADD = streetAddress,ZIP = zipcode,CITY = city,CSTATE = state
    WHERE CEMAIL = customerEmail;
END

CREATE PROCEDURE `UpdateOrder`(in ordernumber int,in customeremail varchar(50),in partnumber varchar(6), in quantity int,in receive date,in ship date)
BEGIN
	UPDATE OurOrders SET CEMAIL = customeremail, PNO = partnumber, QTY = quantity, RECEIVED = receive, SHIPPED = ship
    WHERE ONO = ordernumber;
END

CREATE PROCEDURE `UpdateProduct`(in productNumber varchar(6),in productName varchar(6),in quantity int,in image varchar(50),in price int,in dimension varchar(10),in mediums varchar(50))
BEGIN
	UPDATE OurProducts
    SET PNO = productNumber,PNAME = productName,QTY = quantity,IMG = image,PRICE = price,DIMENSIONS = dimension,MEDIUM = mediums
    WHERE PNO = productNumber;
END
