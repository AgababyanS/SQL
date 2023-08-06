SELECT * FROM homework2.sales;


# 1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

CREATE TABLE IF NOT EXISTS sales  (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_date DATE NOT NULL,
  count_product INT UNSIGNED
  );
  
  SELECT * FROM sales;
 
INSERT sales ( order_date, count_product) 
VALUES 
  ('2023-08-01', 568),
  ('2023-08-02', 13),
  ('2023-08-03', 256),
  ('2023-08-04', 148),
  ('2023-08-05', 100);
  
    /*
  2. Для данных таблицы “sales” укажите тип
заказа в зависимости от кол-ва :
меньше 100 - Маленький заказ
от 100 до 300 - Средний заказ
больше 300 - Большой заказ
*/

SELECT id, order_date, count_product,
CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product BETWEEN 100 AND 300 THEN "Средний заказ"
    ELSE "Большой заказ"
END AS count_order
FROM sales;

