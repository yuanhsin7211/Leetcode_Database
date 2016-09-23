-- Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+

-- For example, given the above Employee table, the second highest salary is 200. 
-- If there is no second highest salary, then the query should return null.

--/* Solution 1 */--   Remember to include SELECT () SecondHighestSalary;
SELECT (SELECT MAX(Salary) FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee)) SecondHighestSalary;

--/* Solution 2 */--
SELECT (SELECT Salary FROM Employee GROUP BY Salary ORDER BY Salary DESC LIMIT 1,1) SecondHighestSalary;
