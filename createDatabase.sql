-- Create TypeOfEngine table
CREATE TABLE TypeOfEngine (
    TypeOfEngineID INT PRIMARY KEY IDENTITY(1,1),
    EngineType VARCHAR(50) NOT NULL
);

-- Create Cars table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY IDENTITY(1,1),
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Price DECIMAL(18, 2) NOT NULL,
    TypeOfEngineID INT NOT NULL FOREIGN KEY REFERENCES TypeOfEngine(TypeOfEngineID)
);

-- Create Country table
CREATE TABLE Country (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName VARCHAR(50) NOT NULL
);

-- Create City table
CREATE TABLE City (
    CityID INT PRIMARY KEY IDENTITY(1,1),
    CityName VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL FOREIGN KEY REFERENCES Country(CountryID)
);

-- Create Carhouse (Seller) table
CREATE TABLE Carhouse (
    CarhouseID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    CityID INT NOT NULL FOREIGN KEY REFERENCES City(CityID)
);

-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    CityID INT NOT NULL FOREIGN KEY REFERENCES City(CityID)
);

-- Create Worker table
CREATE TABLE Worker (
    WorkerID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    CarhouseID INT NOT NULL FOREIGN KEY REFERENCES Carhouse(CarhouseID)
);

-- Create Servis table
CREATE TABLE Servis (
    ServisID INT PRIMARY KEY IDENTITY(1,1),
    ServiceType VARCHAR(100) NOT NULL
);

-- Create CarMaintenance table
CREATE TABLE CarMaintenance (
    MaintenanceID INT PRIMARY KEY IDENTITY(1,1),
    CarID INT NOT NULL FOREIGN KEY REFERENCES Cars(CarID),
    WorkerID INT NOT NULL FOREIGN KEY REFERENCES Worker(WorkerID),
    ServisID INT NOT NULL FOREIGN KEY REFERENCES Servis(ServisID),
    MaintenanceDate DATE NOT NULL
);

-- Create SalesTransactions table
CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    CarID INT NOT NULL FOREIGN KEY REFERENCES Cars(CarID),
    CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
    WorkerID INT NOT NULL FOREIGN KEY REFERENCES Worker(WorkerID),
    CarhouseID INT NOT NULL FOREIGN KEY REFERENCES Carhouse(CarhouseID),
    SaleDate DATE NOT NULL,
    SalePrice DECIMAL(18, 2) NOT NULL
);
