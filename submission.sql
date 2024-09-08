-- Tranzaksiya haqida qisqacha
-- Ma'lumotlar bazasini boshqarish tizimlarida (MBBT) tranzaksiya deb mantiqiy ishlar to'plamini bajarish uchun
-- foydalaniladigan operatsiyalar yig'indisiga aytiladi


-- 1757. Recyclable and Low Fat Products
-- Write your PostgreSQL query statement below
SELECT product_id FROM Products WHERE low_fats = 'Y' AND recyclable = 'Y';


-- 584. Find Customer Referee
-- Write your PostgreSQL query statement below
SELECT name FROM Customer WHERE referee_id <> 2 OR referee_id IS NULL;


-- 595. Big Countries
-- Write your PostgreSQL query statement below
SELECT name, population, area FROM World WHERE area >= 3000000 OR population >= 25000000;


-- 1148. Article Views I
-- Write your PostgreSQL query statement below
SELECT DISTINCT author_id AS id FROM Views WHERE author_id = viewer_id ORDER BY id;


-- 1683. Invalid Tweets
-- Write your PostgreSQL query statement below
SELECT tweet_id FROM Tweets WHERE LENGTH(content) > 15;


-- 1378. Replace Employee ID With The Unique Identifier
-- Write your PostgreSQL query statement below
SELECT e2.unique_id, e1.name FROM EmployeeUNI e2 RIGHT JOIN Employees e1 ON e1.id = e2.id;


-- 1068. Product sales analysis I
-- Write your PostgreSQL query statement below
SELECT p.product_name, s.year, s.price FROM Sales s INNER JOIN Product p on s.product_id = p.product_id;


-- 1581. Customer who visited but did not make any transaction
-- Write your PostgreSQL query statement below
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL GROUP BY v.customer_id ORDER BY count_no_trans;


-- 197. Rising temperature
-- Write your PostgreSQL query statement below
SELECT w1.id FROM Weather w1 INNER JOIN Weather w2 ON w1.recordDate = w2.recordDate + INTERVAL '1 day'
WHERE w1.temperature > w2.temperature


-- 1661. Average time of process per machine
-- Write your PostgreSQL query statement below
SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp)::NUMERIC, 3) AS processing_time
FROM Activity a1 INNER JOIN Activity a2 ON
    a1.machine_id = a2.machine_id AND a1.process_id = a2.process_id AND
    a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id;