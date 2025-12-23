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
            LIMIT 1;v