SELECT * FROM homework2.orders;

# 3. Создайте таблицу “orders”, заполните ее значениями

 CREATE TABLE IF NOT EXISTS orders
  (id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  employee_id VARCHAR(25) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  order_status VARCHAR(25) NOT NULL
  );
  
  SELECT * FROM orders;
  
   INSERT orders ( employee_id, amount, order_status) 
VALUES 
  ('e03', '15.00', 'OPEN'),
  ('e01', '25.50', 'OPEN'),
  ('e05', '100.70', 'CLOSED'),
  ('e02', '22.18', 'OPEN'),
  ('e04', '9.50', 'CANCELLED'); 
  
  SELECT id,
  CASE
	WHEN order_status = 'OPEN' THEN 'Order is in open state'
    WHEN order_status = 'CLOSED' THEN 'Order is closed'
    WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
    END AS full_order_status
FROM orders;

  select * from orders ;
  
  
  /*
  0 - это конкретное значение, а NULL - это отсутствие значения.
  */
