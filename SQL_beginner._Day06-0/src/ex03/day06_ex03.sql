CREATE UNIQUE INDEX IF NOT EXISTS idx_person_discounts_unique ON person_discounts (pizzeria_id, person_id);


SET
  enable_seqscan = OFF;


EXPLAIN
ANALYZE
SELECT
  pizzeria_id,
  person_id
FROM
  person_discounts
WHERE
  pizzeria_id <> 10
  and person_id <> 5