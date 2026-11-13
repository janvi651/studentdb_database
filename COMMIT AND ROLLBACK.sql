SELECT*FROM PAYMENTS;
START TRANSACTION;
 USE studentdb;
 INSERT INTO Payments
(payment_id, admission_id, amount, payment_date)
VALUES
(5007, 8, 2000, '2026-11-12');
ROLLBACK;
SELECT * FROM Payments
WHERE payment_id = 5007;
 