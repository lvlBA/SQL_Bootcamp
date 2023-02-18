/* Использование уникальных индексов по нескольким столбцам позволяет 
 гарантировать уникальность всех сочетаний значений в ключе индекса. */
CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique ON menu (pizzeria_id, pizza_name);


SET
  enable_seqscan = OFF;


EXPLAIN
ANALYZE
SELECT
  pizzeria_id,
  pizza_name
FROM
  menu
WHERE
  pizza_name != 'Vito Corleone'