USE airbnb;
CREATE TABLE Booking (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Guest_id INT NOT NULL,
  Property_id INT NOT NULL,
  Dates VARCHAR(255) NOT NULL,  
  Status VARCHAR(255) NOT NULL,
  FOREIGN KEY (Guest_id) REFERENCES Guest(id),
  FOREIGN KEY (Property_id) REFERENCES Property(id)
);

INSERT INTO Booking (id, Guest_id, Property_id, Dates, Status) VALUES
(401, 301, 201, '2024-07-15 TO 2024-07-22', 'Confirmed'),
(402, 302, 202, '2024-06-10 TO 2024-06-17', 'Completed'),
(403, 303, 203, '2024-12-25 TO 2025-01-02', 'Pending'),
(404, 304, 204, '2024-09-01 TO 2024-09-07', 'Confirmed'),
(405, 305, 205, '2025-02-14 TO 2025-02-20', 'New'),
(406, 306, 206, '2024-08-12 TO 2024-08-19', 'Confirmed'),
(407, 307, 207, '2024-10-26 TO 2024-11-02', 'Partially Paid'),
(408, 308, 208, '2024-07-04 TO 2024-07-10', 'Completed'),
(409, 309, 209, '2025-03-07 TO 2025-03-14', 'New'),
(410, 310, 210, '2024-11-21 TO 2024-11-28', 'Confirmed'),
(411, 311, 211, '2024-05-25 TO 2024-06-01', 'Completed'),
(412, 312, 212, '2024-08-05 TO 2024-08-10', 'Confirmed'),
(413, 313, 213, '2024-12-18 TO 2024-12-24', 'New'),
(414, 314, 214, '2025-01-20 TO 2025-01-27', 'Pending'),
(415, 315, 215, '2024-06-23 TO 2024-07-01', 'Completed'),
(416, 316, 216, '2024-09-15 TO 2024-09-22', 'Partially Paid'),
(417, 317, 217, '2024-10-05 TO 2024-10-12', 'Confirmed'),
(418, 318, 218, '2025-04-11 TO 2025-04-18', 'New'),
(419, 319, 219, '2024-07-28 TO 2024-08-04', 'Confirmed'),
(420, 320, 220, '2024-06-07 TO 2024-06-14', 'Completed');

 SELECT * FROM Booking;
 
SELECT A.id, B.dates, P.amount
FROM airbnb.booking B 
inner join airbnb.bookingpayment A ON B.id=A.booking_id
inner join airbnb.payment P on A.payment_id=P.id;


