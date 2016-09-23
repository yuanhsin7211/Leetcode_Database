-- Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.
+---------+------------+------------------+
| Id(INT) | Date(DATE) | Temperature(INT) |
+---------+------------+------------------+
|       1 | 2015-01-01 |               10 |
|       2 | 2015-01-02 |               25 |
|       3 | 2015-01-03 |               20 |
|       4 | 2015-01-04 |               30 |
+---------+------------+------------------+
-- For example, return the following Ids for the above Weather table:
+----+
| Id |
+----+
|  2 |
|  4 |
+----+
--/* Solution 1 */--
SELECT w1.Id 
FROM Weather as w1 
INNER(LEFT) JOIN Weather as w2 
on  w1.Temperature > w2.Temperature
WHERE DATEDIFF(w1.Date,w2.Date)=1;

--/* Solution 2 */--
SELECT w1.Id 
FROM Weather as w1 
INNER JOIN Weather as w2 
ON TO_DAYS(w1.Date) = TO_DAYS(w2.Date) + 1 AND w1.Temperature > w2.Temperature;
