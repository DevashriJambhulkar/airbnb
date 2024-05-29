USE airbnb;
CREATE TABLE airbnb.User (
  id INT PRIMARY KEY AUTO_INCREMENT,
  First_name VARCHAR(255) NOT NULL,
  Last_name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) UNIQUE NOT NULL,
  Phone VARCHAR(255),
  Role VARCHAR(255),
  Bio TEXT,
  Profilepicture VARCHAR(255)
);

INSERT INTO airbnb.user (id, first_name, last_name, email, phone, role, Bio, ProfilePicture) VALUES
(1, 'William', 'Campbell', 'william.campbell@example.com', +65689741230, 'Host', 'Love to travel and explore new places! Always up for an adventure.', 'user1_profile.jpg'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '+447890123456', 'Host', 'City dweller who enjoys trying new restaurants and catching the latest shows.', 'user2_profile.png'),
(3, 'Maria', 'Garcia', 'maria.garcia@example.com', NULL, 'Admin','Nature enthusiast who loves hiking, camping, and spending time outdoors.', 'user3_profile.jpg'),
(4, 'Li', 'Wang', 'li.wang@example.com', '+861357924680', 'Traveler','Foodie who loves to cook and explore different cuisines.', 'user4_profile.bmp'),
(5, 'Alex', 'Schmidt', 'alex.schmidt@example.com', NULL, 'Host', 'Passionate about skiing and snowboarding. Always looking for the next powder run!', 'user5_profile.jpg'),
(6, 'Aisha', 'Khan', 'aisha.khan@example.com', '+919876543210', 'Guest','Wine connoisseur who enjoys relaxing at home with a glass of wine and a good book.', 'user6_profile.png'),
(7, 'David', 'Rodriguez', 'david.rodriguez@example.com', '+34654321098', 'Traveler', 'Beach bum who loves soaking up the sun and swimming in the ocean.', 'user7_profile.jpg'),
(8, 'Natalia', 'Petrova', 'natalia.petrova@example.com', '+79217890123', 'Host', 'Creative professional who enjoys art, music, and exploring the city.', 'user8_profile.bmp'),
(9, 'Omar', 'Syed', 'omar.syed@example.com', '+61412345678', 'Guest', 'Fishing enthusiast who loves spending time on the lake and catching the big one!', 'user9_profile.jpg'),
(10, 'Sophie', 'Dupont', 'sophie.dupont@example.com', '+33678901234', 'Traveler','Yoga instructor who enjoys spending time in nature and promoting mindfulness.', 'user10_profile.png'),
(11, 'Emily', 'Chen', 'emily.chen@example.com', NULL, 'Admin', 'Minimalist who appreciates simple living and experiences.', 'user11_profile.jpg'),
(12, 'William', 'Müller', 'william.muller@example.com', '+491573890456','Host', 'Big family who loves traveling together and making memories.', 'user12_profile.bmp'),
(13, 'Marie', 'Kim', 'marie.kim@example.com', '+821012345678', 'Host (Co-host)', 'Bookworm who loves getting lost in a good story.', 'user13_profile.jpg'),
(14, 'Miguel', 'Sanchez', 'miguel.sanchez@example.com', NULL, 'Guest', 'Winemaker who is passionate about creating delicious wines.', 'user14_profile.png'),
(15, 'Anna', 'Schmidt', 'anna.schmidt@example.com', '+491736258901', 'Traveler', 'Ski instructor who loves teaching others the joy of skiing.', 'user15_profile.jpg'),
(16, 'Ibrahim', 'Mohamed', 'REDACTED_EMAIL@example.com', NULL, 'Guest', 'Musician who loves playing music and sharing it with the world.', 'user16_profile.bmp'),
(17, 'Sarah', 'Lee', 'sarah.lee@example.com', '+1876543210', 'Host', 'History buff who loves exploring historical sites and learning about the past.', 'user17_profile.jpg'),
(18, 'Pierre', 'Martin', 'pierre.martin@example.com', '+33765432109', 'Traveler', 'Entrepreneur who is always looking for new opportunities and challenges.', 'user18_profile.png'),
(19, 'Elena', 'Volkova', 'elena.volkova@example.com', '+79154321087', 'Guest', 'Environmentalist who is passionate about protecting our planet.', 'user19_profile.jpg'),
(20,'Antonio', 'Garcia', 'antonio.garcia@example.com', '+34987654321', 'Host', 'Gamer who loves spending time playing video games and connecting with friends online.', 'user20_profile.bmp');

SELECT* FROM airbnb.User;

SELECT 
USER.First_name 
from user 
inner join host 
on
user.id=host.user_id
WHERE listing_status = 'active' ;
DESCRIBE User;
SHOW COLUMNS FROM User;


