SELECT
  person.address,
  pizzeria.name,
  COUNT (order_date) count_of_orders
FROM
  person
  JOIN person_order ON person.id = person_order.person_id
  JOIN menu ON person_order.menu_id = menu.id
  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY
  1,
  2
ORDER BY
  1,
  2;