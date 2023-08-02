/*1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ*/
SELECT * FROM homework1.phones;

/*2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)*/
select Phone_name, Manufacturer, Price from phones where ProductCount > 2;

/*3.  Выведите весь ассортимент товаров марки “Samsung”*/
select * from phones where Phone_name = 'Samsung';

/*4.1. Товары, в которых есть упоминание "Iphone" */
SELECT * FROM phones WHERE Phone_name LIKE "IPhone%";

/*4.1. Товары, в которых есть упоминание "Samsung" */
SELECT * FROM phones WHERE Phone_name LIKE "Samsung%";

/*4.3.  Товары, в которых есть ЦИФРЫ*/
select * from phones where Phone_name REGEXP '[0-9]';

/*4.4.  Товары, в которых есть ЦИФРА "8"  */
select * from phones where Phone_name like '%8%';