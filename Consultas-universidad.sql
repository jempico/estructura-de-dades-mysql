USE universidad;
SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' ORDER BY apellido1, apellido2, nombre ASC;
SELECT apellido1, apellido2, nombre from PERSONA WHERE telefono IS NULL;
SELECT * FROM persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
SELECT * FROM persona WHERE tipo = 'profesor' AND telefono IS NULL AND SUBSTRING(nif, LENGTH(nif),LENGTH(nif)-1) = 'K';
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
SELECT apellido1, apellido2, nombre, id_departamento FROM persona JOIN profesor ON id_profesor = id ORDER BY apellido1, apellido2, nombre ASC;
SELECT c.nombre, d.anyo_inicio, d.anyo_fin FROM universidad.alumno_se_matricula_asignatura a JOIN persona b ON b.id = a.id_alumno JOIN asignatura c ON c.id = a.id_asignatura JOIN curso_escolar d ON d.id = a.id_curso_escolar WHERE b.nif = '26902806M';
SELECT DISTINCT(a.nombre) from departamento a JOIN profesor b ON b.id_departamento = a.id JOIN asignatura c ON c.id_profesor = b.id_profesor JOIN grado d ON c.id_grado = d.id WHERE d.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
SELECT DISTINCT(id_alumno) FROM universidad.alumno_se_matricula_asignatura WHERE id_curso_escolar = 5;
SELECT de.nombre, pe.apellido1, pe.apellido2, pe.nombre FROM profesor pr LEFT JOIN persona pe ON pe.id = pr.id_profesor LEFT JOIN departamento de ON de.id = pr.id_departamento ORDER BY de.nombre, pe.apellido1, pe.apellido2, pe.nombre ASC;
SELECT * FROM profesor pr LEFT JOIN persona pe ON pe.id = pr.id_profesor WHERE pr.id_departamento IS NULL;
SELECT * FROM departamento de LEFT JOIN profesor pr ON de.id = pr.id_departamento WHERE pr.id_departamento IS NULL;
SELECT p.id_profesor FROM profesor p LEFT JOIN asignatura a ON a.id_profesor = p.id_profesor WHERE a.id IS NULL;
SELECT a.id, a.nombre FROM asignatura a LEFT JOIN profesor p ON a.id_profesor = p.id_profesor WHERE p.id_profesor IS NULL;
SELECT d.id, d.nombre FROM departamento d LEFT JOIN profesor p ON d.id = p.id_departamento LEFT JOIN asignatura a ON a.id_profesor = p.id_profesor WHERE a.id IS NULL GROUP BY d.id;
SELECT COUNT(id) FROM persona WHERE tipo = 'alumno';
SELECT COUNT(id) FROM persona WHERE tipo = 'alumno' and YEAR(fecha_nacimiento) = 1999;
SELECT d.nombre, COUNT(d.nombre) as profesores FROM departamento d RIGHT JOIN profesor p ON d.id = p.id_departamento GROUP BY d.nombre ORDER BY profesores DESC;
SELECT d.nombre, count(p.id_profesor) as profesores  FROM departamento d  LEFT JOIN profesor p  ON d.id = p.id_departamento  GROUP BY d.nombre ORDER BY profesores DESC;
SELECT g.nombre, count(a.nombre) as asignaturas  FROM grado g  LEFT JOIN asignatura a  ON g.id = a.id_grado  GROUP BY g.nombre ORDER BY asignaturas DESC;
