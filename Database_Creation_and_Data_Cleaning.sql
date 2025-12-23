-- Created Database --
CREATE DATABASE airlines;

-- Used Datbase created --
USE airlines;

-- Data Cleaning -- 

-- Renamed ï»¿FlightID --
ALTER TABLE airline_data
RENAME COLUMN ï»¿FlightID TO Flight_ID;

-- Renamed OriginState --
ALTER TABLE airline_data
RENAME COLUMN OriginState TO Origin_State;

-- Renamed OriginCity --
ALTER TABLE airline_data
RENAME COLUMN OriginCity TO Origin_City;

-- Renamed DestinationState --
ALTER TABLE airline_data
RENAME COLUMN DestinationState TO Destination_State;

-- Renamed DestinationCity --
ALTER TABLE airline_data
RENAME COLUMN DestinationCity TO Destination_City;

-- Renamed TicketPrice --
ALTER TABLE airline_data
RENAME COLUMN TicketPrice TO Ticket_Price;

-- Renamed SeatsAvailable --
ALTER TABLE airline_data
RENAME COLUMN SeatsAvailable TO Seats_Available;

-- Renamed TotalRevenue --
ALTER TABLE airline_data
RENAME COLUMN TotalRevenue TO Total_Revenue;