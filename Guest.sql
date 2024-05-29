USE airbnb;
CREATE TABLE Guest (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  FOREIGN KEY (User_id) REFERENCES User(id)
);
 INSERT INTO Guest (id, User_id)
 VALUES
(301, 1),
(302, 2),
(303, 3),
(304, 4),
(305, 5),
(306, 6),
(307, 7),
(308, 8),
(309, 9),
(310, 10),
(311, 11),
(312, 12),
(313, 13),
(314, 14),
(315, 15),
(316, 16),
(317, 17),
(318, 18),
(319, 19),
(320, 20);


SELECT * FROM Guest;
SELECT G.id, P.name, B.status
FROM airbnb.guest G
inner join airbnb.booking B ON G.id=B.guest_id
inner join airbnb.Property P on B.property_id=P.id;
