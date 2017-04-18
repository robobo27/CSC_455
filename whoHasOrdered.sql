-- no-auto-rehash

/* This shows everyone who has ordered*/


create view WhoHasOrdered as select
OurCustomers.CEMAIL from
OurCustomers,OurOrders where
OurCustomers.CEMAIL in(OurOrders.CEMAIL);