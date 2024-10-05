USE lab_mysql;

INSERT IGNORE INTO customers (internal_customer_id, name, phone_number, email, address, city, state, country, postal_code)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82', 'pablo.picasso@example.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
  (20001, 'Abraham Lincoln', '+1 305 907 7086', 'abraham.lincoln@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
  (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'napoleon.bonaparte@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008'),
  (40001, 'Albert Einstein', '+49 30 2093 0', 'albert.einstein@example.com', 'Unter den Linden 6', 'Berlin', 'Berlin', 'Germany', '10117'),
  (50001, 'Marie Curie', '+48 22 621 02 11', 'marie.curie@example.com', 'ul. Hoża 69', 'Warsaw', 'Mazovia', 'Poland', '00-681');

INSERT IGNORE INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
  ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
  ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
  ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
  ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT IGNORE INTO salespersons (internal_staff_id, name, store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
  ('00002', 'Anna Sthesia', 'Barcelona'),
  ('00003', 'Paul Molive', 'Berlin'),
  ('00004', 'Gail Forcewind', 'Paris'),
  ('00005', 'Paige Turner', 'Mimia'),
  ('00006', 'Bob Frapples', 'Mexico City'),
  ('00007', 'Walter Melon', 'Amsterdam'),
  ('00008', 'Shonda Leer', 'São Paulo');

INSERT IGNORE INTO invoices (internal_invoice_id, date, cars_vehicle_id, customers_customer_id, salespersons_staff_id)
VALUES ('852399038', '2018-08-22', '3K096I98581DHSNUP', 10001, '00003'),
  ('731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M', 30001, '00005'),
  ('271135104', '2019-01-22', 'ZM8G7BEUQZ97IH46V', 20001, '00007');

