CREATE TABLE Calendar (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Property_id INT NOT NULL,
  Date DATE NOT NULL,
  Availability BOOLEAN NOT NULL,
  FOREIGN KEY (Property_id) REFERENCES Property(id)
);
INSERT INTO Calendar (id, Property_id, Date, Availability)VALUES
(11, 201, '2024-05-28', 1),
(12, 202, '2024-05-29', 0),
(13, 203, '2024-05-30', 1),
(14, 204, '2024-05-31', 0),
(15, 205, '2024-06-01', 1),
(16, 206, '2024-06-02', 1),
(17, 207, '2024-06-03', 0),
(18, 208, '2024-06-04', 1),
(19, 209, '2024-06-05', 0),
(20, 210, '2024-06-06', 1),
(21, 211, '2024-06-07', 1),
(22, 212, '2024-06-08', 0),
(23, 213, '2024-06-09', 1),
(24, 214, '2024-06-10', 0),
(25, 215, '2024-06-11', 1),
(26, 216, '2024-06-12', 1),
(27, 217, '2024-06-13', 0),
(28, 218, '2024-06-14', 1),
(29, 219, '2024-06-15', 0),
(30, 220, '2024-06-16', 1);

SELECT * FROM Calendar;

SELECT h.id AS host_id, p.name, p.address, c.availability
FROM Host h
INNER JOIN Property p ON h.property_id = p.id
INNER JOIN Calendar c ON p.id = c.Property_id;
