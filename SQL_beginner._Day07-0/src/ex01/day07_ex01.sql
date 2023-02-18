SELECT
  person.name,
  COUNT (person_id) AS count_of_visits
FROM
  person_visits
  LEFT JOIN person ON person_visits.person_id = person.id
GROUP BY
  person.name
ORDER BY
  count_of_visits DESC
LIMIT
  4;