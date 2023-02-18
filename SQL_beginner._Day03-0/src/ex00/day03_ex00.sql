SELECT
  menu.pizza_name,
  menu.price,
  pizzeria.name AS pizzeria_name,
  visit_date
FROM
  menu
  JOIN person_visits ON person_visits.pizzeria_id = menu.pizzeria_id
  JOIN person ON person.id = person_visits.person_id
  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE
  price >= 800
  AND price <= 1000
  AND person.name = 'Kate'
ORDER BY
  1,
  2,
  3;