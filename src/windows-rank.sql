select FoodID , FoodName ,
rank()  over(order by price desc ) as highest_price
from food 

SELECT 
    FoodName,
    Price,
    DENSE_RANK() OVER (ORDER BY Price DESC) AS DenseRankNum
FROM Food;

SELECT 
    FoodName,
    Price,
    NTILE(4) OVER (ORDER BY Price DESC) AS PriceGroup
FROM Food;


select    FoodName,
    Price,

ntile(3) over (order by price desc) as pricegroup3

from Food

-- Find 2nd highest price overall

select *
from (select* ,DENSE_RANK() over( order by price desc ) as dr
from food) t
where dr = 2





SELECT 
    FoodName,
    Category,
    Price,
    RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS CategoryRank
FROM Food;