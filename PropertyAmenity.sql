CREATE TABLE PropertyAmenity (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Property_id INT NOT NULL,
  Amenity_id INT NOT NULL,
  FOREIGN KEY (Property_id) REFERENCES Property(id),
  FOREIGN KEY (Amenity_id) REFERENCES Amenity(id)
);
INSERT INTO PropertyAmenity (id, Property_id, Amenity_id)VALUES
(1601, 201, 901),
(1602, 202, 902),
(1603, 203, 903),
(1604, 204, 904),
(1605, 205, 905),
(1606, 206, 906),
(1607, 207, 907),
(1608, 208, 908),
(1609, 209, 909),
(1610, 210, 910),
(1611, 211, 911),
(1612, 212, 912),
(1613, 213, 913),
(1614, 214, 914),
(1615, 215, 915),
(1616, 216, 916),
(1617, 217, 917),
(1618, 218, 918),
(1619, 219, 919),
(1620, 220, 920);
 
SELECT * FROM PropertyAmenity; 

SELECT p.name AS property_name, a.name AS amenity_name, pa.id AS property_amenity_id
FROM Property p
INNER JOIN PropertyAmenity pa ON p.id = pa.property_id
INNER JOIN Amenity a ON pa.amenity_id = a.id;

