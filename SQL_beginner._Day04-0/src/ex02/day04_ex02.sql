CREATE
OR REPLACE VIEW v_generated_dates AS
SELECT
  generated_date
FROM
  (
    SELECT
      generated_date :: date
    FROM
      generate_series('2022-01-01', '2022-01-31', interval '1 day') AS generated_date
  ) AS tmp_table
ORDER BY
  1;