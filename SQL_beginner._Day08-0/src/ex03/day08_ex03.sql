/* first session */
BEGIN
  TRANSACTION;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


COMMIT
  WORK;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


/* second session */
BEGIN
  TRANSACTION;


UPDATE
  pizzeria
SET
  rating = 3.6
WHERE
  name = 'Pizza Hut';


COMMIT
  WORK;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza hut';