#FILE DESCRIPTION
SELECT * FROM world.book1;

# TOTAL COUNTRY WITH CODE
SELECT Country_Code,Country FROM world.book1
Group by country,Country_Code

#TOTAL COUNTRY WITH CITY
SELECT City , Country FROM world.book1
Group by Country,City

# AVERAGE COST FOR TWO MEMBERS BY COUNTRY
SELECT Average_Cost_for_two,Country FROM world.book1
GROUP BY Country,Average_Cost_for_two
ORDER BY Average_Cost_for_two DESC

# DESCRIBE CURRENCY
SELECT Currency FROM world.book1
Group by Currency

# TOTAL TABLE BOOKING RESTAURANT BY COUNTRY
SELECT count(Restaurant_ID),Country FROM world.book1
where Has_Table_booking = "yes"
GROUP BY Country
ORDER BY count(Restaurant_ID) DESC

# TOTAL ONLINE DELIVERY BY COUNTRY
SELECT count(Restaurant_ID),Country FROM world.book1
where Has_Online_delivery = "yes"
GROUP BY Country
ORDER BY count(Restaurant_ID) DESC

#PRICE RANGE BY RESTAURANT
SELECT Restaurant_ID,Price_range FROM world.book1
Group by Price_range,Restaurant_ID

#AGGREAGATE RATING MORE THAN 2
SELECT Restaurant_ID,Aggregate_rating FROM world.book1
Group by Restaurant_ID,Aggregate_rating 
ORDER BY Aggregate_rating > 2

#AGGREAGATE RATING MORE THAN 2 GROUPED BY COLOUR
SELECT Restaurant_ID,Aggregate_rating,Rating_color FROM world.book1
Group by Restaurant_ID,Aggregate_rating,Rating_color
ORDER BY Aggregate_rating > 2

# RESTAURANT WITH VOTES
SELECT DISTINCT(Restaurant_ID),Votes FROM world.book1
GROUP BY Restaurant_ID,Votes

# RESTAURANT WITH VOTES
SELECT City,COUNT(Rating_text) FROM world.book1
GROUP BY City 