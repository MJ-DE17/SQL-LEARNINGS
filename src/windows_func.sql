-- Show each food item with the average price of all food items.

select FoodName , avg(price) over() as average_price
from food
--Display food name, category, price and total price of all foods.

select FoodName , Category , sum(price) over() as total_price
from food

--Display each food item with count of total food items.

select FoodName , Category , count(FoodID) over() as total_food_items
from food

-- Q5. Show food items with average price of their category.

select FoodName , avg(price) over(partition by category) as avg_price_cat
from food 

--Display food name, category, price and total price per category.
select FoodName , Category , Price , sum(price ) over(partition by category) as total_price
from food

--Display food items with count of items in each category.

select FoodName , count(FoodID) over(partition by category ,)
from Food

select FoodName , count(FoodID) over(partition by category) , count(FoodID) over(partition by category  , IsVeg) as veg
from Food


 --Show only Veg foods, but calculate average price per category including all veg foods.

select FoodName , avg(price) over(partition by category ) as veg
from Food 
where IsVeg = 1

-- Q14. Display food items with difference between price and category average price.
select FoodName , ( price - avg(price) over(partition by category )) as diff
from Food 

-- Q15. Show food items whose price is greater than the average price of their category
SELECT FoodName, Price
FROM (
    SELECT 
        FoodName,
        Price,
        AVG(Price) OVER (PARTITION BY Category) AS avg_price
    FROM Food
) t
WHERE Price > avg_price;



Q16. Display food items with:

Price

Category average price

Category total price

select FoodName , avg(price) over(partition by Category) , sum(price) over()

from food

select * from food