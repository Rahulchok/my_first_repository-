select c.customer_id,concat(c.customer_first_name," ",c.customer_last_name) as full_name,cp.product_id,p.product_name,
sum(round((cp.quantity * cp.cost_to_customer_per_qty),2)) as total_cost
from farmers_market.customer as c
join farmers_market.customer_purchases as cp
on c.customer_id=cp.customer_id
join farmers_market.product as p
on  cp.product_id=p.product_id


group by full_name;




SELECT * FROM
(select * , RANK () OVER (PARTITION BY VENDOR_ID ORDER BY SALES_SUM DESC) AS RANKER FROM
(
select yr, mon, vendor_id, sum(sales) as sales_sum from
		(
		select
		year(market_date) as yr,
		month(market_date) as mon,
		product_id, vendor_id,
		(quantity*original_price) as sales
		from farmers_market.vendor_inventory
		) xyz
		group by 1,2,3
		order by vendor_id, yr, mon
			) ABC
		)MNO
WHERE RANKER=1 ;

USE rahuldb
Show Tables
create table employees(customer int )
insert into employees(customer) values(1)
insert into employees(customer) values(1)
insert into employees(customer) values(1)
insert into employees(customer) values(2)
insert into employees(customer) values(2)
insert into employees(customer) values(3)
insert into employees(customer) values(4)
insert into employees(customer) values(4)
insert into employees(customer) values(5)
insert into employees(customer) values(6)
show tables
select * from employees;
select * from employees as e
join employees as ma
on e.customer=ma.customer









