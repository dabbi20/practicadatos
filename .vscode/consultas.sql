CREATE TABLE sale (

product TEXT,
price INT,
quantity INT

);

COPY sale(product, price, quantity)
FROM 'C:\Users\PC GAMER RYZEN 7\Desktop\python\sales.csv'
DELIMITER E'\t'
CSV HEADER;

SELECT 
    product,
    SUM(price * quantity) AS total
FROM sale
GROUP BY product;

SELECT * FROM sale;