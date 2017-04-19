/* Nested subquery that shows orders over 1000 dollars */

create or replace view OrdersUnder1000 as select distinct CEMAIL, CNAME, ONO 
from OurOrders natural join OurCustomers as CusAndOrd 
where ONO not in 
(select ONO from OurOrders natural join OurProducts where PRICE < 1000);