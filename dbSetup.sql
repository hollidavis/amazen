CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE products (
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  name varchar(255) NOT NULL COMMENT 'product name'
) default charset utf8 comment '';

CREATE TABLE wishlists (
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  name varchar(255) NOT NULL COMMENT 'wishlist name'
) default charset utf8 comment '';

CREATE TABLE wishlistproducts (
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  wishlistId int NOT NULL,
  productId int NOT NULL,
  FOREIGN KEY (wishlistId) REFERENCES wishlists(id) ON DELETE CASCADE,
  FOREIGN KEY (productId) REFERENCES products(id) ON DELETE CASCADE
) default charset utf8 comment '';