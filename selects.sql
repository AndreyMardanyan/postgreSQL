SELECT FROM employee;

SELECT first_name FROM employee;

SELECT first_name, last_name FROM employee;

SELECT * FROM employee;

SELECT * FROM employee ORDER BY country_of_birth ASC;

SELECT * FROM employee ORDER BY country_of_birth DESC;

SELECT DISTINCT country_of_birth FROM employee ORDER BY country_of_birth;

SELECT * FROM employee WHERE gender = 'Female';

SELECT * FROM employee WHERE gender = 'Female' AND country_of_birth = 'Russia';

SELECT * FROM employee WHERE gender = 'Female' AND (country_of_birth = 'Russia' OR country_of_birth = 'China');

SELECT * FROM employee LIMIT 5;

SELECT * FROM employee OFFSET 3 LIMIT 5;

SELECT * FROM employee OFFSET 3 FETCH FIRST 5 ROW ONLY;

SELECT * FROM employee WHERE country_of_birth IN ('Norway', 'Finland', 'Iceland');

SELECT * FROM employee WHERE date_of_birth BETWEEN '01-01-1990' AND '01-01-2000';

SELECT * FROM employee WHERE email LIKE '%.com';

SELECT * FROM employee WHERE email LIKE '%gmail%';

SELECT * FROM employee WHERE email LIKE 'user_name%';

SELECT * FROM employee WHERE country_of_birth iLIKE 'n%';

SELECT country_of_birth, COUNT(*) FROM employee GROUP BY country_of_birth; 

SELECT country_of_birth, COUNT(*) FROM employee GROUP BY country_of_birth HAVING COUNT(*) > 3;

SELECT country_of_birth, COUNT(*) FROM employee GROUP BY country_of_birth HAVING COUNT(*) > 3 ORDER BY country_of_birth DESC;

SELECT id, first_name AS name, last_name AS surname, gender AS sex, email, country_of_birth, date_of_birth FROM employee;

SELECT MAX(price) FROM holiday;

SELECT MIN(price) FROM holiday;
 
SELECT AVG(price) FROM holiday;

SELECT ROUND(AVG(price)) FROM holiday;

SELECT destination_country, destination_city, MAX(price) FROM holiday GROUP BY destination_country, destination_city;

SELECT destination_country, MIN(price) FROM holiday GROUP BY destination_country;

SELECT SUM(price) FROM holiday;

SELECT destination_country, SUM(price) FROM holiday GROUP BY destination_country;

SELECT 100 + 2;

SELECT 100 - 2;

SELECT 100 / 2;

SELECT 100 * 2;

SELECT 100 % 2;

SELECT NOW();

SELECT NOW()::DATE;

SELECT NOW()::TIME;

SELECT NOW() - INTERVAL '1 YEAR';

SELECT NOW() + INTERVAL '1 month';

SELECT EXTRACT(YEAR FROM NOW());

SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM employee;

ALTER TABLE employee DROP CONSTRAINT employee_pkey;

ALTER TABLE employee ADD PRIMARY KEY (id);

ALTER TABLE employee ADD CONSTRAINT unique_email_addres UNIQUE (email);

ALTER TABLE employee ADD CONSTRAINT gender_constraint CHECK (gender = 'Female' OR gender = 'Male');