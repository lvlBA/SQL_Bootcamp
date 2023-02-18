/* first session */
BEGIN
;


UPDATE
  pizzeria
SET
  rating = 5
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


/* second session */
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