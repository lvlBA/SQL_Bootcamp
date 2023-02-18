CREATE
OR REPLACE VIEW v_symmetric_union AS
WITH
  R AS (
    SELECT
      person_id
    FROM
      person_visits
    WHERE
      visit_date = '2022-01-02'
  ),
  S AS (
    SELECT
      person_id
    FROM
      person_visits
    WHERE
      visit_date = '2022-01-06'
  )
SELECT
  *
FROM
  R
WHERE
  person_id NOT IN (
    SELECT
      person_id
    FROM
      S
  )
UNION
SELECT
  *
FROM
  S
WHERE
  person_id NOT IN (
    SELECT
      person_id
    FROM
      R
  )
ORDER BY
  person_id;


  select * from v_symmetric_union;