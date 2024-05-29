CREATE TABLE UserAuthentication (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  Username VARCHAR(255) NOT NULL UNIQUE,
  Password VARCHAR(255) NOT NULL,  
  FOREIGN KEY (User_id) REFERENCES User(id)
);
INSERT INTO UserAuthentication (id, User_id, Username, Password)VALUES
(1101, 1, 'user1', 'password1'),
(1102, 2, 'user2', 'password2'),
(1103, 3, 'user3', 'password3'),
(1104, 4, 'user4', 'password4'),
(1105, 5, 'user5', 'password5'),
(1106, 6, 'user6', 'password6'),
(1107, 7, 'user7', 'password7'),
(1108, 8, 'user8', 'password8'),
(1109, 9, 'user9', 'password9'),
(1110, 10, 'user10', 'password10'),
(1111, 11, 'user11', 'password11'),
(1112, 12, 'user12', 'password12'),
(1113, 13, 'user13', 'password13'),
(1114, 14, 'user14', 'password14'),
(1115, 15, 'user15', 'password15'),
(1116, 16, 'user16', 'password16'),
(1117, 17, 'user17', 'password17'),
(1118, 18, 'user18', 'password18'),
(1119, 19, 'user19', 'password19'),
(1120, 20, 'user20', 'password20');

SELECT * FROM UserAuthentication;
 
SELECT
  u.role,
  h.property_id,
  ua.password, 
  w.id AS wishlist_id 
FROM User u
LEFT JOIN Host h ON u.id = h.user_id  
LEFT JOIN UserAuthentication ua ON u.id = ua.User_id  
LEFT JOIN Wishlist w ON u.id = w.User_id; 



