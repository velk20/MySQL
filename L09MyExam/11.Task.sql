update products
set price = price * 0.8
where price >= 10.00 and `type` = 'Cognac'
