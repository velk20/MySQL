
select product_name,order_date, addtime(order_date,'3 0:00:00') as pay_due,adddate(order_date,interval 1 month) as deliver_due from orders