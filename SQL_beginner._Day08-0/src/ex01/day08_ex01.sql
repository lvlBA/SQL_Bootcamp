/*Уровень изолированности транзакций — условное значение, 
 определяющее, в какой мере в результате выполнения логически 
 параллельных транзакций в СУБД допускается получение несогласованных данных.*/
SHOW
  TRANSACTION ISOLATION LEVEL;


/* first session */
BEGIN
;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


UPDATE
  pizzeria
SET
  rating = 4
WHERE
  name = 'Pizza Hut';


COMMIT
;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


/* second session */
BEGIN
;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


UPDATE
  pizzeria
SET
  rating = 3.6
WHERE
  name = 'Pizza Hut';


COMMIT
;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';