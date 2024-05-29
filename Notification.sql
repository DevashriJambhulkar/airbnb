CREATE TABLE Notification (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  Message TEXT,
  Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (User_id) REFERENCES User(id)
);
INSERT INTO Notification (id, User_id, Message, Timestamp)VALUES
(51, 1, 'Your reservation for cabin stay is confirmed!', '2024-05-21 10:15:00'),
(52, 2, 'New message from host about your upcoming stay.', '2024-05-20 18:20:00'),
(53, 3, 'Your inquiry about the treehouse rental has been received.', '2024-05-19 14:35:00'),
(54, 4, 'Payment reminder: Your beach house reservation is due soon.', '2024-05-18 16:45:00'),
(55, 5, 'Do not miss out! Special offer on glamping getaway.', '2024-05-17 11:00:00'),
(56, 6, 'Your friend John started following you on Getaways!', '2024-05-16 20:10:00'),
(57, 7, 'Your review for the mountain lodge has been published.', '2024-05-15 09:25:00'),
(58, 8, 'Update: Flight information for your trip has changed slightly.', '2024-05-14 17:30:00'),
(59, 9, 'Someone messaged you about your listing in the city center.', '2024-05-13 13:45:00'),
(60, 10, 'Happy birthday! Here is a special discount for your next getaway.', '2024-05-12 07:50:00'),
(61, 11, 'Your bookable dates for the lake cabin have been updated.', '2024-05-11 15:05:00'),
(62, 12, 'Your wishlist item - beachfront condo - is now available!', '2024-05-10 10:15:00'),
(63, 13, 'Reminder: You have an upcoming reservation for a studio apartment.', '2024-05-09 19:30:00'),
(64, 14, 'Your question about amenities at the hostel has been answered.', '2024-05-08 15:45:00'),
(65, 15, 'Your payment for the upcoming stay has been successful.', '2024-05-07 12:00:00'),
(66, 16, 'New message from potential guest about your rental property.', '2024-05-06 08:15:00'),
(67, 17, 'Your account has been successfully upgraded to Getaways Premium!', '2024-05-05 16:30:00'),
(68, 18, 'Leave a review for your recent stay and earn reward points!', '2024-05-04 14:40:00'),
(69, 19, 'Do not forget to pack your swimsuit! Your poolside stay starts tomorrow.', '2024-05-03 10:55:00'),
(70, 20, 'Welcome to Getaways! We hope you find your dream vacation rental here.', '2024-05-02 06:00:00');

SELECT * FROM Notification;

SELECT u.email, u.phone, g.id AS guest_id, n.message
FROM User u
INNER JOIN Guest g ON u.id = g.User_id  
LEFT JOIN Notification n ON u.id = n.User_id  
ORDER BY u.email, guest_id;  
