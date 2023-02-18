/* first session */
BEGIN
  TRANSACTION ISOLATION LEVEL REPEATABLE READ;


SELECT
  SUM(rating)
FROM
  pizzeria;


SELECT
  SUM(rating)
FROM
  pizzeria;


COMMIT
  WORK;


SELECT
  SUM(rating)
FROM
  pizzeria;


/* second session */
BEGIN
  TRANSACTION ISOLATION LEVEL REPEATABLE READ;


UPDATE
  pizzeria
SET
  rating = 5
WHERE
  name = 'Pizza Hut';


COMMIT
  WORK;


SELECT
  SUM(rating)
FROM
  pizzeria;