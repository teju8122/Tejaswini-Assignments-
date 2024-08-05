Create database InventoryManagement;

Use InventoryManagement;

CREATE TABLE products_details3(
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  productName VARCHAR(70),
  productd_Description VARCHAR(100),
  product_Quantity varchar(10),
  product_Price varchar(10)
);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES
 ('Chillis Seeds', 'Desc1', 20, 20000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES 
('Brinjal Seeds', 'Desc1', 450, 40000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES 
('Garlik Seeds', 'Desc2', 50, 4000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES 
('Tractor', 'Desc2', 1, 1000000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES 
('Grass Cutter Machines', 'Desc2', 2, 200000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES 
('Corn Seeds', 'Desc4', 3, 2000);
INSERT INTO products_details3(productName, productd_Description, product_Quantity, product_Price) VALUES
 ('Apples Sapling', 'Desc2', 2, 200000);
INSERT INTO products_details3 (productName, productd_Description, product_Quantity, product_Price) VALUES 
('Organic Apples', 'Fresh and juicy organic apples', 100, 1.20);

INSERT INTO products_details3 (productName, productd_Description, product_Quantity, product_Price) VALUES 
('Carrots', 'Crunchy organic carrots', 200, 0.50),
('Tomatoes', 'Juicy ripe tomatoes', 150, 0.70),
('Lettuce', 'Fresh green lettuce', 80, 1.00),
('Potatoes', 'Starchy organic potatoes', 300, 0.40);
INSERT INTO products_details3 (productName, productd_Description, product_Quantity, product_Price) VALUES 
('Sprayer', 'Prevents a crops from pests', 100, 1.20);
select*from products_details3;


CREATE TABLE client (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(255),
    client_email VARCHAR(255),
    client_phone VARCHAR(20)
);
Insert into client(client_name, client_email, client_phone) values
('Dipali','DipaliSuware@gmail.com','8576423546'),
('Tejaswini','Teju@gmail.com', '7397842721'),
('Kranti','Kranti@gmail.com','8764736376'),
('Sidhu','Sidhu@gmail.com','8765346765'),
('Pooja','Pooja@gmail.com','976556965');
Insert into client(client_name, client_email, client_phone) values
('Abhi','Abhi@gmail.com','9945092345'),
('Aju','Aju@gmail.com','8483072721'),
('Priya','Priya@gmail.com','9083072021'),
('Swati','Swati@gmail.com','9983472729'),
('Priti','Priti@gmail.com','9963275629'),
('Shweta','Shweta@gmail.com','9863277629'),
('Sneha','Sneha@gmail.com','9730287629'),
('Sid','Sid@gmail.com','9739207621'),
('Revti','Revati@gmail.com','9865920621');
Select*from client;


CREATE TABLE invoice1 (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    Payment_Details VARCHAR(100), 
    Payment_method varchar(100),
    D_Address varchar(100),
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES client(client_id)
);
insert into invoice1(Payment_Details,Payment_method,D_Address,client_id)values
('50000','Online payment','Kolhapur',1);
insert into invoice1(Payment_Details,Payment_method,D_Address,client_id)values
('60000','Cash','Rajapur',2),
('70000','OnlinePayments','Pali','3'),
('50000','Online Payments','Ratnagiri','4');
insert into invoice1(Payment_Details,Payment_method,D_Address,client_id)values
('65324','cash','Dapoli','5'),
('8766','online Payments','Devgad','6'),
('9876','online paymnet','Devrukh','7'),
('10876','online paymnet','Lanja','8'),
('20876','online paymnet','Oni','9'),
('10876','online paymnet','Chiplun','10'),
('16376','online paymnet','palghar','11'),
('16376','online paymnet','PArchuri','12'),
('16376','online paymnet','Kolambe','13'),
('16387','online paymnet','sawarde','14'),
('16334','online paymnet','Sanghmeshwar','15');
Select* from invoice1;


CREATE TABLE order_details2 (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_id INT,
    product_id INT,
    client_id INT,
    quantity INT,
    FOREIGN KEY (invoice_id) REFERENCES invoice1(invoice_id),
    FOREIGN KEY (product_id) REFERENCES products_details3(product_id),
    FOREIGN KEY (client_id) REFERENCES client(client_id)
);

insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'1','1','1','10');

insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'2','2','2','20');
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values (null,'3','3','3','30');
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'4','4','4','40');
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'5','5','5','60');   
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'6','6','6','80');  
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'7','7','7','90');  
 insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'8','8','8','100');  
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'9','9','9','90');  
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'10','10','10','90'); 
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'11','11','11','190'); 
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'12','12','12','190'); 
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'13','13','13','890');  
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'14','14','14','590');  
insert into order_details2(order_id,invoice_id, product_id, client_id, quantity)values(null,'15','15','15','890');  

Select * from order_details2;

SELECT od2.order_id, od2.invoice_id, od2.product_id, pd3.productName, pd3.productd_Description, pd3.product_Quantity, pd3.product_Price, od2.client_id, od2.quantity
FROM order_details2 od2
JOIN products_details3 pd3 ON od2.product_id = pd3.product_id;


SELECT od2.order_id, od2.invoice_id, od2.product_id, od2.client_id, i1.Payment_Details, i1.Payment_method, i1.D_Address, od2.quantity
FROM order_details2 od2
JOIN invoice1 i1 ON od2.invoice_id = i1.invoice_id;
    
  SELECT od2.order_id, od2.invoice_id, i1.Payment_Details, i1.Payment_method, i1.D_Address, od2.product_id, pd3.productName, pd3.productd_Description, pd3.product_Quantity, pd3.product_Price, od2.client_id, c.client_name, c.client_email, c.client_phone, od2.quantity
  FROM order_details2 od2
  JOIN products_details3 pd3 ON od2.product_id = pd3.product_id
  JOIN client c ON od2.client_id = c.client_id
  JOIN invoice1 i1 ON od2.invoice_id = i1.invoice_id;

SELECT product_id,
SUM(quantity)AS total_quantity_ordered
FROM order_details2
GROUP BY product_id;

SELECT client_id,
SUM(quantity) AS total_quantity_ordered
FROM order_details2
GROUP BY client_id;

SELECT invoice_id,
SUM(quantity) AS total_quantity_ordered
FROM order_details2
GROUP BY invoice_id;

SELECT product_id,
client_id,
SUM(quantity) AS total_quantity_ordered
FROM order_details2
GROUP BY product_id, client_id;

SELECT od2.product_id, pd3.productName,
SUM(od2.quantity) AS total_revenue
FROM order_details2 od2
JOIN products_details3 pd3 ON od2.product_id = pd3.product_id
GROUP BY od2.product_id, pd3.productName;

SELECT od2.client_id,
c.client_name,
SUM(quantity) AS total_spent
FROM order_details2 od2
JOIN products_details3 pd3 ON od2.product_id = pd3.product_id
JOIN client c ON od2.client_id = c.client_id
GROUP BY od2.client_id, c.client_name;

Select * from products_details3 cross join client cross join invoice1 cross join order_details2;

