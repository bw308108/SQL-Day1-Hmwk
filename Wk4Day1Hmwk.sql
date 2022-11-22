
-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: There are 2 actors with the last name Wahlberg

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg'; 

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer: There are 3,236 payments made between $3.99 and $5.99

SELECT count(amount)
from payment
where amount BETWEEN 4.00 and 5.98; 


-- 3. What film does the store have the most of? (search in inventory table)

SELECT count(film_id), film_id, inventory_id
FROM inventory
GROUP BY inventory_id
ORDER BY film_id DESC;


-- 4. How many customers have the last name ‘William’?
-- Answer: No customers with the last name William, but one customer with the last name Williams

SELECT last_name
FROM customer
WHERE last_name LIKE 'Will%';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer: Staff_id 1 sold the most rentals

SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id 


-- 6. How many different distinct names are there?
-- Answer: There are 124 different distinct names

SELECT count(distinct first_name)
from actor;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: Film_id 508 had the most actors in it

SELECT count(film_id), film_id
from film_actor
GROUP BY film_id
HAVING count(film_id) > 13 
ORDER BY film_id desc;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: There are 13 customers that have a last name ending with 'es'

SELECT count(last_name), store_id
from customer
WHERE last_name like '%es'
GROUP BY store_id
order BY store_id; 


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT count(amount), amount, rental_id, customer_id
from payment
where customer_id BETWEEN  380 and 430
GROUP BY rental_id, amount, customer_id
HAVING rental_id > 250
ORDER BY amount desc;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total? 
-- Answer: Within the films table there are five rating categories and PG-13 had the most movie total at 223

SELECT count(distinct rating), rating
FROM film
GROUP BY rating; 

SELECT count(rating), rating
FROM film
GROUP BY rating;
