CREATE TABLE Orders (
  OrderId        INTEGER PRIMARY KEY,
  PlacementDate  TIMESTAMP,
  CustomerName   VARCHAR(50)
);

CREATE TABLE Items (
  ItemId    INTEGER PRIMARY KEY,
  ItemName  VARCHAR(70),
  ItemCost  MONEY
);

CREATE TABLE OrderItems (
  OrderItemId  INTEGER PRIMARY KEY,
  OrderId      INTEGER,
  ItemId       INTEGER,
  ItemCount    INTEGER,
  FOREIGN KEY(OrderId) REFERENCES Orders(OrderId),
  FOREIGN KEY(ItemId) REFERENCES Items(ItemId)
);

-- SELECT * FROM Items;

insert into Items (ItemId, ItemName, ItemCost) values
(1, 'ryzen', 150.00),
(2, 'intel', 200.00),
(3, 'm1', 100.00);

-- SELECT * FROM Orders;

insert into Orders (OrderId, PlacementDate, CustomerName) values
(1, '2020-03-18T12:00:00', 'Guilherme'),
(2, '2020-03-21T12:00:00', 'Deborah'),
(3, '2020-07-05T12:00:00', 'Klismann');

-- SELECT * FROM OrderItems;

INSERT INTO OrderItems (OrderItemId, OrderId, ItemId, ItemCount) VALUES
(1, 1, 1, 2),
(2, 2, 1, 5),
(3,3,3,7);
