SELECT
  CASE
    WHEN person.name IS NULL THEN '-'
    ELSE person.name
  END person_name,
  tmp.visit_date AS visit_date,
  CASE
    WHEN pizzeria.name IS NULL THEN '-'
    ELSE pizzeria.name
  END pizzeria_name
FROM
  person
  FULL JOIN (
    SELECT
      person_id,
      pizzeria_id,
      visit_date
    FROM
      person_visits
    WHERE
      visit_date BETWEEN '2022-01-01' AND '2022-01-03'
  ) AS tmp ON person.id = tmp.person_id
  FULL JOIN pizzeria ON pizzeria.id = tmp.pizzeria_id
ORDER BY
  1,
  2,
  3;