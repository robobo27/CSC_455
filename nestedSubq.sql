/* Nested subquery that shows who has not ordered anything */

select CEMAIL from(
select * from OurCustomers as OurCustomers2
natural left outer join OurOrders as OurOrders2 where OurOrders2.ONO is null)
as WhoHasNotOrdered;