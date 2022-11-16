CREATE DATABASE orderDB2;
create table orderdb2.Users (
  UserId int primary key, 
  FirstName varchar(64) not null, 
  LastName varchar(64) not null
);
CREATE TABLE orderdb2.Orders(
  OrderID int NOT NULL, 
  OrderNumber int NOT NULL, 
  UserID int, 
  created_at timestamp, 
  FOREIGN KEY (UserID) REFERENCES orderdb2.Users(UserID) ON DELETE CASCADE
);
CREATE TABLE orderdb2.User_carts (
  User_cartsId int NOT NULL, 
  name varchar(128) not null, 
  UserId int, 
  FOREIGN KEY(UserId) REFERENCES orderdb2.users(UserId) ON DELETE CASCADE
);
CREATE TABLE orderdb2.order_items (
  order_itemsId int NOT NULL, 
  name varchar(128) not null, 
  UserId int, 
  FOREIGN KEY(UserID) REFERENCES orderdb2.Users(UserID) ON DELETE CASCADE
);

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`) VALUES ('1', 'Иванов', 'Иван'), ('2', 'Андреев', 'Андрей');
INSERT INTO `user_carts` (`User_cartsId`, `name`, `UserId`) VALUES ('1', 'Телефон', '1'), ('2', 'Ручка', '2');
INSERT INTO `order_items` (`order_itemsId`, `name`, `UserId`) VALUES ('1', 'Телефон', '1'), ('2', 'Ручка', '2');
INSERT INTO `orders` (`OrderID`, `OrderNumber`, `UserID`, `created_at`) VALUES ('1', '1111', '1', '2022-11-08 18:34:42'), ('2', '333333', '2', '2022-11-14 10:40:53');


SELECT 
  users.UserId, 
  user_carts.name, 
  orders.OrderID, 
  order_items.order_itemsId, 
  order_items.name, 
  orders.created_at 
FROM 
  users 
  JOIN orders ON orders.UserId = users.UserId 
  JOIN order_items ON order_items.UserId = users.UserId 
  JOIN user_carts ON user_carts.UserId = users.UserId

DELETE FROM users WHERE id = 1;