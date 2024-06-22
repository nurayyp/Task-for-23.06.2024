CREATE DATABASE MyApp
CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
RegistrationDate DATE DEFAULT GETDATE() CHECK (RegistrationDate <= GETDATE()),
ContactNumber VARCHAR(50) DEFAULT '+99400000000',
Age INT CHECK ( Age >= 18),
Address NVARCHAR(70)
)
INSERT INTO Users
VALUES ('Nuray', 'Pashayeva', 'nuray@gmail.com', '2023-12-03', '+994107100605',18, 'babek')
INSERT INTO Users
VALUES ('Salih', 'Pashayev', 'salih@gmail.com', '2024-04-23', '+994506789423',19, 'nesimi')
INSERT INTO Users
VALUES ('Ayan', 'Nagiyeva', 'ayann@gmail.com', '2022-07-10', '+994556789932',18, 'nizami')
SELECT Name, Surname, Email from Users


CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY(1,1), 
Name NVARCHAR(50) NOT NULL,
Slug VARCHAR(10) UNIQUE,
CreatedAt DATE DEFAULT GETDATE() CHECK (CreatedAt <= GETDATE()),
IsActive BIT
)
use MyApp
INSERT INTO Categories(Name, Slug, CreatedAt, IsActive )
VALUES('Abcde', 'Fghi','2019-11-26', 1)
INSERT INTO Categories(Name, Slug, CreatedAt, IsActive )
VALUES('sdfgh', 'tyui','2021-08-16', 0)
INSERT INTO Categories(Name, Slug, CreatedAt, IsActive )
VALUES('mnbv', 'lkjh','2023-10-12', 1)
SELECT Name, isActive from Categories 