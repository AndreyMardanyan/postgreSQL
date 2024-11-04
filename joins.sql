SELECT * FROM employee
JOIN car ON employee.car_id = car.id;

JOIN first_name, car_make, car_model 
FROM employee
JOIN car ON employee.car_id = car.id;

SELECT * FROM employee
LEFT JOIN car ON car.id = employee.car_id;

SELECT * FROM employee
LEFT JOIN car ON car.id = employee.car_id WHERE car_id IS NOT NULL;

SELECT * FROM employee
FULL OUTER JOIN car ON car.id = employee.car_id;