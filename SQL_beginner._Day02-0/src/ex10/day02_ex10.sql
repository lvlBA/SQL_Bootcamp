SELECT
  temporary_1.name AS person_name1,
  temporary_2.name AS person_name2,
  temporary_1.address AS common_address
FROM
  person AS temporary_1
  INNER JOIN person AS temporary_2 ON temporary_1.address = temporary_2.address
WHERE
  temporary_1.id > temporary_2.id
ORDER BY
  1,
  2,
  3;