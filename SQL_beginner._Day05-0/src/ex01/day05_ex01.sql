/* enable_indexscan  Включает или отключает использование планов сканирования по индексу. */
SET
  enable_indexscan = ON;


/* enable_seqscan Включает или отключает 
 использование планировщиком планов 
 последовательного сканирования.*/
SET
  enable_seqscan = OFF;


EXPLAIN
ANALYZE
SELECT
  pizza_name,
  name AS pizzeria_name
FROM
  menu
  LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id;