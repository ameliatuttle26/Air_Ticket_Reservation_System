USE air_reservation;

-- 1) Remove seat_capacity from airplane
ALTER TABLE `airplane` DROP COLUMN `seat_capacity`;

-- 2) Create seat_class
CREATE TABLE `seat_class` (
  `airline_name` varchar(50) NOT NULL,
  `airplane_id` int(11) NOT NULL,
  `seat_class_id` int(11) NOT NULL,
  `seat_capacity` int(11) NOT NULL,
  PRIMARY KEY(`airline_name`, `airplane_id`, `seat_class_id`),
  FOREIGN KEY(`airline_name`, `airplane_id`)
    REFERENCES `airplane`(`airline_name`, `airplane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 3) Rename price -> base_price on flight
ALTER TABLE `flight` RENAME COLUMN `price` TO `base_price`;

-- 4) Add airplane + seat_class columns to ticket
ALTER TABLE `ticket`
  ADD COLUMN `airplane_id` int(11) NOT NULL,
  ADD COLUMN `seat_class_id` int(11) NOT NULL,
  ADD CONSTRAINT FOREIGN KEY (`airline_name`, `airplane_id`, `seat_class_id`)
    REFERENCES `seat_class`(`airline_name`, `airplane_id`, `seat_class_id`);

-- 5) Add purchase_price to purchases
ALTER TABLE `purchases`
  ADD COLUMN `purchase_price` decimal(10,0) NOT NULL;
