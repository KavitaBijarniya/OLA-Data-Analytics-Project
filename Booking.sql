create database ola
use ola

drop database user_streaks;

select * from July$

exec sp_rename July$, Booking

create view successfull_bookings as 
select * from Booking
where Booking_Status = 'Success'

select * from successfull_bookings

select Vehicle_Type, round(avg(Ride_Distance),2) as Avg_Ride_Distance
from Booking
group by Vehicle_Type

select * from Booking

select  Booking_Status, count(Booking_Status) as canceled_by_customer
from Booking
where Booking_Status = 'Canceled by Customer'
group by Booking_Status

select top 5 Customer_ID,count(Booking_ID) as number_of_rides
from Booking
group by Customer_ID
order by number_of_rides desc


select  count(Booking_ID) as canceled_by_customer
from Booking
where Canceled_Rides_by_Driver = 'Personal & Car related issue'

select Vehicle_Type, Max(Driver_Ratings) Max_Driver_Ratings, MIN(Driver_Ratings) Min_Driver_Ratings from Booking
where Vehicle_Type = 'Prime Sedan'
group by Vehicle_Type

select  * from Booking
where Payment_Method = 'UPI'

select Vehicle_Type, round(avg(Customer_Rating),2) as Avg_Customer_Rating
from Booking
group by Vehicle_Type

select sum(Booking_Value) as total_booking_value
from Booking
where Booking_Status = 'Success'

select Booking_ID, Incomplete_Rides_Reason
from Booking
where Incomplete_Rides = 'Yes'


