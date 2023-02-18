/* drop 3 old triggers from the person table. */
DROP TRIGGER
  IF EXISTS trg_person_insert_audit ON person;


DROP TRIGGER
  IF EXISTS trg_person_update_audit ON person;


DROP TRIGGER
  IF EXISTS trg_person_delete_audit ON person;


/* drop 3 old trigger functions */
DROP FUNCTION
  IF EXISTS fnc_trg_person_insert_audit();


DROP FUNCTION
  IF EXISTS fnc_trg_person_update_audit();


DROP FUNCTION
  IF EXISTS fnc_trg_person_delete_audit();


/* TRUNCATE — в языке SQL — операция мгновенного удаления всех строк в таблице. */
TRUNCATE
  TABLE person_audit;


/* Database Trigger Function */
CREATE
OR REPLACE FUNCTION fnc_trg_person_audit() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO person_audit(row_id, name, age, gender, address)
        VALUES ('I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
        VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
        VALUES ('D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;


/* Database Trigger */
CREATE TRIGGER
  tg_person_audit
AFTER
INSERT
  OR
UPDATE
  OR
DELETE
  ON person FOR EACH ROW
EXECUTE
  FUNCTION fnc_trg_person_audit();


/* INSERT statement */
INSERT INTO
  person(id, name, age, gender, address)
VALUES
  (10, 'Damir', 22, 'male', 'Irkutsk');


/* UPDATE’s statements */
UPDATE
  person
SET
  name = 'Bulat'
WHERE
  id = 10;


UPDATE
  person
SET
  name = 'Damir'
WHERE
  id = 10;


/* DELETE statement */
DELETE FROM
  person
WHERE
  id = 10;


/* Check */
SELECT
  *
FROM
  person_audit;