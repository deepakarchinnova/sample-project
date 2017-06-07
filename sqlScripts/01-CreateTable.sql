--
-- 01-CreateTable.sql
--
DROP TABLE `test`.`test_table`;

CREATE TABLE `test`.`test_table` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
