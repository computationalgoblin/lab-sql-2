-- 1 Select all the actors with the first name ‘Scarlett’.
use sakila; 

select * 
from actor 
where first_name = "Scarlett";

-- 2 Select all the actors with the last name ‘Johansson’.
select *
from actor 
where last_name = "Johansson";

-- 3 How many films (movies) are available for rent?
select count(inventory_id) as available_films
from inventory;

-- 4 How many films have been rented?
select count(rental_id) as number_of_films_rented
from rental;

-- 5 What is the shortest and longest rental period?
select min(rental_duration) as min_rental_duration, max(rental_duration) as max_rental_duration
from film;

-- 6 What are the shortest and longest movie duration? Name the values max_duration and min_duration
select min(length) as min_duration, max(length) as max_duration
from film;

-- 7 What's the average movie duration?
select avg(length) as average_movie_duration
from film;

-- 8 What's the average movie duration expressed in format (hours, minutes)?
select concat(left(avg(length),1), " hours", " ", substr(avg(length),2,2), " minutes") as avg_movie_duration
from film;

-- 9 How many movies longer than 3 hours?
select count(distinct length)
from film
where length > 180;

-- 10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(substr(email, 1, 1), lower(substr(email, 2, instr(email, '.') - 2)), " ", upper(substr(email, instr(email, '.') + 1, instr(email, '@') - instr(email, '.') - 1)), " - ", lower(email)) as name_and_email
from customer;

-- 11 What's the length of the longest film title?
select max(length(title)) as "longes_length_of_the_title"
from film;