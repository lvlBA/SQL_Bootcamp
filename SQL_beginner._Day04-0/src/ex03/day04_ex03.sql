SELECT
  generated_date AS missing_date
FROM
  v_generated_dates
  LEFT JOIN person_visits ON person_visits.visit_date = generated_date
WHERE
  visit_date IS NULL;