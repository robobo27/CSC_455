##
#USAGE - call AddOrder(ONO,CNO,RECEIVED,SHIPPED);
##

use narayan11;
drop procedure IF EXISTS AddOrder;

#Specify that // is the statement delimiter
#Thus semi-colons are no longer treated as delimiters
#and the entire procedure is viewed as a single code block

DELIMITER  $$ 

 CREATE PROCEDURE AddOrder(in ordernumber integer, in customernumber integer,in receive date,in ship date)
   BEGIN
   INSERT into SiteOrders (ONO,CNO,RECEIVED,SHIPPED) values (ordernumber,customernumber,receive,ship);
   END $$ 

DELIMITER ;
#Restore delimiter to ;
