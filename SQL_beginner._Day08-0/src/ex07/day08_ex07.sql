/* first session */
BEGIN
  TRANSACTION;


UPDATE
  pizzeria
SET
  rating = 2
WHERE
  id = 1;


UPDATE
  pizzeria
SET
  rating = 3.1
WHERE
  id = 2;


COMMIT
  WORK;


/* second session */
BEGIN
  TRANSACTION;


UPDATE
  pizzeria
SET
  rating = 4
WHERE
  id = 2;


UPDATE
  pizzeria
SET
  rating = 2.2
WHERE
  id = 1;


COMMIT
  WORK;