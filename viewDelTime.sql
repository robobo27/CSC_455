/* Create View */ 

-- no-auto-rehash


/* Allows to see all shipped and received dates to get an average idea of delivery time. */
   
create view DeliveryTime as select 
RECEIVED,SHIPPED,datediff(SHIPPED,RECEIVED)as DeliveryTime
from OurOrders;

