ALTER TABLE developers
ADD COLUMN salary INT NOT NULL;

UPDATE developers
SET salary = 100000
WHERE((lname = 'Popovich' AND name = 'Stas'));

UPDATE developers
SET salary = 105000
WHERE((lname = 'Popovich' AND name = 'Alina'));

UPDATE developers
SET salary = 115000
WHERE((lname = 'Popovich' AND name = 'Oleg'));

UPDATE developers
SET salary = 125000
WHERE((lname = 'Pasko' AND name = 'Evgenii'));