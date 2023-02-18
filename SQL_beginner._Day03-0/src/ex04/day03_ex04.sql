WITH
  male AS (
    SELECT
      pizzeria.name
    FROM
      pizzeria
      JOIN menu ON pizzeria.id = menu.pizzeria_id
      JOIN person_order ON menu.id = person_order.menu_id
      JOIN person ON person.id = person_order.person_id
    WHERE
      gender = 'male'
  ),
  female AS (
    SELECT
      pizzeria.name
    FROM
      pizzeria
      JOIN menu ON pizzeria.id = menu.pizzeria_id
      JOIN person_order ON menu.id = person_order.menu_id
      JOIN person ON person.id = person_order.person_id
    WHERE
      gender = 'female'
  ),
  only_male AS (
    SELECT
      name
    FROM
      male
    EXCEPT
    SELECT
      name
    FROM
      female
  ),
  only_female AS (
    SELECT
      name
    FROM
      female
    EXCEPT
    SELECT
      name
    FROM
      male
  )
SELECT
  name AS pizzeria_name
FROM
  only_male
UNION
SELECT
  name
FROM
  only_female
ORDER BY
  1;