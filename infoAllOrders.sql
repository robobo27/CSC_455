-- no-auto-rehash

/* This allows one to see all info on ALL orders. NOT WORKING. */

select CEMAIL,RECEIVED,SHIPPED from OurOrders
intersect
select * from OurOdetails;