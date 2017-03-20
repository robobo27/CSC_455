
/*Get the names of SiteCustomers who have ordered ALL SiteProducts costing less than $1000.00.
*/

select CNAME 
from SiteOrders natural join SiteCustomers 
where ONO not in 
(select ONO from SiteOdetails natural join SiteProducts where PRICE > 1000);

/*Get the employee id numbers and names of SiteEmployees who have never 
made a sale to a customer living in the same zip code as the employee.
 */


select distinct SiteEmployees2.ENO,SiteEmployees2.ENAME 
from SiteEmployees as SiteEmployees2,(select * from SiteOrders as SiteOrders2 natural join 
(select ENO,ENAME,CNAME,CNO 
from SiteCustomers,SiteEmployees 
where SiteEmployees.ZIP = SiteCustomers.ZIP) as A)as B where B.ENO <> SiteEmployees2.ENO;

/*Get the names of SiteProducts that have been ordered the most (i.e. top selling SiteProducts), based on numbers sold.
*/

select PNAME,sum(QTY) as Num_Sold from SiteProducts natural join SiteOdetails group by PNAME order by sum(QTY) desc;

/*Get the average waiting time, i.e. difference between date ordered 
and date shipped, for all SiteOrders in number of days.
*/

select avg(datediff(SHIPPED,RECEIVED)) as AVG_LAYOVER_TIME from SiteOrders;

/*Decrease by 15 percent the prices of SiteProducts that cost more than the average price of all SiteProducts.
*/

create temporary table AvgSiteProductsPrice (
select avg(SiteProducts.PRICE) as AVGSiteProductsPRICE from SiteProducts);
update SiteProducts
set PRICE = case
when PRICE > (select AVGSiteProductsPRICE from AvgSiteProductsPrice) then PRICE-(PRICE*.15)
else PRICE*1
end;

/*Delete all SiteProducts from the SiteProducts table for which no SiteOrders have been placed.*/

delete from SiteProducts 
where PNO in 
(select PartNO 
from (select PNO as PartNO 
from SiteProducts natural left outer join SiteOdetails 
where QTY is NULL)as NonOrdered);

/*Transfer all the SiteOrders belonging to the employee with eno=1000 to the employee with eno = 1001.
*/
update SiteOrders
set ENO = '1001'
where SiteOrders.ENO = '1000';

/*Delete from the customer table all SiteCustomers who have placed 
fewer than two SiteOrders in the last two years.*/

delete from SiteCustomers     
where CNO not in 
(select CNO2 
from(select CNO as CNO2 
from SiteOrders natural right outer join SiteCustomers 
where datediff(curdate(),RECEIVED)<750 
group by CNO having count(CNO) < 2) as SiteCustomers2);

/*Increase the price of SiteProducts by 10% whose total quantity sold is greater 
than the average quantity sold for all SiteProducts for which SiteOrders have been placed.*/

