-- tüm ürünleri getir.
select * from products;

-- product tablosundan name ve stock column getir.
select name,stock from products;

-- varsayılan sıralama 
select * from products
order by stock;

-- büyükten küçüğe
select * from products
order by stock desc;

-- name column sıralama
select * from products
order by name;

-- tabloda ürünlerin sırlanaması ve aynı ürünlerin içinde fiyatların sıralanması
select * from products
order by name, unit_price;

-- 60 dan büyük stok ürünlerini getir
select * from products
where stock > 60;

-- category_id = 4 ve 60 adetten küçük stok
select * from products
where stock > 60 and category_id = 4;

select * from products
where stock > 70 or name='pantolon';

select * from products
where unit_price between '50' and '150';

select * from products
where name in('pantolon','koltuk');

select * from products
where name like 'p%';

select * from products
where name like 'p_r%';

select * from cities
where lower(name) like '%a%';

select * from cities
where lower(name) like '%a';






