DROP MATERIALIZED VIEW
  IF EXISTS mv_dmitriy_visits_and_eats;


DROP VIEW
  IF EXISTS v_generated_dates,
  v_price_with_discount,
  v_persons_female,
  v_persons_male,
  v_symmetric_union;


select
  *
from
  v_price_with_discount;


select
  *
from
  mv_dmitriy_visits_and_eats;