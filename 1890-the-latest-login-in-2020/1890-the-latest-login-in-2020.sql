# Write your MySQL query statement below
select 
    user_id,
    time_stamp
from Logins
where
    year(time_stamp) = 202


