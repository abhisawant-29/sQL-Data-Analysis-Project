# sQL-Data-Analysis-Project

🍕 Project Overview
This project uses a fictional pizza sales dataset to showcase SQL-based data analysis. It highlights how to extract business insights from raw data using SQL techniques.
The dataset includes:
- Pizza types and prices
- Order details
- Pizza sizes
- Sales records
Using MySQL, this project demonstrates:
- Use of JOIN, GROUP BY, subqueries, and aggregate functions
- Extraction of actionable business insights
🎯 Project Goals
•	• Retrieve the total number of orders placed
•	• Calculate the total revenue generated from pizza sales
•	• Identify the highest-priced pizza
•	• Determine the most common pizza size ordered
•	• List the top 5 most ordered pizza types with their quantities
🧠 Analysis Summary
•	• Top 5 Pizzas by Quantity: Identified the most popular pizza types sold
•	• Most Ordered Sizes: Highlighted the preferred pizza sizes
•	• Most Expensive Pizza: Found the highest-priced pizza
•	• Total Sales: Calculated total revenue
•	• Total Orders: Counted all orders placed
✅ Conclusion
The SQL analysis offered valuable insights into customer preferences and sales trends. These insights can aid in:
- Optimizing inventory
- Adjusting pricing strategies
- Improving targeted marketing
SQL proved to be an effective tool for turning raw transactional data into meaningful business intelligence.

📚 Tutorial & Dataset Source
This project is based on a tutorial provided by WsCube Tech on their YouTube channel. The dataset used in this analysis is also provided by them as part of the tutorial series.



SQL Queries Used in the Project
Below are the SQL queries used to derive key insights from the pizza sales dataset:

1. Total Number of Orders Placed

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

2. Total Revenue Generated from Pizza Sales

SELECT ROUND(SUM(order_details.quantity * pizzas.price), 2) AS total_revenue
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id;

3. Highest-Priced Pizza

SELECT pizza_type_id, price
FROM pizzas
ORDER BY price DESC
LIMIT 1;

4. Most Common Pizza Size Ordered
   
SELECT size, COUNT(*) AS total_orders
FROM pizzas
JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY size
ORDER BY total_orders DESC
LIMIT 1;

5. Top 5 Most Ordered Pizza Types

SELECT pizza_types.name, SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY total_quantity DESC
LIMIT 5;
