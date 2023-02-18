SELECT
  pizzeria.name,
  COUNT (*) AS count_of_orders,
  ROUND (AVG (menu.price), 2) AS average_price,
  MAX (menu.price) AS max_price,
  MIN (menu.price) AS min_price
FROM
  menu
  JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  JOIN person_order ON person_order.menu_id = menu.id
GROUP BY
  pizzeria.name
ORDER BY
  1;