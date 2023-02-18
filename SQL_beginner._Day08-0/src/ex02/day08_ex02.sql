/* first session */
BEGIN
  TRANSACTION ISOLATION LEVEL REPEATABLE READ;


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
  WORK;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';


/* second session */
BEGIN
  TRANSACTION ISOLATION LEVEL REPEATABLE READ;


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
  WORK;


SELECT
  *
FROM
  pizzeria
WHERE
  name = 'Pizza Hut';