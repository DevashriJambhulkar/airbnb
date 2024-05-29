CREATE TABLE Location (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Country VARCHAR(255) NOT NULL,
  Region VARCHAR(255),
  City VARCHAR(255),
  Street VARCHAR(255),
  Post_code VARCHAR(255)
);

INSERT INTO Location (id, Country, Region, City, Street, Post_code) VALUES
(801, 'France', 'Île-de-France', 'Paris', '10 Rue de Rivoli', '75001'),
(802, 'Italy', 'Tuscany', 'Florence', 'Piazza della Signoria, 1', '50121'),
(803, 'Spain', 'Catalonia', 'Barcelona', 'Passeig de Gràcia, 11', '08007'),
(804, 'United Kingdom', 'England', 'London', '221B Baker Street', 'NW1 6XE'),
(805, 'Japan', 'Kantō', 'Tokyo', 'Shibuya Crossing', '150-0002'),
(806, 'United States', 'California', 'Los Angeles', '1600 Vine St', '90028'),
(807, 'Canada', 'British Columbia', 'Vancouver', 'Granville Island', 'V6H 3S2'),
(808, 'Australia', 'New South Wales', 'Sydney', 'Sydney Opera House', '2000'),
(809, 'Brazil', 'Southeast', 'Rio de Janeiro', 'Copacabana Beach', '22054-001'),
(810, 'Mexico', 'Central Mexico', 'Mexico City', 'Zócalo Square', '06000'),
(811, 'India', 'Delhi', 'Delhi', 'Taj Mahal', '282001'),
(812, 'China', 'Beijing', 'Beijing', 'Great Wall of China', '100000'),
(813, 'South Africa', 'Western Cape', 'Cape Town', 'Table Mountain', '8001'),
(814, 'Argentina', 'Buenos Aires', 'Buenos Aires', 'La Boca', 'C1147AAN'),
(815, 'New Zealand', 'South Island', 'Queenstown', 'Skippers Canyon Road', '9300'),
(816, 'Peru', 'Cuzco Region', 'Machu Picchu', 'Machu Picchu Historic Sanctuary', '08000'),
(817, 'Iceland', 'Capital Region', 'Reykjavík', 'Hallgrímskirkja', '101'),
(818, 'Kenya', 'Rift Valley', 'Masai Mara National Reserve','Zingabai takli', 'N/A'),
(819, 'Greece', 'South Aegean', 'Santorini', 'Oia', '84702'),
(820, 'Turkey', 'Marmara', 'Istanbul', 'Hagia Sophia', '34400');

SELECT * FROM Location;

SELECT l.Country, l.Region, r.Street, r.Comment
FROM Location l, Room r
WHERE l.Street = r.Street;

