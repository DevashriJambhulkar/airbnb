CREATE TABLE Paymentmethod (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  Payment_id INT NOT NULL,
  Methodtype VARCHAR(255) NOT NULL,
  Details TEXT,
  FOREIGN KEY (User_id) REFERENCES User(id),
  FOREIGN KEY (Payment_id) REFERENCES Payment(id)
);

INSERT INTO Paymentmethod (id, User_id, Payment_id, Methodtype, Details)VALUES
(621, 1, 601, 'Credit Card', 'Visa ending in 1234'),
(622, 2, 602, 'Debit Card', 'Mastercard ending in 5678'),
(623, 3, 603, 'E-Wallet', 'PayPal account user@example.com'),
(624, 4, 604, 'Net Banking', 'HDFC Bank account 1234567890'),
(625, 5, 605, 'Cash on Delivery', 'NA'),
(626, 6, 606, 'Credit Card', 'American Express ending in 4321'),
(627, 7, 607, 'Debit Card', 'Visa Electron ending in 7890'),
(628, 8, 608, 'E-Wallet', 'Google Pay account mobilenumber@gmail.com'),
(629, 9, 609, 'Net Banking', 'ICICI Bank account 9876543210'),
(630, 10, 610, 'Credit Card', 'Discover Card ending in 0001'),
(631, 11, 611, 'Debit Card', 'Maestro ending in 2345'),
(632, 12, 612, 'E-Wallet', 'Apple Pay account mobilenumber@icloud.com'),
(633, 13, 613, 'Net Banking', 'SBI Bank account 1122334455'),
(634, 14, 614, 'Credit Card', 'Diners Club Card ending in 3456'),
(635, 15, 615, 'Debit Card', 'RuPay card ending in 6789'),
(636, 16, 616, 'Cash on Delivery', 'NA'),
(637, 17, 617, 'UPI', 'UPI ID mobilenumber@upi'),
(638, 18, 618, 'Mobile Wallet', 'PhonePe account mobilenumber@phonepe.com'),
(639, 19, 619, 'Other', 'Bank Transfer - IBAN DE1234567890'),
(640, 20, 620, 'Prepaid Card', 'Travel card ending in 7890');

SELECT * FROM Paymentmethod;

SELECT u.first_name, p.amount, pm.details
FROM User u
INNER JOIN Payment p ON u.id = p.User_id
INNER JOIN Paymentmethod pm ON p.User_id = pm.User_id;
