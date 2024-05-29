CREATE TABLE Room (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Rating DECIMAL(10,2),
  Comment TEXT,
  Street VARCHAR(255)
);

INSERT INTO Room (id, Rating, Comment, Street)VALUES
(1001, 5.0, "Spacious room with a comfortable bed, perfect for relaxation!", '10 Rue de Rivoli'),
(1002, 4.5, "Clean and well-maintained, good for a short stay.", 'Piazza della Signoria, 1'),
(1003, 5.0, "Modern and stylish with a stunning view! Highly recommend!", 'Passeig de Gràcia, 11'),
(1004, 4.0, "A bit outdated, but location makes up for it.", '221B Baker Street'),
(1005, 3.5, "Towels could be better, but overall comfortable.", 'Shibuya Crossing'),
(1006, 5.0, "Great value! Clean and comfortable.", '1600 Vine St'),
(1007, 4.5, "Quiet and peaceful, perfect for a good night's sleep.", 'Granville Island'),
(1008, 5.0, "Lovely balcony with a great view and fresh air!", 'Sydney Opera House'),
(1009, 4.0, "Shower pressure weak, but overall a good stay.", 'Copacabana Beach'),
(1010, 5.0, "Friendly and helpful staff made the stay even better!", 'Zócalo Square'),
(1011, 3.0, "Disappointed with cleanliness. Needs better housekeeping.", 'Taj Mahal'),
(1012, 5.0, "Incredibly comfortable bed! Slept like a baby.", 'Great Wall of China'),
(1013, 4.0, "A bit noisy from street traffic, but manageable.", 'Table Mountain'),
(1014, 5.0, "Excellent amenities, especially the pool and gym.", 'La Boca'),
(1015, 4.5, "Convenient location for exploring the city.", 'Skippers Canyon Road'),
(1016, 3.0, "No air conditioning made the room hot during summer.", 'Machu Picchu Historic Sanctuary'),
(1017, 5.0, "Exactly as pictured in the listing. No surprises!", 'Hallgrímskirkja'),
(1018, 4.0, "Low water pressure in the sink.", 'Zingabai takli'),
(1019, 5.0, "Delicious complimentary breakfast was a nice surprise!", 'Oia'),
(1020, 4.5, "Perfect for solo travelers. Would definitely recommend!", 'Hagia Sophia');

SELECT * FROM Room;
SELECT l.City, r.id, r.Comment, r.Rating
FROM Location l, Room r
WHERE l.Street = r.Street;




