COMMENT
  ON TABLE person_discounts IS 'a discount table';


COMMENT
  ON COLUMN person_discounts.id IS 'a column with PRIMARY KEY';


COMMENT
  ON COLUMN person_discounts.person_id IS 'a foreign key for column person_id reference to person (id) ';


COMMENT
  ON COLUMN person_discounts.pizzeria_id IS 'a foreign key for column pizzeria_id reference to pizzeria (id)';


COMMENT
  ON COLUMN person_discounts.discount IS 'column with discounts';