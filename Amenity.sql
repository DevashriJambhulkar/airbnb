CREATE TABLE Amenity (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Description TEXT
);

INSERT INTO Amenity (id, Name, Description)VALUES
(901, 'Wi-Fi', 'Free wireless internet access throughout the property.'),
(902, 'Parking', 'On-site parking available (free or for a fee).'),
(903, 'Kitchen', 'Fully equipped kitchen for self-catering.'),
(904, 'Air conditioning', 'Air conditioning to keep you cool during your stay.'),
(905, 'Heating', 'Heating system to keep you warm in colder months.'),
(906, 'Laundry facilities', 'Washing machine and dryer available for guest use.'),
(907, 'Pet-friendly', 'Pets are welcome to stay (restrictions may apply).'),
(908, 'Hot tub', 'Relaxing hot tub available for guest enjoyment.'),
(909, 'Pool', 'Swimming pool on-site for guests to use.'),
(910, 'Gym', 'Fitness center with exercise equipment available.'),
(911, 'Balcony', 'Private balcony with a view for guests to enjoy.'),
(912, 'Fireplace', 'Cozy fireplace to create a warm and inviting atmosphere.'),
(913, 'Cable TV', 'Cable television with a variety of channels for entertainment.'),
(914, 'Beach access', 'Direct access to the beach from the property.'),
(915, 'Airport shuttle', 'Airport shuttle service available (may require a fee).'),
(916, 'BBQ grill', 'BBQ grill available for guests to use for outdoor cooking.'),
(917, 'Babysitting services', 'Babysitting services available upon request (may require a fee).'),
(918, 'Ski-in/ski-out access', 'Direct access to ski slopes from the property.'),
(919, 'Ocean view', 'Breathtaking view of the ocean from the property.'),
(920, 'City view', 'Panoramic view of the city from the property.');

SELECT * FROM Amenity;
DROP TABLE airbnb.Amenity;
SELECT p.Address, a.Description, pa.id 
FROM Property p
INNER JOIN PropertyAmenity pa ON p.id = pa.property_id
INNER JOIN Amenity a ON pa.amenity_id = a.id;

