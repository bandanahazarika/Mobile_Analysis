use personal_project;
create table mobile_analysis(
Phone_name varchar(100),
Brands varchar(50),
Price int,
Internal_Storage varchar(50),
Operating_System_Type varchar(50),
USB_Type varchar(50),
5G_Availability varchar(50),
Selfie_Camera varchar(50),
RAM_Storage varchar(50),
Country_of_Origin varchar(50),
Battery_Capacity varchar(50),
Price_Range varchar(50),
Battery_Capacity_Range varchar(50),
Total_Mobile int
);

select * from mobile_analysis;

# Check Mobile Features And Price

use personal_project;
select phone_name, price from mobile_analysis;

# Price Of 5 Most Expensive Mobile

select * from mobile_analysis
order by Price desc
limit 5;

# Price Of 5 Least Expensive Mobile

select * from mobile_analysis
order by Price
limit 5;

# Top 5 Samsung Phones 

select * from mobile_analysis
where Brands = 'Samsung' 
order by Phone_name desc
limit 5;

# Top 5 Most Expensive Android Phones

select * from mobile_analysis
where Operating_System_Type = 'Android'
order by price desc
limit 5;

# Top 5 Least Expensive Android Phones

select * from mobile_analysis
where Operating_System_Type = 'Android'
order by price 
limit 5;

# Top 5 Most Expensive iOS Phones

select * from mobile_analysis
where Operating_System_Type = 'iOS'
order by price desc
limit 5;

# Top 5 Least Expensive iOS Phones

select * from mobile_analysis
where Operating_System_Type = 'iOS'
order by price 
limit 5;

# Top 5 Phones with 5G Support

select * from mobile_analysis
where 5G_Availability = 'Yes'
order by price desc
limit 5;

# Price Of All Mobile Brands

select brands, sum(price) as total_price from mobile_analysis
group by brands 
order by total_price desc;