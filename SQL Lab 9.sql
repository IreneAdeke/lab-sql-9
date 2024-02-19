use sakila; 
select * from rental; 
select rental_id, rental_date, inventory_id, customer_id, staff_id, last_update from rental
where rental_date like "%2005-05%"; 


 

 # 1. Create a table rentals_may to store the data from rental table with information for the month of May.
 create table rentals_may(
 rental_id int,
 rental_date datetime, 
 inventory_id int, 
 customer_id int, 
 return_date datetime, 
 staff_id int, 
 last_update datetime); 
 
  
 select * from rentals_may; 
 
 # 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rentals_may(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) 
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update from rental
where rental_date like "2005-05%"; 

select * from rentals_may; 

# 3. Create a table rentals_june to store the data from rental table with information for the month of June.
create table rentals_june(
 rental_id int,
 rental_date datetime, 
 inventory_id int, 
 customer_id int, 
 return_date datetime, 
 staff_id int, 
 last_update datetime); 
 
 select * from rentals_june; 

 
 # 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
 insert into rentals_june(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) 
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update from rental
where rental_date like "2005-06%"; 

select * from rentals_june; 

# 5. Check the number of rentals for each customer for May.
select * from rentals_may; 
select count(rental_id), customer_id from rentals_may
group by customer_id; 

# 5. Check the number of rentals for each customer for June.
select * from rentals_june; 
select count(rental_id), customer_id from rentals_june
group by customer_id; 