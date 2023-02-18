/* first session */
BEGIN
  TRANSACTION ISOLATION LEVEL READ COMMITTED;


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
  TRANSACTION ISOLATION LEVEL READ COMMITTED;


UPDATE
  pizzeria
SET
  rating = 1
WHERE
  name = 'Pizza Hut';


COMMIT
  WORK;


SELECT
  SUM(rating)
FROM
  pizzeria;