use bank;

-- approach 2

-- Get each transaction account, and the corresponding date (year and month) into a View 
-- that we can reuse 
create or replace view user_activity as
select account_id,
date_format(convert(date,date), '%m') as Activity_Month,
date_format(convert(date,date), '%Y') as Activity_year
from trans;

select * from bank.user_activity;

-- Get for each year and month, how many unique account holders made transactions.
create or replace view Monthly_active_users as
select Activity_year, Activity_Month, count(distinct account_id) as Active_users 
from user_activity # view 
group by Activity_year, Activity_Month
order by Activity_year, Activity_Month;

select * from bank.Monthly_active_users;

-- reminder of how to write a window function for Bank 
select loan_id, account_id, amount, payments, duration, amount-payments as "Balance",
avg(amount-payments) over (partition by duration) as Avg_Balance
from bank.loan
where amount > 100000
order by duration, balance desc;

-- Get the Active users table again, with another column showing the number of active users 
-- in the previous month, on each row 
-- eg for a feb 1995, we would see also jan 1995 in the final column
select *, lag(Active_users,1) over () as previous_month 
from Monthly_active_users;
  
  -- create a view that includes this previous month column 
create or replace view Monthly_active_users_with_prev as
select *, lag(Active_users,1) over (partition by Activity_year) as previous_month 
from Monthly_active_users;

Select * from Monthly_active_users_with_prev;

-- student activity - Modify the previous query to obtain the percentage of variation in the number of users compared with previous month.

select 
round((Active_users-previous_month)/Active_users *100,2)  as percchange,
(Active_users-previous_month) as nochange,
Activity_year , Activity_month
 from Monthly_active_users_with_prev
where previous_month is not null;



-- approach 3 
-- Get which "Active customers" where still active in the next month using a self join.
-- here we will use a CTE (common table expression) as a temporary result set - key word with _ as 
-- this is similar to our user_activity view but we only retain the unique account_id once per month

-- unique v account_id 
  select distinct account_id , Activity_Month, Activity_year
  from user_activity
  where Activity_Month=01 and Activity_Year= 1993;
  
    select * from user_activity
  where Activity_Month=01 and Activity_Year= 1993; 
  
-- you will see the query still takes some time, as it includes a next row (+1) conditional join 
with distinct_users as 
(
  select distinct account_id , Activity_Month, Activity_year
  from user_activity
) 
select d1.Activity_year, d1.Activity_Month, count(distinct d1.account_id) as Retained_customers
from distinct_users as d1
join distinct_users as d2
on d1.account_id = d2.account_id and d1.activity_Month = d2.activity_Month + 1
group by d1.Activity_Month, d1.Activity_year
order by d1.Activity_year, d1.Activity_Month;

-- create a view of the previous query.
create or replace view retained_customers_view as
with distinct_users as (
  select distinct account_id , Activity_Month, Activity_year
  from user_activity
)
select d1.Activity_year, d1.Activity_Month, count(distinct d1.account_id) as Retained_customers
from distinct_users d1
join distinct_users d2 on d1.account_id = d2.account_id
and d1.activity_Month = d2.activity_Month + 1
group by d1.Activity_Month, d1.Activity_year
order by d1.Activity_year, d1.Activity_Month;

select * from bank.retained_customers_view;

-- Building upon the view, we can get a month to month comparison of Retained customers

select
	Activity_year,
	Activity_month, 
	Retained_customers, 
    lag(Retained_customers, 1) over() as Last_month_retained_customers,
    (Retained_customers-lag(Retained_customers, 1) over()) as Diff
from bank.retained_customers_view;











