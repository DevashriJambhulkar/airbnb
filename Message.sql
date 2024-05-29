CREATE TABLE Message (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Sender_id INT NOT NULL,
  Receiver_id INT NOT NULL,
  Content TEXT,
  Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (Sender_id) REFERENCES User(id),
  FOREIGN KEY (Receiver_id) REFERENCES User(id)
);
INSERT INTO Message (id, Sender_id, Receiver_id, Content, Timestamp)VALUES
(12524, 1,1, 'Hi there!', '2024-05-21 01:27:00'),
(22524, 2, 2, 'Hello! ', '2024-05-21 01:27:01'),
(32524, 3, 3, 'This is message number 3.', '2024-05-21 01:27:02'),
(42524, 4, 4, 'Sending another message.', '2024-05-21 01:27:03'),
(52524, 5, 5, 'How are you doing today?', '2024-05-21 01:27:04'),
(62524, 6, 6, 'I am doing well, thanks for asking!', '2024-05-21 01:27:05'),
(72524, 7, 7, 'Great to hear!', '2024-05-21 01:27:06'),
(82524, 8, 8, 'Hey! ', '2024-05-21 01:27:07'),
(92524, 9, 9, 'What\'s up?', '2024-05-21 01:27:08'),
(102524, 10, 10, 'Not much, just hanging out.', '2024-05-21 01:27:09'),
(112524, 11, 11, 'Sounds like fun!', '2024-05-21 01:27:10'),
(122524, 12, 12, 'Yeah, it is!', '2024-05-21 01:27:11'),
(132524, 13, 13, 'This is another message from user 789.', '2024-05-21 01:27:12'),
(142524, 14, 14, 'Replying to message 13.', '2024-05-21 01:27:13'),
(152524, 15, 15, 'How is everyone doing this fine Tuesday?', '2024-05-21 01:27:14'),
(162524, 16, 16, 'Doing great! ', '2024-05-21 01:27:15'),
(172524, 17, 17, 'Cool! ', '2024-05-21 01:27:16'),
(182524, 18, 18, 'This is message number 18.', '2024-05-21 01:27:17'),
(192524, 19, 19, 'Hi there! How are you today?', '2024-05-21 01:27:18'),
(202524, 20, 20, 'Replied to message 18.', '2024-05-21 01:27:19');

SELECT * FROM Message;

SELECT u.Email, h.Listing_status, p.Amenities, m.Content
FROM User u
INNER JOIN Host h ON u.id = h.user_id
INNER JOIN Property p ON h.id = p.Host_id
INNER JOIN Message m ON u.id = m.Sender_id OR h.id = m.Receiver_id;  

