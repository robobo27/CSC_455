##
#USAGE - call RetreiveOrder(inVariable);
##

use narayan11;
drop procedure IF EXISTS RetrieveOrder;

#Specify that // is the statement delimiter
#Thus semi-colons are no longer treated as delimiters
#and the entire procedure is viewed as a single code block

DELIMITER  $$

 CREATE PROCEDURE RetrieveOrder(in orderNum integer)
   BEGIN
   SELECT * from OurOrders where ono = orderNum;
   END $$

DELIMITER ;
#Restore delimiter to ;
