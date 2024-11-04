DELETE DATABASE myproject;

DELETE TABLE employee;

DELETE FROM employee WHERE id = 1;

DELETE FROM employee WHERE email LIKE '%google%' AND country_of_birth = 'China';

UPDATE employee SET email 'user_name@test.com' WHERE id = 1;

UPDATE employee SET first_name = 'John', last_name = 'Doe', email = 'John.Doe@gmail.com' WHERE id = 1;

INSERT INTO employee (id, first_name, last_name, gender, email, country_of_birth, date_of_birht)
VALUES (1, 'John', 'Doe', 'Male', 'John.Doe@gmail.com', 'Norway', DATE '01-01-1999')
ON CONFLICT (id) DO NOTHING;

INSERT INTO employee (id, first_name, last_name, gender, email, country_of_birth, date_of_birht)
VALUES (1, 'John', 'Doe', 'Male', 'John.Doe@gmail.com', 'Norway', DATE '01-01-1999')
ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email, first_name = EXCLUDED.first_name;