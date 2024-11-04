ALTER TABLE employee ADD car_id BIGITN REFERENCES car (id);

ALTER TABLE employee ADD UINQUE(car_id);

UPDATE employee SET car_id = 2 WHERE id = 6;