SELECT
  CAST(casting_table AS DATE) AS missing_date
FROM
  generate_series('2022-01-01', '2022-01-10', interval '1 day') AS casting_table
  LEFT JOIN (
    SELECT
      visit_date
    FROM
      person_visits
    WHERE
      (
        person_id = 1
        OR person_id = 2
      )
      AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
  ) AS final_table ON casting_table = final_table.visit_date
WHERE
  final_table.visit_date IS NULL
ORDER BY
  1;