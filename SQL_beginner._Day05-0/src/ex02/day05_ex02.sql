/* B-Tree. Семейство B-Tree индексов — это наиболее часто используемый тип индексов,
 организованных как сбалансированное дерево, упорядоченных ключей. */
CREATE INDEX
  IF NOT EXISTS idx_person_name ON person (upper(name));


SET
  enable_seqscan = OFF;


EXPLAIN
ANALYZE
SELECT
  *
FROM
  person
WHERE
  (upper(name)) IS NOT NULL;


/* SET
 enable_indexscan = ON;
 
 
 EXPLAIN
 ANALYZE
 SELECT
 *
 FROM
 person
 WHERE
 (upper(name)) IS NOT NULL; */