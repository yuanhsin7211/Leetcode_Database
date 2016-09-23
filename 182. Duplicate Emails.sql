-- Write a SQL query to find all duplicate emails in a table named Person.
+----+---------+
| Id | Email   |
+----+---------+
| 1  | 1@a.com |
| 2  | 1@a.com |
| 3  | 2@b.com |
+----+---------+         
---------+
| Email   |
+---------+
| 1@a.com |
+---------+

/* Solution 1 */
SELECT DISTINCT Email 
FROM Person
GROUP BY Email
HAVING COUNT(EMAIL) >1;

/*Solution 2 */
SELECT DISTINCT Email
FROM Person a
INNER JOIN Person b
ON a.Email = b.Email
WHERE a.ID <> b.ID;
