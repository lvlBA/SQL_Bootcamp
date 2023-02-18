SELECT
  person.address,
  ROUND (
    MAX(person.age) - CAST (MIN(person.age) AS DEC(4, 2)) / MAX(person.age),
    2
  ) AS formula,
  round(AVG(person.age), 2) average,
  'formula' > 'average' comparison
FROM
  person
GROUP BY
  1
ORDER BY
  1;