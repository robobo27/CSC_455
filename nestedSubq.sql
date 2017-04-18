/* Nested subquery that shows who has not ordered anything */

select CEMAIL from(
select * from OurCustomers right outer join OurOrders as HaveNotOrdered where
OurOrders.CEMAIL is null);