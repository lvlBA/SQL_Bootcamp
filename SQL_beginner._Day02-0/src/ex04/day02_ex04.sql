SELECT
  menu.pizza_name,
  pizzeria.name AS pizzeria_name,
  menu.price
FROM
  pizzeria
  JOIN menu ON pizzeria.id = menu.pizzeria_id
WHERE
  menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY
  1,
  2;