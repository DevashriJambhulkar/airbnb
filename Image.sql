CREATE TABLE Image (
  id INT PRIMARY KEY AUTO_INCREMENT,
  URL VARCHAR(255) NOT NULL UNIQUE,
  Name VARCHAR(255) NOT NULL
);
INSERT INTO Image (id, URL, Name)VALUES
(731,'https://photos.app.goo.gl/jFF5oMmLpLKP9DdWA', 'Cozy Beachfront Cottage'),
(732,'https://photos.app.goo.gl/waT1GraKDCFJgnRK9', 'Modern City Apartment'),
(733,'https://photos.app.goo.gl/HM1DtF2tQmLGdwG16', 'Secluded Mountain Cabin'),
(734,'https://photos.app.goo.gl/kxEefNBr7umXiUnL6', 'Historic Townhouse'),
(735,'https://photos.app.goo.gl/dv62YeusVBwVtdsx6', 'Luxurious Ski Chalet'),
(736,'https://photos.app.goo.gl/PXNoCb3V1YaL2SMk6', 'Charming Farmhouse'),
(737,'https://photos.app.goo.gl/m57oRM96r5EXtVdg7', 'Tropical Island Bunglow'),
(738,'https://photos.app.goo.gl/XaDYCFr2KB6MJ4Ht5', 'Designer Loft Apartment'),
(739,'https://photos.app.goo.gl/fEjommec6GVKxbjh9', 'Rustic Lakeside Cabin'),
(740,'https://photos.app.goo.gl/xMka4LwQWCN7cKwL7', 'Desert Oasis Retreat'),
(741,'https://photos.app.goo.gl/P8AFLtWvv1jKtRHW9', 'Cozy Tiny House'),
(742,'https://photos.app.goo.gl/LGuRfVVdD2T1cURD8', 'Family-Friendly Beach House'),
(743,'https://photos.app.goo.gl/bRz4D8zinuDdK2JG8', 'Modern Treehouse Getaway'),
(744,'https://photos.app.goo.gl/m7AtToQeBVDhpztu6', 'Private Vineyard Cottage'),
(745,'https://photos.app.goo.gl/tfsVRUXjLQYmmbxP8', 'Ski-in/Ski-out Condo'),
(746,'https://photos.app.goo.gl/bDDf2ACRt9tZVhBG6', 'Historic City Centre Apartment'),
(747,'https://photos.app.goo.gl/LoVp5vuXcFdsRFNv9', 'Canal-side Townhouse'),
(748,'https://photos.app.goo.gl/wMCbVFN3dP84k1cYA', 'Luxury Mountain Lodge'),
(749,'https://photos.app.goo.gl/eTzmWXChR8MvQ2D28', 'Jungle Mountain Adventure'),
(750,'https://photos.app.goo.gl/iUri6utwkXarkjRo6', 'Private Island Escape');

SELECT * FROM Image;
SELECT p.Amenities, i.URL
FROM Image i, Property p
WHERE i.Name = p.Name;
