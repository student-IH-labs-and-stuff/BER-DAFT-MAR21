
use bank;

-- How many accounts and clients are there, overall and over time?

select *, date_format(convert(a.date,datetime), '%m-%y') from account a;

select date_format(convert(a.date, date), '%M-%Y') as 'M-Y', count(distinct d.client_id) as no_clients, count(distinct a.account_id) as no_accounts from account a
join disp d 
on a.account_id = d.account_id
group by date_format(convert(a.date, date), '%M-%Y')  ;

-- How many loans does the bank have over time, and what is the balance on those loans?
-- actually can we answer this question on this data ? (i think no ) 

SELECT * , (amount-payments) as bal, 
date_format(convert(date, date), '%M-%Y') as 'M-Y' FROM bank.loan;

-- How could we define clients as valuable / not valuable to the bank? note this is an very simplified classification!

select l.status,  d.client_id, sum(l.amount-l.payments) as loanbalance
from loan l 
join disp d
using(account_id)
where status in ('B','D')
group by l.status, d.client_id ; 


-- Once you've defined how to classify clients as valuable / not valuable, you could:
	-- describe both classifications of clients based on information you'll find across the other tables
    -- for example, where do they live, how much money do they move frequently, how old are they, 
    -- you could dive into a deeper analysis of customer behaviour
    -- for example, digging into the bigger loans (riskier liabilities), how many payments do they make on those loans, to whom/where, what type 

-- DA job : think about how to explain what youve done to someone non technical   

  
    
-- You could also assess if the bank has more or less of this classification of customer over time 
    
    #identify "bad" customers, no of accounts, trans, amount moved by month/year: 
    
    select date_format(convert(t.date, date), '%M-%Y') as 'M-Y',
    count(distinct t.account_id) as no_of_accounts, 
    count(distinct t.trans_id) as no_of_trans,
    ceiling(sum(t.amount)) as amount_moved from trans t 
    join disp d on t.account_id = d.account_id
    join loan l on t.account_id =l.account_id
    where d.client_id in
    (select  d.client_id from loan l join disp d using(account_id) where status in ('B','D')) 
    group by date_format(convert(t.date, date), '%M-%Y');
    
    
     #identify good customers , no of accounts, trans, amount moved by month/year: 
	select date_format(convert(t.date, date), '%M-%Y') as 'M-Y', 
    count(distinct t.account_id) as no_of_accounts, 
    count(distinct t.trans_id) as no_of_trans, 
    ceiling(sum(t.amount)) as amount_moved from trans t 
    join disp d on t.account_id = d.account_id
    join loan l on t.account_id = l.account_id
    where d.client_id in
    (select  d.client_id from loan l join disp d using(account_id) where status IN ('A','C') 
    and d.type = 'OWNER') 
    group by date_format(convert(t.date, date), '%M-%Y');
    
    select date_format(convert(t.date, date), '%M-%Y') as 'M-Y', 
    count(distinct t.account_id) as no_of_accounts, 
    count(distinct t.trans_id) as no_of_trans, 
    ceiling(sum(t.amount)) as amount_moved 
    from trans t 
    join disp d 
    on t.account_id = d.account_id
    where d.client_id in
    (select  d.client_id 
    from loan l 
    join disp d 
    using(account_id) 
    where status IN ('A','C')) 
    group by date_format(convert(t.date, date), '%m-%y');
    