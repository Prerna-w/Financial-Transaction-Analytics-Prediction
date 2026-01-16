use Bank_analysis;
select * from accounts;
select * from transactions;
---------------------------------------------------
select count(*) from accounts;
select count(*) from transactions;
-------------------------------------------------------
----Data Cleaning---

--Detect NULL values---
select
    sum(CASE when customer_name is NULL then 1 END) as null_names,
    sum(CASE when age is NULL then 1 END) as null_age
from accounts;
--Check duplicate account IDs--
select account_id, COUNT(*) 
from accounts
GROUP BY account_id
HAVING COUNT(*) > 1;

--Fix invalid age--
UPDATE accounts
SET age = NULL
WHERE age < 18 OR age > 100;

--1)Total number of accounts by account type--
select count(account_id) as total_account,account_type
from accounts
group by account_type

--2)Count customers by city & state--
select  city,state,count( account_id) as Total_Customers
from accounts
group by city,state
order by Total_Customers desc

--3)How many customers are Active vs Dormant
select count(*) as total,account_status
from accounts
group by account_status

--4)Top 10 highest account balances
select top 10 *
from transactions
order by balance_after_txn desc

--5)Monthly credit vs debit amounts
select YEAR(txn_date) as year,MONTH(txn_date) as month,sum(amount) as total_amount,txn_type
from transactions
group by YEAR(txn_date),MONTH(txn_date),txn_type
order by year,month

--6)Average customer age by account type
select AVG(age) as avg_age,account_type
from accounts 
group by account_type

--7)Customers with transactions over ₹50,000
select account_id,SUM(amount) as total_spent
from transactions
group by account_id
having SUM(amount) > 50000

--8)Most active transactions locations
select location,count(*) as txn_count from transactions
group by location
order by txn_count desc

--9)Highest Number of Failed Transactions
select merchant,count(*) as fail_txn
from transactions
where status = 'failed'
group by merchant

--10)Total loan customers by city
select COUNT(loan) as loan_customers , city from accounts
group by city
order by loan_customers desc;

--11)Find customers with zero transactions
select a.account_id,a.customer_name from accounts a
left join transactions t on a.account_id = t.account_id
where t.account_id is null;

--12)Top merchants by total transaction amount
select merchant,SUM(amount) as total
from transactions
group by merchant
order by total desc

--13)Average Transaction Amount by Mode
select txn_mode, AVG(amount) as avg_amount
from transactions
group by txn_mode;

----14)Top Categories of Spending
select category, SUM(amount) as  total_spent
from transactions
where  txn_type = 'Debit'
group by category
order by total_spent DESC;

--15)Age Group Distribution of Customers
select 
    case
        when age between 18 and 25 then '18-25'
        when age between 26 and 35 then '26-35'
        when age between 36 and 50 then '36-50'
        when age between 51 and 60 then '50-60'
        else '60+'
    end as age_group,
    COUNT(*) as total_customers
from accounts
group by
    case
        when age between 18 and 25 then '18-25'
        when age between 26 and 35 then '26-35'
        when age between 36 and 50 then '36-50'
        when age between 51 and 60 then '50-60'
        else '60+'
    end;

