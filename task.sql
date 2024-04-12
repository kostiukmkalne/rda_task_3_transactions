USE ShopDB;

START TRANSACTION;
INSERT INTO Orders (CustomerID, Date) VALUES (1, '2024-04-12');
UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = 1;
INSERT INTO OrderItems (OrderID, ProductID, Count) VALUES (LAST_INSERT_ID(), 1, 1);
COMMIT;
