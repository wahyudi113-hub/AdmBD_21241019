CREATE TABLE `productlines` (
  `productLine` int PRIMARY KEY,
  `textDescription` varchar(255),
  `htmlDescription` varchar(255),
  `image` image
);

CREATE TABLE `products` (
  `productCode` int PRIMARY KEY,
  `poductName` varchar(255),
  `productLine` varchar(255),
  `productScale` varchar(255),
  `productVendor` varchar(255),
  `productDescription` varchar(255),
  `quantityInStock` int,
  `buyPrice` int,
  `MSRP` varchar(255)
);

CREATE TABLE `orderdetails` (
  `orderNumber` int,
  `productCode` int,
  `quantityOrdered` int,
  `priceEach` int,
  `orderLineNumber` int,
  PRIMARY KEY (`orderNumber`, `productCode`)
);

CREATE TABLE `orders` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` datetime,
  `requiretDate` varchar(255),
  `shippedDate` varchar(255),
  `status` varchar(255),
  `comments` varchar(255),
  `customerNumber` int
);

CREATE TABLE `customers` (
  `customerNumber` [PK],
  `customerName` varchar(255),
  `contactLastName` varchar(255),
  `contactFirsName` varchar(255),
  `phone` int,
  `addresLine1` varchar(255),
  `addresLine2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `postalcode` varchar(255),
  `country` varchar(255),
  `salesRepEmployeeNumber` int,
  `creditlimit` int
);

CREATE TABLE `payments` (
  `customerNumber` int PRIMARY KEY,
  `checknumber` int,
  `paymentDate` int,
  `amount` varchar(255)
);

CREATE TABLE `employees` (
  `employeeNumber` [PK],
  `lastName` varchar(255),
  `firsName` varchar(255),
  `extention` varchar(255),
  `email` varchar(255),
  `officeCode` int,
  `reportsTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `offices` (
  `officeCode` int PRIMARY KEY,
  `city` varchar(255),
  `phone` varchar(255),
  `addresLine1` varchar(255),
  `addresLine2` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `postalcode` int,
  `territory` varchar(255)
);

ALTER TABLE `products` ADD FOREIGN KEY (`productLine`) REFERENCES `productlines` (`htmlDescription`);

ALTER TABLE `orderdetails` ADD FOREIGN KEY (`quantityOrdered`) REFERENCES `products` (`productLine`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `orderdetails` (`orderLineNumber`);

ALTER TABLE `orders` ADD FOREIGN KEY (`status`) REFERENCES `customers` (`customerName`);

ALTER TABLE `payments` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`postalcode`);

ALTER TABLE `employees` ADD FOREIGN KEY (`jobTitle`) REFERENCES `customers` (`customerName`);

ALTER TABLE `employees` ADD FOREIGN KEY (`employeeNumber`) REFERENCES `employees` (`reportsTo`);

ALTER TABLE `employees` ADD FOREIGN KEY (`firsName`) REFERENCES `offices` (`addresLine2`);
