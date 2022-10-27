/*
01. SELECT nombre FROM producto;

02. SELECT nombre, precio FROM producto;

03. SELECT * FROM producto;

04. SELECT nombre FROM producto WHERE precio AND euros AND USD;

05. SELECT nombre FROM producto AS precio , euros AS dòlars_nord_americans;

06. SELECT UPPER(nombre) AS Uppercasenombre
FROM producto;

07. SELECT LOWER(nombre) AS Lowercasenombre
FROM producto;

08. SELECT CONCAT(UPPER(SUBSTRING(nombre,1,2)),LOWER(SUBSTRING(nombre,3))) AS Nombre2CAPS FROM fabricante;

09. SELECT nombre, precio, ROUND(precio, 1) AS RoundedPrice
 FROM Producto;

10. SELECT nombre, precio, ROUND(precio, 0) AS RoundedPrice
FROM Producto;

11. SELECT codigo_fabricante
FROM producto
LEFT JOIN fabricante
ON fabricante.codigo = producto.codigo_fabricante;

12. SELECT DISTINCTROW codigo_fabricante FROM producto;

13. SELECT nombre
FROM fabricante
ORDER BY nombre ASC;

14. SELECT nombre
FROM fabricante
ORDER BY nombre DESC;

15. SELECT nombre, precio
FROM producto
ORDER BY nombre ASC, precio DESC;

16. SELECT * FROM fabricante LIMIT 0, 5;

17. SELECT * FROM fabricante LIMIT 2 OFFSET 3;

18. SELECT nombre, precio FROM producto WHERE precio <= ALL(SELECT precio FROM producto);

19. SELECT nombre, precio FROM producto WHERE precio >= ALL(SELECT precio FROM producto);

20. SELECT nombre FROM producto WHERE codigo_fabricante = 2;

21. SELECT p.nombre, precio, f.nombre
FROM producto AS p
JOIN fabricante AS f
ON p.codigo_fabricante = f.codigo;

22. SELECT f.nombre, p.nombre, precio
FROM producto AS p
JOIN fabricante AS f
ON p.codigo_fabricante = f.codigo
ORDER BY f.nombre;

23. SELECT p.codigo, p.nombre, f.codigo, f.nombre
FROM producto AS p
JOIN fabricante AS f
ON p.codigo_fabricante = f.codigo
ORDER BY f.nombre;

24. SELECT p.nombre,precio, f.nombre AS nombre_fabricante
FROM producto AS p
	INNER JOIN fabricante AS f
		ON p.codigo_fabricante = f.codigo
WHERE precio=(SELECT MIN(precio)FROM producto);

25. SELECT p.nombre,precio, f.nombre AS nombre_fabricante
FROM producto AS p
	INNER JOIN fabricante AS f
		ON p.codigo_fabricante = f.codigo
WHERE precio=(SELECT MAX(precio)FROM producto);

26. SELECT f.nombre AS nombre_fabricante, p.nombre
FROM producto AS p
	INNER JOIN fabricante AS f
		ON p.codigo_fabricante = f.codigo
WHERE f.nombre='Lenovo';

27. SELECT f.nombre AS nombre_fabricante, p.nombre, precio
FROM producto AS p
	INNER JOIN fabricante AS f
		ON p.codigo_fabricante = f.codigo
WHERE f.nombre= 'Crucial'
AND (precio <= 200);

28. SELECT f.nombre AS nombre_fabricante, p.nombre, precio
FROM producto AS p
INNER JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre='Asus' OR f.nombre='Hewlett-Packard' OR f.nombre='Seagate';

29. SELECT f.nombre AS nombre_fabricante, p.nombre, precio
FROM producto AS p
INNER JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre IN ('Asus','Hewlett-Packard','Seagate');

30. SELECT f.nombre, p.nombre, precio
FROM producto AS p
INNER JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%e';

31. SELECT f.nombre, p.nombre, precio
FROM producto AS p
INNER JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%w%';

32. SELECT f.nombre, p.nombre, precio
FROM producto AS p
INNER JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE precio >= 180
ORDER BY precio DESC, p.nombre ASC;

33. SELECT codigo, nombre
FROM fabricante
WHERE EXISTS(SELECT * FROM producto WHERE producto.codigo_fabricante = fabricante.codigo);

34. SELECT f.codigo, f.nombre, p.nombre
FROM producto AS p
RIGHT JOIN fabricante AS f ON  f.codigo = p.codigo_fabricante
ORDER BY f.nombre;

35. SELECT codigo, nombre
FROM fabricante
WHERE NOT EXISTS(SELECT * FROM producto WHERE producto.codigo_fabricante = fabricante.codigo);
*/


     