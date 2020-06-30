--CREATE SCHEMA Corporate
--GO

--CREATE SCHEMA Customer
--GO

--DROP TABLE Corporate.Stores
CREATE TABLE Stores (StoreId INT PRIMARY KEY,
	StoreManager INT NOT NULL,
	StoreStAddress NVARCHAR(150),
	StoreCity NVARCHAR(100),
	StoreState NVARCHAR(50),
	StoreZip INT,
	CHECK ((StoreZip > 9999) AND (StoreZip < 100000)))

--DROP Table Corporate.Orders
CREATE TABLE Orders (OrderIndex INT IDENTITY (1,1) PRIMARY KEY,
	OrderId NVARCHAR(17) DEFAULT CONVERT(CHAR(16),NEWID()),
	CustomerId INT NOT NULL,
	OrderDateTime SMALLDATETIME DEFAULT GETUTCDATE(),
	OrderStatus INT DEFAULT 4 NOT NULL,
	-- Order status: 4 = "Received", 3 = "Processing", 2 = "Shipped", 1 = "Received", 0 = "Complete/Closed"
	--              -1 = "Unknown/Other" (2-4 will be defined as "Active Order")
	OrderStatusDate SMALLDATETIME DEFAULT GETUTCDATE(),
	CHECK (OrderStatus < 5 AND OrderStatus > -2))
GO

--DROP TABLE Corporate.ItemList
CREATE TABLE ItemList (ItemIndex INT PRIMARY KEY IDENTITY (1001, 1), 
--Start index at 1001 to subliminally inflate inventory for marketing purposes
ItemName NVARCHAR(100) NOT NULL,
ItemDescription NVARCHAR(255),
ItemPrice SMALLMONEY NOT NULL,
ItemVendor NVARCHAR(100) NOT NULL)
GO

--DROP Table Corporate.OrderInvoice
CREATE TABLE OrderInvoice (InvoiceLineNumber INT PRIMARY KEY IDENTITY (1,1),
	OrderIndex INT CONSTRAINT OrderIndex_to_OrderIndex_FK FOREIGN KEY REFERENCES Orders (OrderIndex) ON UPDATE CASCADE,
	ItemId INT CONSTRAINT ItemId_to_ItemIndex FOREIGN KEY REFERENCES ItemList (ItemIndex) ON UPDATE CASCADE,
	ItemQuantity INT)

--DROP TABLE Corporate.VendorList
CREATE TABLE VendorList (VendorIndex INT PRIMARY KEY IDENTITY (1,1),
	VendorName NVARCHAR (100) UNIQUE NOT NULL,
	VendorStAddress NVARCHAR(150),
	VendorCity NVARCHAR(100),
	VendorState NVARCHAR(50),
	VendorZip INT,
	VendorCountry NVARCHAR(100) NOT NULL,
	VendorEmail NVARCHAR(100) UNIQUE,
	VendorPhone NVARCHAR(20),
	CHECK ((VendorZip > 9999) AND (VendorZip < 100000)))

--DROP TABLE Corporate.Employees
CREATE TABLE Employees (EmployeeId INT PRIMARY KEY IDENTITY (1,1),
	FirstName NVARCHAR(100),
	MiddleInit NVARCHAR(1),
	LastName NVARCHAR(100) NOT NULL,
	Title NVARCHAR(50),
	Supervisor INT NULL CONSTRAINT Employee_to_Supervisor_FK FOREIGN KEY REFERENCES Employees (EmployeeId),
	isManager BIT NOT NULL, --Will control access level within program.
	isActive BIT NOT NULL) -- 1: Active employee, 0: Inactive (including leave of absence & retired)

GO
--DROP TABLE Corporate.EmployeeDetails
CREATE TABLE EmployeeDetails (EmployeeId INT UNIQUE CONSTRAINT EmployeeDetails_to_Employee_FK FOREIGN KEY 
	REFERENCES Employees (EmployeeId) ON UPDATE CASCADE ON DELETE CASCADE,
	--Should only have 1-to-1 relationship with employees table.
	EmployeeEmail NVARCHAR(100) UNIQUE,
	EmployeePhone NVARCHAR(20),
	EmployeeStAddress NVARCHAR(150),
	EmployeeCity NVARCHAR(100),
	EmployeeState NVARCHAR(50),
	EmployeeZip INT,
	EmployeeSalary SMALLMONEY,
	CHECK ((EmployeeZip > 9999) AND (EmployeeZip < 100000)))

--DROP TABLE Customer.Customers
CREATE TABLE Customers (CustomerIndex INT PRIMARY KEY IDENTITY (1,1),
	FirstName NVARCHAR(100),
	LastName NVARCHAR(100),
	StreetAddress NVARCHAR(150),
	City NVARCHAR(100),
	State NVARCHAR(50),
	Zip INT,
	Email NVARCHAR(100) UNIQUE,
	Phone NVARCHAR(20),
	PreferredStore INT CONSTRAINT Customer_to_Store_FK FOREIGN KEY REFERENCES Stores (StoreId),
	CHECK ((Zip > 9999) AND (Zip < 100000)))

--DROP TABLE Customer.CustomerFeedback
CREATE TABLE CustomerFeedback (CustomerIndex INT CONSTRAINT CustomerIndex_to_Customer_FK FOREIGN KEY
	REFERENCES Customers (CustomerIndex) ON UPDATE CASCADE ON DELETE SET NULL,
	StoreReviewed INT CONSTRAINT StoreReviewed_to_Store_FK FOREIGN KEY REFERENCES Stores(StoreId)
	ON UPDATE CASCADE ON DELETE SET NULL DEFAULT NULL,
	CustomerRating INT,
	CustomerFeedback NVARCHAR(500),
	CHECK ((CustomerRating >= 0) AND (CustomerRating <=10)))

--DROP TABLE Customer.Orders
--CREATE TABLE Customer.Orders (OrderIndex CHAR CONSTRAINT Customer_to_Orders_FK FOREIGN KEY REFERENCES Corporate.Orders(OrderId),
--	InvoiceLineNumber INT CONSTRAINT LineNumber_to_OrderId_FK FOREIGN KEY REFERENCES Corporate.OrderInvoice (InvoiceLineNumber))

GO
ALTER TABLE ItemList ADD CONSTRAINT VendorName_FK
	FOREIGN KEY (ItemVendor) REFERENCES VendorList (VendorName)

ALTER TABLE Stores ADD CONSTRAINT Store_to_Manager_FK
	FOREIGN KEY (StoreManager) REFERENCES Employees (EmployeeId)

ALTER TABLE Orders ADD CONSTRAINT Customer_to_Order_FK FOREIGN KEY
	(CustomerId) REFERENCES Customers(CustomerIndex)
GO

--CREATE TRIGGER UpdateOrderStatusDate ON Corporate.Orders AFTER UPDATE AS 
--	BEGIN UPDATE Corporate.Orders SET OrderStatusDate = GETUTCDATE()
--	WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.OrderStatus = abc.OrderStatus) END