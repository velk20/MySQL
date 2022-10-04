select id, brand_id,`name`,quantity_in_stock from products
where price>1000 and  quantity_in_stock<30
order by quantity_in_stock,id