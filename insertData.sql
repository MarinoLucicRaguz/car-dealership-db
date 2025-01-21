-- Insert data into TypeOfEngine
INSERT INTO TypeOfEngine (EngineType) VALUES ('Benzin'), ('Dizel'), ('Hibrid'), ('Električni');

-- Insert data into Country
INSERT INTO Country (CountryName) VALUES ('Hrvatska'), ('Slovenija');

-- Insert data into City
INSERT INTO City (CityName, CountryID) VALUES
('Zagreb', 1),
('Split', 1),
('Rijeka', 1),
('Osijek', 1),
('Zadar', 1),
('Ljubljana', 2),
('Maribor', 2),
('Celje', 2),
('Koper', 2),
('Novo Mesto', 2);

-- Insert data into Carhouse
INSERT INTO Carhouse (Name, CityID) VALUES
('AutoZubak', 1),
('Tomić & Co', 2),
('Avto Trade', 3),
('Auto Centar Maribor', 7),
('Servis Koper', 9),
('Auto Split', 2),
('CarShop Rijeka', 3),
('Osijek Motors', 4),
('Zadar Wheels', 5),
('Novo Mesto Auto', 10);

-- Insert data into Worker
INSERT INTO Worker (FullName, CarhouseID) VALUES
('Ivan Horvat', 1),
('Marko Kovač', 2),
('Ana Novak', 3),
('Petar Perić', 4),
('Lucija Babić', 5),
('Ivana Radić', 6),
('Tomislav Jurčić', 7),
('Marina Fijolić', 8),
('Vlado Radan', 9),
('Kristina Šarić', 10);

-- Insert data into Cars
INSERT INTO Cars (Brand, Model, Price, TypeOfEngineID) VALUES
('Volkswagen', 'Golf', 20000, 1),
('Toyota', 'Corolla', 22000, 3),
('Tesla', 'Model 3', 45000, 4),
('Hyundai', 'i30', 18000, 2),
('Ford', 'Focus', 19500, 1),
('BMW', '320d', 35000, 2),
('Audi', 'A4', 40000, 3),
('Mercedes', 'C-Class', 42000, 3),
('Renault', 'Clio', 15000, 1),
('Peugeot', '208', 14000, 1);

-- Insert data into Customer
INSERT INTO Customer (FullName, PhoneNumber, Email, CityID) VALUES
('Josip Jurić', '0912345678', 'josip@gmail.com', 1),
('Maja Vuk', '0998765432', 'maja@yahoo.com', 2),
('Karlo Novak', '0913456789', 'karlo@gmail.com', 3),
('Ana Perić', '0991234567', 'ana@yahoo.com', 4),
('Ivana Radić', '0919876543', 'ivana@hotmail.com', 5),
('Tomislav Pavlić', '0921237894', 'tomislav@gmail.com', 6),
('Marija Šarić', '0989876543', 'marija@yahoo.com', 7),
('Kristijan Fijolić', '0951234567', 'kristijan@hotmail.com', 8),
('Petra Kovač', '0912349999', 'petra@gmail.com', 9),
('Vlado Horvat', '0991112233', 'vlado@yahoo.com', 10);

-- Insert data into Servis
INSERT INTO Servis (ServiceType) VALUES
('Promjena ulja'),
('Zamjena guma'),
('Dijagnostika motora'),
('Servis kočnica'),
('Zamjena filtera'),
('Punjenje klime'),
('Provjera akumulatora'),
('Zamjena remena'),
('Servis mjenjača'),
('Popravak svjetala');

-- Insert data into CarMaintenance
INSERT INTO CarMaintenance (CarID, WorkerID, ServisID, MaintenanceDate) VALUES
(2, 1, 3, '2025-01-10'),
(3, 2, 5, '2025-01-15'),
(5, 3, 2, '2025-01-20'),
(4, 4, 6, '2025-01-25'),
(6, 5, 4, '2025-01-30'),
(1, 6, 1, '2025-02-01'),
(7, 7, 8, '2025-02-05'),
(10, 8, 7, '2025-02-10'),
(9, 9, 9, '2025-02-15'),
(8, 10, 10, '2025-02-20');

-- Insert data into SalesTransactions
INSERT INTO SalesTransactions (CarID, CustomerID, WorkerID, CarhouseID, SaleDate, SalePrice) VALUES
(3, 1, 4, 3, '2025-01-05', 45000),
(6, 2, 2, 2, '2025-01-07', 35000),
(5, 3, 6, 6, '2025-01-10', 19500),
(1, 4, 8, 8, '2025-01-12', 20000),
(8, 5, 7, 7, '2025-01-14', 42000),
(2, 6, 5, 5, '2025-01-16', 22000),
(9, 7, 10, 10, '2025-01-18', 15000),
(4, 8, 3, 4, '2025-01-20', 18000),
(7, 9, 9, 9, '2025-01-22', 40000),
(10, 10, 1, 1, '2025-01-25', 14000);