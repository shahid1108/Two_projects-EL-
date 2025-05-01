show databases;

use sys;

select * from retail_price rp ;



#1

select distinct product_category_name from retail_price rp ;



#2

select  product_category_name , total_price from retail_price
order by  total_price desc
limit 5;


#3

select count(*) from retail_price rp ;


#4

select * from retail_price rp 
where total_price > 1000;


#5

select  product_category_name , avg(total_price) as avg_price
from  retail_price
group by product_category_name ;


#6

select  product_category_name , product_id , total_price 
from retail_price rp
where total_price = (
    select max(total_price)
    from retail_price
    where product_category_name = rp.product_category_name);

   
 #7
   
 select 
  case 
    when total_price < 500 then '<500'
    when total_price between 500 and 1000 then '500-1000'
    else '>1000'
  end as price_range,
  count(*) as count
from retail_price
group by price_range;


#8

select product_category_name , total_price , count(*) 
from retail_price
group by product_category_name , total_price 
having count(*) > 1;


#9

select product_category_name , avg(total_price) as avg_price
from retail_price
group by product_category_name 
order by avg_price desc;


#10

select product_category_name, count(*) as frequency
from retail_price
group by product_category_name 
order by  frequency desc
limit 3;






















































