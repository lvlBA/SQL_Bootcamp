/* Триггер при изменении данных объявляется как функция без аргументов и с типом результата trigger. 
 Эта функция должна объявляться без аргументов, даже если ожидается, что она будет получать аргументы, 
 заданные в команде CREATE TRIGGER — такие аргументы передаются через TG_ARGV.*/
/* Database Trigger Function */
CREATE
OR REPLACE FUNCTION fnc_trg_person_update_audit() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
    VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    RETURN OLD;
/* OLD - Тип данных RECORD. 
Переменная содержит старую строку базы данных для команд UPDATE/DELETE в триггерах уровня строки. 
В триггерах уровня оператора и для команды INSERT этой переменной значение не присваивается.*/
END;
$$ LANGUAGE plpgsql;


/* Database Trigger */
CREATE TRIGGER
  trg_person_update_audit
AFTER
UPDATE
  ON person FOR EACH ROW
EXECUTE
  FUNCTION fnc_trg_person_update_audit();


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


/* Check */
SELECT
  *
FROM
  person_audit;