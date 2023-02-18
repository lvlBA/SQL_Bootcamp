/* first session */
BEGIN
  TRANSACTION ISOLATION LEVEL Serializable;


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
  TRANSACTION ISOLATION LEVEL Serializable;


UPDATE
  pizzeria
SET
  rating = 3.0
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