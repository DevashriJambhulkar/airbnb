USE airbnb;
CREATE TABLE Review (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Guest_id INT NOT NULL,
  Property_id INT NOT NULL,
  Rating INT,  
  Comment TEXT,
  timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (Guest_id) REFERENCES Guest(id),
  FOREIGN KEY (Property_id) REFERENCES Property(id)
);
INSERT INTO Review (id, Guest_id, Property_id, Rating, Comment, timestamp) VALUES
(501, 301, 201, 5, 'Beautiful beachfront location, exactly as described!', CURRENT_TIMESTAMP),
(502, 302, 202, 4, 'Great city apartment, convenient location. A bit noisy at night.', CURRENT_TIMESTAMP),
(503, 303, 203, 5, 'Cozy cabin, perfect for a relaxing getaway. Would definitely recommend!', CURRENT_TIMESTAMP),
(504, 304, 204, 4, 'Unique townhouse, great for exploring the city. Needs some minor maintenance updates.', CURRENT_TIMESTAMP),
(505, 305, 205, 5, 'Amazing ski chalet! Perfect for a winter vacation. Host was very responsive.', CURRENT_TIMESTAMP),
(506, 306, 206, 5, 'Charming farmhouse with stunning vineyard views. Delicious breakfast included!', CURRENT_TIMESTAMP),
(507, 307, 207, 5, 'Dreamy island bungalow right on the beach. Perfect for a tropical paradise escape!', CURRENT_TIMESTAMP),
(508, 308, 208, 4.5, 'Stylish loft apartment, great for a weekend stay. Could use better amenities.', CURRENT_TIMESTAMP),
(509, 309, 209, 5, 'Beautiful lakefront cabin. Perfect for enjoying nature and outdoor activities.', CURRENT_TIMESTAMP),
(510, 310, 210, 4, 'Relaxing desert retreat. Pool was a bit small for the number of guests.', CURRENT_TIMESTAMP),
(511, 311, 211, 5, 'Great tiny house experience! Perfect for a minimalist stay close to downtown.', CURRENT_TIMESTAMP),
(512, 312, 212, 5, 'Spacious beach house, great for families. Well-equipped kitchen.', CURRENT_TIMESTAMP),
(513, 313, 213, 5, 'Unique treehouse stay! Perfect for an adventurous getaway. Exactly as pictured.', CURRENT_TIMESTAMP),
(514, 314, 214, 4.5, 'Lovely vineyard cottage. Would have liked more information about the included wine tour.', CURRENT_TIMESTAMP),
(515, 315, 215, 5, 'Ski-in/ski-out convenience was amazing! Perfect for a ski vacation.', CURRENT_TIMESTAMP),
(516, 316, 216, 4, 'Great location in the French Quarter. Apartment could use some modernization.', CURRENT_TIMESTAMP),
(517, 317, 217, 3,  'Beautiful canal-side townhouse. Great for exploring Amsterdam by boat!', '2024-05-21 00:56:00'), 
(518, 318, 218, 4, 'Disappointed with the service. Property was not well-maintained.', CURRENT_TIMESTAMP),
(519, 319, 219, 3, 'Great location, but the noise from the construction next door was unbearable.', CURRENT_TIMESTAMP),
(520, 320, 220, 5, 'Perfect stay! Would definitely recommend this property and host.', CURRENT_TIMESTAMP);

SELECT * FROM Review;


SELECT G.id, Z.booking_id, R.rating
FROM airbnb.review R 
inner join airbnb.guest G ON R.guest_id=G.id
inner join airbnb.bookingreview Z on G.id=Z.Guest_id;