use mavenmovies;

# Display the list of first 4 cities which start and end with 'a'
select city  from city  where city like 'a%' limit 4;

#Display all the films whose rental duration is greater than 5
select title as film from film where rental_duration >5 ;

#Display the first 10 records from the customer table   
select *from customer where customer_id limit 10;

#Display the first 3 record from the customer table whose first name start with 'b'
select*from customer where first_name like 'b' limit 3;

#Display the names of the first 5 movies which are rated as'G'
select*from film where rating ='G' limit 5;

#Find all customers whose first name starts with 'a'
select first_name from customer where first_name like 'a%';

#Find all customers whose first name ends with 'a'
select first_name from customer where first_name like '%a';

#Find all customers whose first name have 'NI' in any postion
select *from customer where first_name like '%NI%';

#Find all customer whose first name have 'r' in the second position
select*from customer where first_name like '_r%';

#Find all customers whose first name starts with 'a' and are at least 5 characters in length
select*from customer where first_name like 'a%' and length(first_name)>=5;

#List different countries
select country from country;

#Dispay all active customers 
select active as 'active customer' from customer where active; 

#Find all customer whose first name starts with 'a' and ends with 'o'
select first_name as customer from customer where first_name like 'a%o';

#Get the top 50 actors using limit opretor
select*from actor  limit 50;

#Get the films with length between 50 and 100 using between opretor  
select *from film where length between 50 and 100; 

#List all customers information from DB                                      
select * from mavenmovies.customer;  

#List all details of actor
select*from mavenmovies. actor;

#List of all rental IDs for customer with Id 1
select rental_id from rental where customer_id=1 ;

#List the total number of films whose replacement cost is greater than $15 and less than $20
select film_id from film where replacement_cost between 15 and 20;

#Display the count of unique first names of actors
select count(distinct first_name) as first_name_count from actor ;

#Get the distinct film ids from inventory table 
select distinct film_id from inventory;

#Get the films with pg and pg-13 rating using IN operator
select*from film where rating in ('PG','PG-13');
