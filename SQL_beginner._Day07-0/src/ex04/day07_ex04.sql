SELECT
  person.name,
  COUNT (person_id) AS count_of_visits
FROM
  person_visits
  JOIN person ON person_visits.person_id = person.id
GROUP BY
  1
HAVING
  COUNT (person_id) > 3;