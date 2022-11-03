/*
01. SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' ORDER BY  apellido1 ASC, apellido2 ASC, nombre ASC;

02. SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'alumno' AND telefono IS NULL;

03. SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento LIKE '1999%';

04. SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'profesor' AND nif LIKE '%K';

05. SELECT a.nombre FROM asignatura AS a 
LEFT JOIN grado AS g ON a.id_grado=g.id WHERE a.cuatrimestre = '1'AND a.curso = '3'AND a.id_grado = '7';  

06. SELECT pe.nombre, pe.apellido1, pe.apellido2, de.nombre AS departamento FROM persona AS pe 
INNER JOIN profesor AS pro ON pe.id=pro.id_profesor
INNER JOIN departamento AS de ON pro.id_departamento=de.id
ORDER BY pe.apellido1, pe.apellido2 ASC, pe.nombre DESC;

07. SELECT pe.nombre, pe.apellido1, pe.apellido2, a.nombre FROM persona AS pe 
INNER JOIN alumno_se_matricula_asignatura AS am ON pe.id=am.id_alumno
INNER JOIN curso_escolar AS ce ON am.id_curso_escolar=ce.id
INNER JOIN asignatura AS a ON a.curso=ce.id
WHERE pe.nif = '26902806M';

08. SELECT DISTINCT de.nombre AS departamento, a.nombre AS nombre_asignatura FROM departamento AS de 
INNER JOIN profesor AS pro ON de.id=pro.id_departamento
INNER JOIN asignatura AS a ON a.id_profesor=pro.id_profesor
INNER JOIN grado AS g ON a.id_grado = g.id
WHERE EXISTS (SELECT *
 FROM grado
 WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)');

09. SELECT DISTINCT pe.nombre, pe.apellido1, pe.apellido2 FROM persona AS pe 
LEFT JOIN alumno_se_matricula_asignatura AS am ON pe.id=am.id_alumno
LEFT  JOIN curso_escolar AS ce ON am.id_curso_escolar=ce.id
LEFT  JOIN asignatura AS a ON a.curso=ce.id
WHERE ce.anyo_inicio = '2018' AND ce.anyo_fin = '2019';

6.1. SELECT de.nombre AS departamento, pe.apellido1, pe.apellido2, pe.nombre FROM departamento AS de 
LEFT JOIN profesor AS pro ON de.id=pro.id_departamento
LEFT JOIN persona AS pe ON pe.id=pro.id_profesor
ORDER BY de.nombre ASC, pe.apellido1, pe.apellido2, pe.nombre DESC;

6.2 SELECT de.nombre AS departamento, pe.apellido1, pe.apellido2, pe.nombre FROM departamento AS de 
RIGHT JOIN profesor AS pro ON de.id=pro.id_departamento
RIGHT JOIN persona AS pe ON pe.id=pro.id_profesor
WHERE NOT EXISTS (SELECT *
 FROM profesor
 WHERE pro.id_departamento);
 
6.3 SELECT de.nombre AS departamento, pe.apellido1, pe.apellido2, pe.nombre FROM departamento AS de 
LEFT JOIN profesor AS pro ON de.id=pro.id_departamento
LEFT JOIN persona AS pe ON pe.id=pro.id_profesor
WHERE NOT EXISTS (SELECT *
 FROM profesor
 WHERE pro.id_departamento);

6.4 SELECT DISTINCT  a.nombre AS nombre_asignatura, per.nombre, per.apellido1, per.apellido2 FROM departamento AS de 
LEFT JOIN profesor AS pro ON de.id=pro.id_departamento
LEFT JOIN persona AS per ON per.id=pro.id_profesor
LEFT JOIN asignatura AS a ON a.id_profesor=pro.id_profesor
WHERE  NOT EXISTS (SELECT *
 FROM asignatura
 WHERE a.id_profesor);

6.5 SELECT DISTINCT a.nombre AS nombre_asignatura, per.nombre FROM departamento AS de 
RIGHT JOIN profesor AS pro ON de.id=pro.id_departamento
RIGHT  JOIN persona AS per ON per.id=pro.id_profesor
RIGHT  JOIN asignatura AS a ON a.id_profesor=pro.id_profesor
WHERE  NOT EXISTS (SELECT *
 FROM asignatura
 WHERE a.id_profesor);

6.6 SELECT DISTINCT de.nombre AS departamento, a.nombre AS nombre_asignatura FROM departamento AS de 
LEFT JOIN profesor AS pro ON de.id=pro.id_departamento
LEFT JOIN asignatura AS a ON a.id_profesor=pro.id_profesor
LEFT JOIN grado AS g ON a.id_grado = g.id
WHERE NOT EXISTS(SELECT pro.id_departamento
 FROM profesor
 WHERE pro.id_departamento);

CR01. SELECT COUNT(id)
FROM persona
WHERE tipo='alumno';

CR02. SELECT COUNT(id) FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento LIKE '1999%';
 
CR03. SELECT de.nombre AS nombre_departamento, pro.id_profesor AS cantidad_profesor, per.nombre 
FROM departamento AS de 
RIGHT JOIN profesor AS pro ON de.id=pro.id_departamento
RIGHT  JOIN persona AS per ON per.id=pro.id_profesor
WHERE (SELECT COUNT(pro.id_profesor) AS cantidad_profesor
       FROM profesor
       GROUP BY pro.id_profesor)
ORDER BY per.nombre DESC;

CR04. SELECT de.nombre AS nombre_departamento, per.nombre AS nombre_profesor FROM departamento AS de 
RIGHT JOIN profesor AS pro ON de.id=pro.id_departamento
RIGHT  JOIN persona AS per ON per.id=pro.id_profesor
ORDER BY de.nombre DESC;

CR05. SELECT g.nombre AS grado, a.nombre AS nombre_asignatura FROM grado AS g
LEFT JOIN asignatura AS a ON a.id_grado = g.id
ORDER BY a.nombre DESC;
*/

