drop function IF EXISTS IsShipped;

#Change delimiter to $$
DELIMITER $$
# A routine is considered deterministic if it always produces the same result
# for the same input parameters, and not deterministic otherwise.

#Function accepts received date and returns a boolean value 1 if received
# or 0 if not received
#select ono,IsDelivered(received) from OurOrders;
####
####
CREATE FUNCTION IsDelivered(order_shipped date) RETURNS BOOLEAN
    DETERMINISTIC
BEGIN
    DECLARE delivered boolean;

    IF order_shipped IS NOT NULL and order_shipped <> '0000-00-00' THEN
        SET delivered = 1;
    ELSE
        SET delivered = 0;
    END IF;

 RETURN (delivered);
END $$
DELIMITER ;
