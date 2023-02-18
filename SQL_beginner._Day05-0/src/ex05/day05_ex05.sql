/* Частичный индекс — это индекс, который строится по подмножеству строк таблицы,
 определяемому условным выражением (оно называется предикатом частичного индекса). 
 Такой индекс содержит записи только для строк, удовлетворяющих предикату. */
CREATE UNIQUE INDEX IF NOT EXISTS idx_person_order_order_date ON person_order (person_id, menu_id)
WHERE
  order_date = '2022-01-01';


SET
  enable_seqscan = OFF;


EXPLAIN
ANALYZE
SELECT
  person_id,
  menu_id
FROM
  person_order
WHERE
  order_date = '2022-01-01';