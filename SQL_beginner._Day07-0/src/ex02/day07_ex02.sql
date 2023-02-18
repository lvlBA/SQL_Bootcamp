WITH
  table1 AS (
    SELECT
      name,
      COUNT (person_id) AS count,
      'visit' AS action_type
    FROM
      person_visits
      JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    GROUP BY
      name
    ORDER BY
      action_type ASC,
      count DESC
    LIMIT
      3
  ), table2 AS (
    SELECT
      pizzeria.name,
      COUNT (person_id) AS count,
      'order' AS action_type
    FROM
      person_order
      JOIN menu ON menu.id = person_order.menu_id
      JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    GROUP BY
      name
    ORDER BY
      action_type ASC,
      count DESC
    LIMIT
      3
  )
SELECT
  *
FROM
  table1
UNION ALL
SELECT
  *
FROM
  table2
ORDER BY
  action_type ASC,
  count DESC;