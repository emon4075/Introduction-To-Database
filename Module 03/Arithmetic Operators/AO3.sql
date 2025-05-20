USE sakila;
SELECT *
FROM payment
WHERE payment_id + customer_id < 10;