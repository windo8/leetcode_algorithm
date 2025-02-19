CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
DETERMINISTIC
BEGIN
  RETURN (
      select salary
      from (
          select salary, 
                 dense_rank() over (order by salary desc) as ranked
          from Employee
      ) as ranked_salaries
      where 
        ranked = N
      limit 1
  );
END;
