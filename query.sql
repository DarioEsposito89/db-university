--1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) =1990
ORDER BY `date_of_birth` ASC;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses` 
WHERE `cfu` > 10
ORDER BY `cfu`ASC;

--3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),`date_of_birth`)), '%Y') + 0 AS `age`
FROM `students`
WHERE  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),`date_of_birth`)), '%Y') + 0  > 30
ORDER BY `date_of_birth`DESC;