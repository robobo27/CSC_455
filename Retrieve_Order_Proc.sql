##
#USAGE - call RetreiveOrder(inVariable, outVariable);
##

use narayans;
drop procedure IF EXISTS CountProducts;

#Specify that // is the statement delimiter
#Thus semi-colons are no longer treated as delimiters
#and the entire procedure is viewed as a single code block

DELIMITER  $$ 

 CREATE PROCEDURE RetrieveOrder(in orderNum integer)
   BEGIN
   SELECT * from SiteOrders where ono = orderNum;
   END $$ 

DELIMITER ;
#Restore delimiter to ;