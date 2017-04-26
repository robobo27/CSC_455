
use narayan11;
drop function IF EXISTS NumOrders;

#Change delimiter to $$
DELIMITER $$
# A routine is considered deterministic if it always produces the same result
# for the same input parameters, and not deterministic otherwise.

#Function accepts cemail and returns a int value of number of orders placed by the CEMAIL
#select cname,NumOrders(cemail) from OurCustomers;
####
####
CREATE FUNCTION NumOrders(customer_email varchar(50)) RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE orders INT;
    select count(ono) into orders from OurOrders group by cemail having cemail = customer_email;


 RETURN (orders);
END $$
DELIMITER ;
