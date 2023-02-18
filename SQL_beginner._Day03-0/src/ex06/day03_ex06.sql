SELECT
  DISTINCT pizza_name,
  pizzeria_name_1,
  pizzeria_name_2,
  table1.price
FROM
  (
    SELECT
      DISTINCT pizzeria_id AS id1,
      pizzeria.name AS pizzeria_name_1,
      menu.pizza_name AS pizza_name,
      price
    FROM
      menu
      JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  ) AS table1
  JOIN (
    SELECT
      pizzeria_id AS id2,
      pizzeria.name AS pizzeria_name_2,
      menu.pizza_name AS pizza_name_2,
      price
    FROM
      menu
      JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  ) AS table2 ON table1.price = table2.price
  AND table1.pizza_name = table2.pizza_name_2
WHERE
  id1 > id2;