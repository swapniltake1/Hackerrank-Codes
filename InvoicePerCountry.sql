SELECT co.country_name,count(*),avg(i.total_price)
from country co,city ci, customer cu, invoice i
WHERE co.id= ci.country_id and ci.id=cu.city_id and cu.id=i.customer_id
group BY co.country_name
having avg(i.total_price) > (select avg(total_price)from invoice)
