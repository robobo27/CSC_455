CREATE PROCEDURE `AddOrder`(in customeremail varchar(50),in partnumber varchar(6), in quantity int,in receive date,in ship date)
BEGIN
   INSERT into OurOrders (CEMAIL,PNO,QTY,RECEIVED,SHIPPED) values (customeremail,partnumber,quantity,receive,ship);
END
