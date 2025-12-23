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


 -- Column Description --

-- Flight_ID – Unique identifier for each flight 
-- Airline – Name of the airline operating the flight
-- Origin_State – State where the flight departs from
-- Origin_City – City where the flight departs from
-- Destination_State – State where the flight lands
-- Destination_City – City where the flight lands
-- Ticket_Price – Cost of a single ticket for the flight
-- Passengers – Number of passengers on the flight
-- Seats_Available – Total seat capacity of the aircraft
-- Total_Revenue – Total revenue generated from the flight

			-- Analysis Business Analysis --
            
-- 1. Which airline generates the highest total revenue?
			SELECT Airline, ROUND(SUM(Total_Revenue),2) AS Total_Revenue
			FROM airline_data
			GROUP BY Airline
			ORDER BY Total_Revenue DESC;

-- 2. What are the top 5 most profitable routes (Origin → Destination)
			SELECT *
			FROM (
				SELECT Origin_State,
					   Destination_State,
					   ROUND(SUM(Total_Revenue), 2) AS Total_Revenue
				FROM airline_data
				GROUP BY Origin_State, Destination_State
			) AS route_totals
			ORDER BY Total_Revenue DESC
            LIMIT 5;
            
-- 3. Which airline carries the most passengers overall?
			SELECT Airline, SUM(Passengers) AS Total_Passengers
			FROM airline_data
			GROUP BY Airline
			ORDER BY Total_Passengers DESC;

-- 4. What is the average ticket price by airline?
			SELECT Airline, ROUND(AVG(Ticket_Price),2) AS Average_Ticket_Price
			FROM airline_data
			GROUP BY Airline
			ORDER BY Average_Ticket_Price DESC;

-- 5. What are the top 10 most expensive flights by ticket price?
			SELECT Flight_ID,
					Airline,
					Origin_State,
					Destination_State,
					Ticket_Price AS Expensive_Tickets
			FROM airline_data
			ORDER BY Expensive_Tickets DESC
			LIMIT 10;

-- 6. Which 5 cities have the highest outbound passenger traffic?
			SELECT Origin_City, SUM(Passengers) AS outbound_passengers
            FROM airline_data
            GROUP BY Origin_City
            ORDER BY outbound_passengers DESC
            LIMIT 5;

-- 7.  Which 10 flights generated the highest single-flight revenue?
			SELECT Flight_ID, Airline, Origin_State, Destination_State, Total_Revenue
			FROM airline_data
			ORDER BY Total_Revenue DESC
			LIMIT 10;
    
-- 8.  How many flights are operating at over a 90% seat capacity?
			SELECT Count(*) AS Total_Flights
			FROM airline_data
			WHERE Passengers / Seats_Available  > 0.90;
        
-- 9.  Which airline operates the most flights in total?
			SELECT Airline, Count(*) AS Total_Flights
            FROM Airline_data
            GROUP BY Airline
            ORDER BY Total_Flights DESC;
            
-- 10. What is the most common flight route (Origin → Destination)?
			SELECT Origin_State, Destination_State, Count(*) AS Total
			FROM airline_data
			GROUP BY Origin_State, Destination_State
			ORDER BY Total DESC
            LIMIT 1;