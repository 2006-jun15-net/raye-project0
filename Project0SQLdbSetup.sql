CREATE SCHEMA Corporate
GO

CREATE SCHEMA Customer
GO

--DROP Table Corporate.Orders
CREATE TABLE Corporate.Orders (OrderIndex INT IDENTITY (1,1), --Similar to, but not the primary key
	OrderId UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	CustomerId INT NOT NULL,
	OrderDateTime SMALLDATETIME DEFAULT GETUTCDATE(),
	OrderStatus INT CHECK (OrderStatus < 5 AND OrderStatus > -2) DEFAULT 4 NOT NULL)
	-- Order status: 4 = "Received", 3 = "Processing", 2 = "Shipped", 1 = "Received", 0 = "Complete/Closed"
	--              -1 = "Unknown/Other" (2-4 will be defined as "Active Order")
GO

--DROP Table Corporate.OrderDetails
CREATE TABLE Corporate.OrderDetails (InvoiceLineNumber INT PRIMARY KEY IDENTITY (1,1),
	OrderId UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Coporate.Orders (OrderId),
	ItemId INT, --FOREIGN KEY REFERENCES Corporate.ItemList (ItemId)
	ItemQuantity INT)