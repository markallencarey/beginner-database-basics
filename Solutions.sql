--Table - person

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  height INTEGER,
  city VARCHAR(250),
  favorite_color VARCHAR(250)
  );

INSERT INTO person
  (name, age, height, city, favorite_color)
VALUES
  ('Krissbeth', 24, 100, 'Alpine', 'purple'),
  ('Mark', 31, 150, 'Alpine', 'blue'),
  ('Brian', 29, 180, 'New York City', 'blue'),
  ('Cecybeth', 30, 120, 'Los Angeles', 'green'),
  ('Albus', 4, 30, 'Albusland', 'blue');

SELECT * FROM person
ORDER by height DESC;

SELECT * FROM person
ORDER by height ASC;

SELECT * FROM person
ORDER by age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


--Table - orders

CREATE table orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(250),
  product_price FLOAT,
  quantity INTEGER
  );

INSERT INTO orders
	(person_id, product_name, product_price, quantity)
VALUES
	(2, 'basketball', 24.95, 2),
  (4, 'Harry Potter and the Sorcerers Stone', 15.99, 1);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 2;


--Table - artists

INSERT INTO artist
	(name)
VALUES
  ('Jack Johnson'), ('Bleachers'), ('Kina Grannis');

SELECT * from artist
WHERE artist_id BETWEEN 30 AND 40
ORDER BY name DESC;

SELECT * from artist
WHERE artist_id BETWEEN 100 AND 105
ORDER BY name ASC;

SELECT * from artist
WHERE name LIKE ('Black%');

SELECT * from artist
WHERE name LIKE ('%Black%');


--Table - employee

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT employee_id, first_name, last_name FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';
SELECT * FROM employee
WHERE reports_to = 2;

SELECT employee_id, first_name, last_name FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(employee_id) FROM employee
WHERE city = 'Lethbridge';


--Table - invoice

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT * FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;