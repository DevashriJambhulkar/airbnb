CREATE TABLE BookingReview (
  Booking_id INT NOT NULL,
  Guest_id INT NOT NULL,  
  review_id INT NOT NULL,
  Review_text TEXT,
  Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (Booking_id, Guest_id, Review_id),  
  FOREIGN KEY (Booking_id) REFERENCES Booking(id),
  FOREIGN KEY (Guest_id) REFERENCES Guest(id),
  FOREIGN KEY (Review_id) REFERENCES Review(id)
); 
INSERT INTO BookingReview (Booking_id, Guest_id, Review_id, Review_text, Timestamp)VALUES
(401, 301, 501, 'The apartment was clean and spacious, and the host was very responsive.', '2024-05-20 10:20:00'),
(402, 302, 502, 'The location was perfect, close to all the main attractions.', '2024-05-19 15:30:00'),
(403, 303, 503, 'The bed was comfortable, and the bathroom was well-stocked.', '2024-05-18 20:45:00'),
(404, 304, 504, 'We had a great time staying here! We would definitely recommend it to others.', '2024-05-17 12:10:00'),
(405, 305, 505, 'The property was exactly as described in the listing.', '2024-05-16 08:25:00'),
(406, 306, 506, 'The host was very helpful and accommodating.', '2024-05-15 17:40:00'),
(407, 307, 507, 'The place was clean and well-maintained.', '2024-05-14 10:55:00'),
(408, 308, 508, 'We would definitely stay here again!', '2024-05-13 20:10:00'),
(409, 309, 509, 'The view from the property was amazing.', '2024-05-12 12:25:00'),
(410, 310, 510, 'The pool was a great way to relax after a long day of sightseeing.', '2024-05-11 08:40:00'),
(411, 311, 511, 'The communication with the host was excellent.', '2024-05-10 17:55:00'),
(412, 312, 512, 'The property was in a great location for exploring the city.', '2024-05-09 11:10:00'),
(413, 313, 513, 'We had a wonderful stay here! Thank you for everything.', '2024-05-08 20:25:00'),
(414, 314, 514, 'The check-in process was smooth and easy.', '2024-05-07 12:40:00'),
(415, 315, 515, 'The property was exactly as pictured in the listing.', '2024-05-06 08:55:00'),
(416, 316, 516, 'This place was a hidden gem! We will be back for sure.', '2024-05-05 11:00:00'),
(417, 317, 517, 'Overall, we had a pleasant stay.', '2024-05-04 17:15:00'),
(418, 318, 518, 'The amenities were great, just as advertised.', '2024-05-03 10:30:00'),
(419, 319, 519, 'We had a minor issue, but the host resolved it quickly.', '2024-05-02 18:45:00'),
(420, 320, 520, 'Great value for the price!', '2024-05-01 12:00:00');

SELECT * FROM BookingReview;

SELECT g.User_id, r.Rating, br.review_id, br.Review_text, b.guest_id
FROM Guest g
INNER JOIN Review r ON g.id = r.Guest_id
INNER JOIN BookingReview br ON r.id = br.Review_id
INNER JOIN Booking b ON br.Booking_id = b.id;







