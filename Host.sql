USE airbnb;
CREATE TABLE airbnb.Host (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  property_id INT NOT NULL,
  Listing_status VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES User(id));
INSERT INTO host (id, user_id, property_id, listing_status) VALUES
(101, 1, 201, 'active'),
(102, 2, 202, 'inactive'),
(103, 3, 203, 'active'),
(104, 4, 204, 'inactive'),
(105, 5, 205, 'active'),
(106, 6, 206, 'inactive'),
(107, 7, 207, 'active'),
(108, 8, 208, 'inactive'),
(109, 9, 209, 'active'),
(110, 10, 210, 'inactive'),
(111, 11, 211, 'active'),
(112, 12, 212, 'inactive'),
(113, 13, 213, 'active'),
(114, 14, 214, 'inactive'),
(115, 15, 215, 'active'),
(116, 16, 216, 'inactive'),
(117, 17, 217, 'active'),
(118, 18, 218, 'inactive'),
(119, 19, 219, 'active'),
(120, 20, 220, 'inactive');

SELECT * FROM host;
SELECT U.first_name, H.listing_status, P.address
FROM airbnb.user U 
inner join airbnb.host H ON U.id=H.user_id
inner join airbnb.Property P on H.id=P.host_id;


