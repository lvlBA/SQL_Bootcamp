CREATE MATERIALIZED VIEW
  IF NOT EXISTS mv_dmitriy_visits_and_eats AS
SELECT
  pizzeria.name AS pizzeria_name
FROM
  pizzeria
  JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
  JOIN person ON person.id = person_visits.person_id
  JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE
  menu.price < 800
  AND person_visits.visit_date = '2022-01-08'
  AND person.name = 'Dmitriy';


select
  *
from
  mv_dmitriy_visits_and_eats;