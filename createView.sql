/* Create View */ 

-- no-auto-rehash


/* Allows to see all shipped and received dates to get an average idea of delivery time. */
   
create view Deliveries as select RECEIVED,SHIPPED
from OurOrders;

