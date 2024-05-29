CREATE TABLE Wishlist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  Property_id INT NOT NULL,
  Dateadded DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (User_id) REFERENCES User(id),
  FOREIGN KEY (Property_id) REFERENCES Property(id)
);
INSERT INTO Wishlist (id, User_id, Property_id, Dateadded)VALUES
(31, 1, 201, '2024-05-21 10:00:00'),
(32, 2, 202, '2024-05-20 15:30:00'),
(33, 3, 203, '2024-05-19 18:45:00'),
(34, 4, 204, '2024-05-18 12:10:00'),
(35, 5, 205, '2024-05-17 08:25:00'),
(36, 6, 206, '2024-05-16 17:40:00'),
(37, 7, 207, '2024-05-15 10:55:00'),
(38, 8, 208, '2024-05-14 20:10:00'),
(39, 9, 209, '2024-05-13 12:25:00'),
(40, 10, 210, '2024-05-12 08:40:00'),
(41, 11, 211, '2024-05-11 17:55:00'),
(42, 12, 212, '2024-05-10 11:10:00'),
(43, 13, 213, '2024-05-09 20:25:00'),
(44, 14, 214, '2024-05-08 12:40:00'),
(45, 15, 215, '2024-05-07 08:55:00'),
(46, 16, 216, '2024-05-06 17:10:00'),
(47, 17, 217, '2024-05-05 10:30:00'),
(48, 18, 217, '2024-05-04 18:45:00'),
(49, 19, 219, '2024-05-03 12:00:00'),
(50, 20, 220, '2024-05-02 08:15:00');

SELECT * FROM Wishlist;

SELECT u.Bio, p.Amenities, h.Listing_status, w.id AS wishlist_id
FROM User u
INNER JOIN Wishlist w ON u.id = w.User_id
INNER JOIN Property p ON w.Property_id = p.id
LEFT JOIN Host h ON p.Host_id = h.id; 

