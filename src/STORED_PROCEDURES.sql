USE practice

select Count(Category) AS Count_ , Category
from Food
Group By Category

create procedure get_categor_count AS 
BEGIN 
select Count(Category) AS Count_ , Category
from Food
Group By Category
end

Exec get_categor_count

--lists based on the veg or non veg parameter
create procedure checkveg @IsVegg BIT
AS
begin
select FoodName , IsVeg  
From Food
Where IsVeg = @IsVegg
end

exec checkveg @IsVegg = 1


exec sp_help 'Food'

--only breakfast :

Alter procedure get_all_breakfat @category NVARCHAR(50) = 'Breakfast'
AS 
BEGIN 
select FoodName  AS 'Breakfast', IsVeg
from Food
where Category = @category
end

Exec get_all_breakfat


create procedure get_tables 
AS
Begin
select * from customer
select * from salesman
select * from orders
end

exec get_tables

create procedure get_total_Sales @city NVARCHAR(50) 
AS
BEGIN

select s.city, count(o.ord_no) AS Ttoal_orders, sum(o.purch_amt) as Totalsales , s.salesman_id
from salesman s
join orders o
on s.salesman_id = o.salesman_id
where s.city = @city
Group by s.city , s.salesman_id
end

exec get_total_Sales @city = 'New York'


--IFELSE USING PROCEDURES
create procedure fare_fluct 
	@dish_type BIT
AS
Begin 
	IF @dish_type = 0
	BEGIN
		update Food
		SET Price = Price + 10
		WHERE IsVeg = 0
	END
	ELSE
	BEGIN
		update Food
		SET Price = Price - 20
		WHERE IsVeg = 1
	END
END


exec fare_fluct @dish_type = 0




