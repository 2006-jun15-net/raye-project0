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

--DROP TABLE Corporate.ItemList
CREATE TABLE Corporate.ItemList (ItemIndex INT PRIMARY KEY IDENTITY (1001, 1), 
--Start index at 1001 to subliminally inflate inventory for marketing purposes
ItemName NVARCHAR(100) NOT NULL,
ItemDescription NVARCHAR(255),
ItemPrice SMALLMONEY NOT NULL,
ItemVendor NVARCHAR(100) NOT NULL)
GO

--DROP Table Corporate.OrderDetails
CREATE TABLE Corporate.OrderDetails (InvoiceLineNumber INT PRIMARY KEY IDENTITY (1,1),
	OrderId UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Coporate.Orders (OrderId),
	ItemId INT FOREIGN KEY REFERENCES Corporate.ItemList (ItemId),
	ItemQuantity INT)

--DROP TABLE Corporate.VendorList
CREATE TABLE Corporate.VendorList (VendorIndex INT PRIMARY KEY IDENTITY (1,1),
	VendorName NVARCHAR (100) UNIQUE NOT NULL,
	VendorStAddress NVARCHAR(150),
	VendorCity NVARCHAR(100),
	VendorState NVARCHAR(50),
	VendorCountry NVARCHAR(100) NOT NULL,
	VendorEmail NVARCHAR(100) UNIQUE,
	VendorPhone NVARCHAR(20))

--DROP TABLE Corporate.Employees
CREATE TABLE Corporate.Employees (EmployeeId INT PRIMARY KEY IDENTITY (1,1),
	FirstName NVARCHAR(100),
	MiddleInit NVARCHAR(1),
	LastName NVARCHAR(100) NOT NULL,
	Title NVARCHAR(50),
	Supervisor INT NULL FOREIGN KEY REFERENCES Corporate.Employees (EmployeeId),
	isManager BIT NOT NULL, --Will control access level within program.
	isActive BIT NOT NULL) -- 1: Active employee, 0: Inactive (including leave of absence & retired)

GO
ALTER TABLE Coporate.ItemList ADD CONSTRAINT ItemName_FK
	FOREIGN KEY (ItemList) REFERENCES Corporate.VendorList (VendorName)

GO