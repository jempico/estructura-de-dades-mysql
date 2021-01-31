USE tienda;
SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio, TRUNCATE(precio*1.2161,2) FROM producto; 
SELECT nombre AS 'nom de producte', precio AS euros, TRUNCATE(precio*1.2161,2) AS dolars FROM producto; 
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(SUBSTRING(nombre, 1,2)) AS siglas FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNCATE(precio,0) FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC; 
SELECT nombre, precio FROM producto ORDER BY precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante ORDER BY codigo LIMIT 2 OFFSET 3;




