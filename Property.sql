USE airbnb;
CREATE TABLE Property (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Host_id INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Amenities TEXT,
  FOREIGN KEY (Host_id) REFERENCES Host(id)
);

INSERT INTO Property (id, Host_id, Name, Address, Amenities) VALUES
(201, 101, 'Cozy Beachfront Cottage', '123 Ocean View Ave, Miami, FL', 'Beachfront, Wi-Fi, Parking'),
(202, 102, 'Modern City Apartment', '456 Main St, New York, NY', 'City Views, Gym, Rooftop Terrace'),
(203, 103, 'Secluded Mountain Cabin', '789 Pine Ridge Rd, Aspen, CO', 'Hot Tub, Fireplace, Hiking Trails'),
(204, 104, 'Historic Townhouse', '1011 Freedom St, Boston, MA', 'Walkable Location, Patio, Pet-Friendly'),
(205, 105, 'Luxurious Ski Chalet', '1213 Evergreen Dr, Vail, CO', 'Ski-in/Ski-out, Sauna, Steam Room'),
(206, 106, 'Charming Farmhouse', '1415 Country Lane, Napa, CA', 'Vineyard Views, Pool, BBQ Area'),
(207, 107, 'Tropical Island Bungalow', '1617 Palm Tree Way, Maui, HI', 'Oceanfront, Private Beach, Hammock'),
(208, 108, 'Designer Loft Apartment', '1819 Industrial Ave, Chicago, IL', 'Exposed Brick, Balcony, Concierge'),
(209, 109, 'Rustic Lakeside Cabin', '2021 Lakeside Dr, Lake Tahoe, NV', 'Lakefront, Fishing, Kayaking'),
(210, 110, 'Desert Oasis Retreat', '2223 Cactus Way, Palm Springs, CA', 'Pool, Hot Tub, Mountain Views'),
(211, 111, 'Cozy Tiny House', '2425 Elm St, Portland, OR', 'Minimalist Design, Eco-Friendly, Close to Downtown'),
(212, 112, 'Family-Friendly Beach House', '2627 Seashell Dr, Outer Banks, NC', 'Beach Access, Game Room, Spacious Kitchen'),
(213, 113, 'Modern Treehouse Getaway', '2829 Winding Path, Asheville, NC', 'Unique Experience, Forest Views, Tranquil Setting'),
(214, 114, 'Private Vineyard Cottage', '3031 Grapevine Ln, Sonoma, CA', 'Vineyard Tour Included, Wine Tasting, Patio'),
(215, 115, 'Ski-in/Ski-out Condo', '3233 Spruce Peak Rd, Breckenridge, CO', 'Slopeside Location, Ski Locker, Fireplace'),
(216, 116, 'Historic City Center Apartment', '3435 cobblestone St, New Orleans, LA', 'French Quarter Balcony, Walking Distance to Attractions'),
(217, 117, 'Canal-side Townhouse', '3637 Canal St, Amsterdam, Netherlands', 'Canal Views, Boat Tours Nearby, Central Location'),
(218, 118, 'Luxury Mountain Lodge', '3839 Aspen Ridge Dr, Jackson Hole, WY', 'Spa Services, Gourmet Dining, Ski Valet'),
(219, 119, 'Jungle Treehouse Adventure', '4041 Rainforest Way, Costa Rica', 'Immerse Yourself in Nature, Wildlife Viewing, Sustainability Focused'),
(220, 120, 'Private Island Escape', '4243 Castaway Cay, Bahamas', 'Secluded Paradise, Beachfront Relaxation, All-Inclusive Package');

SELECT * FROM Property;

SELECT H.id, P.name, C.availability
FROM airbnb.host H
inner join airbnb.Property P on H.id=P.host_id
inner join airbnb.calendar C ON C.property_id=P.id;