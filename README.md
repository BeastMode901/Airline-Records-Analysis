# Airline Revenue & Route Performance Analysis

## Project Overview
This project analyzes a 500-row airline dataset to uncover insights related to airline revenue performance, route profitability, passenger traffic, ticket pricing, and flight capacity utilization. Using SQL and Power BI, I explored how different airlines, routes, and cities contribute to overall revenue and passenger movement. The goal of this project was to evaluate key airline business metrics and identify patterns that support operational and strategic decision-making.

---

## Database
- **Database Name:** `airlines`  
- **Table Name:** `airline_data`  

### Columns
- `Flight_ID` – Unique identifier for each flight  
- `Airline` – Name of the airline operating the flight  
- `Origin_State` – State where the flight departs from  
- `Origin_City` – City where the flight departs from  
- `Destination_State` – State where the flight lands  
- `Destination_City` – City where the flight lands  
- `Ticket_Price` – Cost of a single ticket for the flight  
- `Passengers` – Number of passengers on the flight  
- `Seats_Available` – Total seat capacity of the aircraft  
- `Total_Revenue` – Total revenue generated from the flight  

---

## Files Included
- **`Airline_Data.csv`** – Original dataset
- **`Airline_Data_.sql`** – SQL script for complete database creation, data cleaning, and data analysis
- **`Database_Creation_and_Data_Cleaning.sql`** – SQL script for database creation and data cleaning  
- **`Analysis_Questions.sql`** – SQL queries used to answer analysis questions  
- **`Analysis_Solutions.sql`** – SQL queries with results of each analysis 
- **`Airline_Analysis.pbix`** – Power BI dashboard visualizing airline performance  

---

## Analysis Questions
This project answers the following analytical questions:

1. Which airline generates the highest total revenue?  
2. What are the top 5 most profitable routes (Origin → Destination)?  
3. Which airline carries the most passengers overall?  
4. What is the average ticket price by airline?  
5. What are the top 10 most expensive flights by ticket price?  
6. Which 5 cities have the highest outbound passenger traffic?  
7. Which 10 flights generated the highest single-flight revenue?  
8. How many flights are operating at over a 90% seat capacity?  
9. Which airline operates the most flights in total?  
10. What is the most common flight route (Origin → Destination)?  

---

## Key Insights

- JetBlue generates the highest total revenue at just over $3 million, while United Airlines ranks the lowest with approximately $1.7 million in total revenue.  
- The top five most profitable routes are Miami → Florida, Florida → Colorado, Washington → Illinois, Texas → Illinois, and Colorado → Texas.  
- Delta Airlines carries the most passengers overall, with over 5,000 passengers, while United Airlines carries the fewest at just over 3,000.  
- JetBlue has the highest average ticket price at over $600, followed closely by Delta at just under $600. American Airlines offers the lowest average ticket price at just over $500.  
- Flight FL0163 operated by United Airlines from Washington State to Colorado is the most expensive flight, with a ticket price of $979.99 per passenger.  
- Colorado has the highest outbound passenger traffic, followed by Chicago, Cambridge, Springfield, and Denver as the top five origin cities.  
- Flight FL0222 generated the highest single-flight revenue, exceeding $145,000.  
- A total of 53 flights are operating at over 90% seat capacity, indicating strong demand on those routes.  
- Southwest Airlines operates the most flights overall with 96 flights, while United Airlines operates the fewest at 59 flights.  
- The most common flight route is New York → Texas, which appears 14 times in the dataset.  

---
