/* “Only" в “Index Only Scan". Это значит, что Постгрес понял,
 что я выбираю только данные (колонки) из индекса.
 И, возможно, ему не нужно ничего проверять в файлах таблицы. 
 Так что он будет возвращать данные прямо из индекса. */
CREATE INDEX
  IF NOT EXISTS idx_person_order_multi ON person_order (person_id, menu_id, order_date);


SET
  enable_seqscan = OFF;


EXPLAIN
  ANALYSE
SELECT
  person_id,
  menu_id,
  order_date
FROM
  person_order
WHERE
  person_id = 8
  AND menu_id = 19;