SELECT
  menu.pizza_name,
  menu.price,
  pizzeria.name AS pizzeria_name
FROM
  menu
  LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE
  menu.id NOT IN (
    SELECT
      menu_id
    FROM
      person_order
  )
ORDER BY
  1,
  2;