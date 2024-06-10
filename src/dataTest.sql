CREATE DATABASE qlsp;
USE qlsp;

CREATE TABLE category
(
    categoryId   INT PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(255) NOT NULL
);

CREATE TABLE products
(
    productId          INT PRIMARY KEY AUTO_INCREMENT,
    productName        VARCHAR(255) NOT NULL,
    productPrice       DOUBLE       NOT NULL,
    productQuantity    INT,
    productColor       VARCHAR(255),
    productDescription VARCHAR(255),
    productCategoryId  INT          NOT NULL,
    FOREIGN KEY (productCategoryId) REFERENCES category (categoryId)
);

INSERT INTO category (categoryName)
VALUES ('Phone'), ('Television');

INSERT INTO products (productName, productPrice, productQuantity, productColor, productDescription, productCategoryId)
VALUES 	('Iphone 11', 799.0, 12, 'Purple, Yellow, Green', 'ApplePhone', '1'),
          ('Iphone 11 Pro', 1100.0, 12, 'Green, Black, White', 'ApplePhone', '1'),
          ('Iphone X', 749.0, 13, 'Coral, Black, Blue', 'ApplePhone', '1'),
          ('Smart TV 55 INCH', 10000000, 5, 'Black', 'SamSungTV', '2'),
          ('SAMSUNG GALAXY S10 E', 420.0, 10, 'Prism White, Prism Blue, Ceeeramich Black', 'SamSungPhone', '1');
