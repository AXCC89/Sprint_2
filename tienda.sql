SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre FROM producto WHERE precio AND euros AND USD;
SELECT nombre FROM producto AS precio , euros AS dòlars_nord_americans;
SELECT UPPER(nombre) AS Uppercasenombre
FROM producto;
SELECT LOWER(nombre) AS Lowercasenombre
FROM producto;
SELECT CONCAT(UPPER(SUBSTRING(nombre,1,2)),LOWER(SUBSTRING(nombre,3))) AS Nombre2CAPS FROM fabricante;
SELECT nombre, precio, ROUND(precio, 1) AS RoundedPrice
FROM Producto;
