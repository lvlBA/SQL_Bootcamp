SELECT
  person.name AS name
FROM
  person
  JOIN person_order ON person_order.id = person.id
  JOIN menu ON menu.id = person_order.menu_id
WHERE
  person.gender = 'male'
  AND address = 'Moscow'
  OR address = 'Samara'
  AND menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY
  name DESC;