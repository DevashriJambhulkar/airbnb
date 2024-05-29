CREATE TABLE BookingPayment (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Booking_id INT NOT NULL,
  Payment_id INT NOT NULL,
  FOREIGN KEY (Booking_id) REFERENCES Booking(id),
  FOREIGN KEY (Payment_id) REFERENCES Payment(id)
);
INSERT INTO BookingPayment (id, Booking_id, Payment_id) VALUES
(71, 401, 601),
(72, 402, 602),
(73, 403, 603),
(74, 404, 604),
(75, 405, 605),
(76, 406, 606),
(77, 407, 607),
(78, 408, 608),
(79, 409, 609),
(80, 410, 610),
(81, 411, 611),
(82, 412, 612),
(83, 413, 613),
(84, 414, 614),
(85, 415, 615),
(86, 416, 616),
(87, 417, 617),
(88, 418, 618),
(89, 419, 619),
(90, 420, 620);

SELECT * FROM BookingPayment;

SELECT pm.methodtype, bp.id AS booking_payment_id, b.status, p.amount
FROM PaymentMethod pm
INNER JOIN Payment p ON pm.Payment_id = p.id
INNER JOIN BookingPayment bp ON p.id = bp.Payment_id
INNER JOIN Booking b ON bp.Booking_id = b.id;

SELECT pm.methodtype, bp.id AS booking_payment_id, b.status, p.amount
FROM PaymentMethod pm
INNER JOIN Payment p ON pm.Payment_id = p.id
INNER JOIN BookingPayment bp ON p.id = bp.Payment_id
INNER JOIN Booking b ON bp.Booking_id = b.id
WHERE status ='Confirmed';