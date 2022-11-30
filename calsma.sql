--1
select * from orders o
inner join customers c
on o.customer_id = c.id;

--2
select o.status, c.email from orders o
inner join customers c
on o.customer_id = c.id
order by c.email;

--3
select * from orders o
inner join addreses a
on o.address_id = a.id
where o.status = 'sipariş edildi';

--4
select a.street, a.city_id, o.* from orders o
inner join addreses a
on o.address_id = a.id
where o.status = 'sipariş edildi';

--5
select * from customers c
left join orders o
on c.id=o.customer_id;

--6
select c.email, o.* from customers c
left join orders o
on c.id=o.customer_id;

--7
select * from customers c
inner join orders o
on c.id=o.customer_id
inner join payment_types pt
on o.payment_type_id=pt.id;

--8
select c.email,o.*,pt.name from customers c
inner join orders o
on c.id=o.customer_id
inner join payment_types pt
on o.payment_type_id=pt.id;

--9
select * from customers c
full outer join orders o
on c.email = o.status; 


--10
select o.* from customers c
full outer join orders o
on c.email = o.status
where o.status is not null;

--11
insert into shippers (company_name,email) 
values ('Yurtiçi kargo','yurt@gmail.com');

--12
update shippers 
set company_name='sürat kargo', email='sürat@gmail.com'
where id=3;

--13
delete from shippers where id=3;

--14
insert into products (name,unit_price,stock,category_id,supplier_id)
values ('klavye',100,65,6,3);

--15
select * from cities
where lower(name) like  'a%';

--16
select * from cities
where name  ilike  'a%';

--17
select name from cities
where country_id between 
1 and 2 
order by name desc;

--18
alter table cities add  plaka_id integer;

--19
update cities set plaka_id=34 
where id=1;

--20
select * from customers c
inner join addreses a
on c.id=a.customer_id
inner join cities ct
on a.city_id=ct.id
left join countries co
on ct.country_id=co.id;










