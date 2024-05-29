USE airbnb;
CREATE TABLE Payment (
  id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT NOT NULL,
  Order_id INT,  
  Amount DECIMAL(10,2) NOT NULL,  
  Timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (User_id) REFERENCES User(id)  
);

INSERT INTO Payment (id, User_id, Order_id, Amount, Timestamp) VALUES
 (601, 1, 202405001, 150.00, CURRENT_TIMESTAMP),
 (602, 2, 202405002, 325.75, CURRENT_TIMESTAMP),
 (603, 3, 202405003, 87.99, CURRENT_TIMESTAMP),
 (604, 4, 202405004, 129.50, CURRENT_TIMESTAMP),
 (605, 5, 202405005, 499.99, CURRENT_TIMESTAMP),
 (606, 6, 202405006, 210.25, CURRENT_TIMESTAMP),
 (607, 7, 202405007, 784.00, CURRENT_TIMESTAMP),
 (608, 8, 202405008, 189.00, CURRENT_TIMESTAMP),
 (609, 9, 202405009, 256.40, CURRENT_TIMESTAMP),
 (610, 10, 202405010, 100.00, CURRENT_TIMESTAMP),
 (611, 11, 202405011, 67.88, CURRENT_TIMESTAMP),
 (612, 12, 202405012, 985.32, CURRENT_TIMESTAMP),
 (613, 13, 202405013, 142.11, CURRENT_TIMESTAMP),
 (614, 14, 202405014, 379.00, CURRENT_TIMESTAMP),
 (615, 15, 202405015, 52.99, CURRENT_TIMESTAMP),
 (616, 16, 202405016, 198.70, CURRENT_TIMESTAMP),
 (617, 17, 202405017, 412.65, CURRENT_TIMESTAMP),
 (618, 18, 202405018, 2000.00, CURRENT_TIMESTAMP),
 (619, 19, 202405019, 89.50, CURRENT_TIMESTAMP),
 (620, 20, 202405020, 124.95, CURRENT_TIMESTAMP);
 
 SELECT * FROM Payment;

SELECT U.first_name, P.amount, Y.methodtype 
FROM airbnb.Payment p 
inner join airbnb.user U ON P.user_id=U.id
inner join airbnb.paymentmethod Y on U.id=Y.user_id;