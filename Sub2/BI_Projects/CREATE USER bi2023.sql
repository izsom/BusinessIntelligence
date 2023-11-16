------------------------------------------------------------------
-- Step 1. Create MySQL user

-- delete user if already exists
DROP USER IF EXISTS bi2023@localhost;

-- create a user to implement all the tasks of the assignment
CREATE USER bi2023@localhost IDENTIFIED BY 'bi2023W!'; 

-- we must flush the privileges each time we add or edit a user
FLUSH PRIVILEGES; 
GRANT ALL PRIVILEGES ON *.* TO bi2023@localhost;
FLUSH PRIVILEGES; 

------------------------------------------------------------------
-- Step 2. Drop if exists and re-create databases
-- please make sure you replace XX with YOUR GROUP NUMBER
DROP DATABASE IF EXISTS BI_Bikes_XX;
DROP DATABASE IF EXISTS BI_BikesDW_XX;
CREATE DATABASE IF NOT EXISTS BI_Bikes_XX;
CREATE DATABASE IF NOT EXISTS BI_BikesDW_XX; 



