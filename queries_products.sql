-- Comments in SQL Start with dash-dash --
--question 1--
 INSERT INTO products
(name, price, can_be_returned)
 VALUES
 ('chair', 44.00, 'f');
INSERT 0 1

--question 2--
 INSERT INTO products
 (name, price, can_be_returned)
 VALUES
 ('stool', 25.99, 't');
INSERT 0 1

--question 3--
INSERT INTO products
 (name, price, can_be_returned)
 VALUES
('table', 124.00, 'f');
INSERT 0 1

--question 4--
SELECT * FROM products;

--question 5--
SELECT name FROM products;

--question 6--
SELECT name, price FROM products;

--question 7--
INSERT INTO products
 (name, price, can_be_returned)
 VALUES
  ('couch', 2000.00, 't');

--question 8--
SELECT * FROM products WHERE can_be_returned;

--question 9--
SELECT * FROM products WHERE price < 44.00;

--question 10--
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

--question 11--
UPDATE products SET price = price -20;

--question 12--
DELETE FROM products WHERE price < 25;

--question 13--
UPDATE products SET price = price + 20;

--question 14--
UPDATE products SET can_be_returned = 't';

