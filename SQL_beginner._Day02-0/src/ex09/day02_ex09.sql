WITH
  final_table AS (
    SELECT
      menu.pizza_name AS pizza_name,
      person.name
    FROM
      person_order
      LEFT JOIN person ON person.id = person_id
      LEFT JOIN menu ON menu.id = menu_id
    WHERE
      person.gender = 'female'
  )
SELECT
  name
FROM
  final_table
WHERE
  pizza_name = 'cheese pizza'
  AND name IN (
    SELECT
      name
    FROM
      final_table
    WHERE
      pizza_name = 'pepperoni pizza'
  )
ORDER BY
  1;