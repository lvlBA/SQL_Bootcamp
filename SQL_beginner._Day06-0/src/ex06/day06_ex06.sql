/* CREATE SEQUENCE создаёт генератор последовательности. 
 Эта операция включает создание и инициализацию специальной таблицы имя, 
 содержащей одну строку. 
 Владельцем генератора будет пользователь, выполняющий эту команду. */
CREATE SEQUENCE
  IF NOT EXISTS seq_person_discounts START 1;


SELECT
  setval (
    'seq_person_discounts',
    (
      SELECT
        MAX(id)
      FROM
        person_discounts
    )
  );


ALTER TABLE
  person_discounts
ALTER COLUMN
  id
SET
  DEFAULT nextval ('seq_person_discounts');