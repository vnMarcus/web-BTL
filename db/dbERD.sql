CREATE TABLE `user` (id bigint(19) NOT NULL AUTO_INCREMENT, user_name varchar(50) NOT NULL UNIQUE, fullname varchar(50) NOT NULL, password varchar(50) NOT NULL, phone_number varchar(11) NOT NULL, email varchar(50) NOT NULL, address varchar(100) NOT NULL, date_of_creation date NOT NULL, status tinyint(3) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Product (id bigint(19) NOT NULL AUTO_INCREMENT, product_name varchar(50) NOT NULL UNIQUE, price double NOT NULL, descriptions text NOT NULL, status int(10) NOT NULL, available int(10) NOT NULL, images text NOT NULL, quantity int(10) NOT NULL, Categoryid bigint(20) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Orders_detail (quantity int(11), price double, Productid bigint(19) NOT NULL, Ordersid bigint(19) NOT NULL, PRIMARY KEY (Productid, Ordersid));
CREATE TABLE Category (id bigint(20) NOT NULL AUTO_INCREMENT, category_name varchar(30) NOT NULL, descriptions text, parent_category_id bigint(20) DEFAULT NULL, PRIMARY KEY (id));
CREATE TABLE Orders (id bigint(19) NOT NULL AUTO_INCREMENT, user_id bigint(19) NOT NULL, order_time datetime NOT NULL, delivery_time datetime NOT NULL, status text, Address text, payment_id bigint(20) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Payment_method (id bigint(20) NOT NULL AUTO_INCREMENT, name varchar(20) NOT NULL, user_id bigint(19) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Cart (id bigint(20) NOT NULL AUTO_INCREMENT, user_id bigint(19) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Cart_item (id bigint(20) NOT NULL, Cartid bigint(20) NOT NULL, Productid bigint(19) NOT NULL, quantity int(11), PRIMARY KEY (id, Cartid, Productid));
ALTER TABLE Orders ADD CONSTRAINT FKOrders435482 FOREIGN KEY (user_id) REFERENCES `user` (id);
ALTER TABLE Category ADD CONSTRAINT FKCategory177379 FOREIGN KEY (parent_category_id) REFERENCES Category (id);
ALTER TABLE Product ADD CONSTRAINT FKProduct367954 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Cart ADD CONSTRAINT FKCart437528 FOREIGN KEY (user_id) REFERENCES `user` (id);
ALTER TABLE Cart_item ADD CONSTRAINT FKCart_item948952 FOREIGN KEY (Cartid) REFERENCES Cart (id);
ALTER TABLE Cart_item ADD CONSTRAINT FKCart_item30315 FOREIGN KEY (Productid) REFERENCES Product (id);
ALTER TABLE Orders_detail ADD CONSTRAINT FKOrders_det654225 FOREIGN KEY (Ordersid) REFERENCES Orders (id);
ALTER TABLE Orders_detail ADD CONSTRAINT FKOrders_det937939 FOREIGN KEY (Productid) REFERENCES Product (id);
ALTER TABLE Payment_method ADD CONSTRAINT FKPayment_me33431 FOREIGN KEY (user_id) REFERENCES `user` (id);
ALTER TABLE Orders ADD CONSTRAINT FKOrders552269 FOREIGN KEY (payment_id) REFERENCES Payment_method (id);
