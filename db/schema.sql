### Schema
DROP DATABASE IF EXISTS burgers_db;
CREATE database burgers_db;

USE burgers_db;

CREATE TABLE burgers (
  id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(100) NOT NULL,
  devoured BOOL NOT NULL DEFAULT 0,
  time_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  date_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

### Seeds Sql

INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Iceburg Wrapped Grass Fed Bacon Mushroom Swiss Burger');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Hickory Smoked Chicken Thigh Siracha Burger');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Ramen Bun Sweet Teriyaki Burger');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Deep Fried Tempeh Bun Black Bean Vegan Burger');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Mini Sliders Cheddar and Beef Burger 6 Pack');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Tandori Fired Salmon Burger with Thai Basil and Lemon Grass');
INSERT INTO `burgers_db`.`burgers` (`burger_name`) VALUES ('Orange Glazed Duck Breast with Potato Flour Bun');