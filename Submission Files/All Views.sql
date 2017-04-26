
/* Fulfills join and difference requirement. Checks which customers do not have
   addresses through a MySQL implementation of set difference */

CREATE VIEW NoAddresses as SELECT OurCustomers.CEMAIL
FROM OurCustomers
LEFT OUTER JOIN LivesAt
ON OurCustomers.CEMAIL NOT IN (LivesAt.STREETADD)
WHERE LivesAt.STREETADD IS NULL;


/* Nested subquery that creates a view that orders over 1000 dollars */

create or replace view OrdersUnder1000 as select distinct CEMAIL, CNAME, ONO 
from OurOrders natural join OurCustomers as CusAndOrd 
where ONO not in 
(select ONO from OurOrders natural join OurProducts where PRICE < 1000);


/* Creates view that shows all shipped and received dates to get an idea of delivery time. */
   
create view DeliveryTime as select 
RECEIVED,SHIPPED,datediff(SHIPPED,RECEIVED)as DeliveryTime
from OurOrders;


/* This view shows everyone who has ordered*/

create view WhoHasOrdered as select
OurCustomers.CEMAIL from
OurCustomers,OurOrders where
OurCustomers.CEMAIL in(OurOrders.CEMAIL);