-- 1
select * from sakila.actor
where first_name = 'SCARLETT';


-- 2
select count(*) from sakila.film;
select count(*) from sakila.rental;

-- 3
select max(rental_duration) as max_duration, min(rental_duration) as min_duration
from sakila.film;

-- 4
select floor(avg(length) / 60) as hours, round(avg(length) % 60) as minutes
from sakila.film;

-- 5
select count(distinct last_name)
from actor;

-- 6
select datediff(max(rental_date), min(rental_date)) as active_days
from rental;

-- 7
select *, date_format(rental_date, '%M') as month , date_format(rental_date, '%W') as weekday
from rental
limit 20;

-- 8 
select *, case when date_format(rental_date, '%W') in ('Saturday', 'Sunday')
          then 'weekend'
          else 'workday' end as day_type
from rental;

-- 9 
select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*)
from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14')



