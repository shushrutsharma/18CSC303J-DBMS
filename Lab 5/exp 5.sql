Customers order table
sometimes order_amount>2000
someimtes >2000 <6000 
some ID >=3001 <=3007
salesman_ID sometimes >=5003 <=5008

ONCE aUG 17, 2012 

Salesman_ID City Customer_ID Order_date Order_amount Grade 
+-+-+-+-+++-+-+-+-+--+-+-+-+-+-++--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|              IGNORE THE ABOVE ROUGH NOTES                      |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+





Table creation:
_____________________________________________________________________
create table orders_049(salesman_id number(4) NOT NULL,
                        city varchar(15),
                        customer_id number(4) NOT NULL,
                        order_date date NOT NULL,
                        order_amount number(8) NOT NULL,
                        grade char);
desc orders_049;
_____________________________________________________________________




Database entry:
======================================================================

INSERT INTO orders_049
VALUES(5002,NULL,3000,TO_DATE('2012-08-15','yyyy-mm-dd'),1500,NULL);

INSERT INTO orders_049
VALUES(5003,'Vadodara',3001,TO_DATE('2012-08-16','yyyy-mm-dd'),1900,'B');

INSERT INTO orders_049
VALUES(5002,'Mumbai',3002,TO_DATE('2012-08-16','yyyy-mm-dd'),2100,'A');

INSERT INTO orders_049
VALUES(5005,'Mumbai',3003,TO_DATE('2012-08-16','yyyy-mm-dd'),3600,'D');

INSERT INTO orders_049
VALUES(5003,'Chennai',3004,TO_DATE('2012-08-17','yyyy-mm-dd'),5400,'A');

INSERT INTO orders_049
VALUES(5002,'Vadodara',3005,TO_DATE('2012-08-17','yyyy-mm-dd'),6400,'C');

INSERT INTO orders_049
VALUES(5003,'Vadodara',3003,TO_DATE('2012-08-17','yyyy-mm-dd'),5400,'D');

INSERT INTO orders_049
VALUES(5003,NULL,3008,TO_DATE('2012-08-17','yyyy-mm-dd'),8900,'C');

INSERT INTO orders_049
VALUES(5002,'Mumbai',3003,TO_DATE('2012-08-17','yyyy-mm-dd'),3300,NULL);

INSERT INTO orders_049
VALUES(5010,'Chennai',3003,TO_DATE('2012-08-19','yyyy-mm-dd'),1100,NULL);

INSERT INTO orders_049
VALUES(5005,NULL,3003,TO_DATE('2012-08-20','yyyy-mm-dd'),10000,'A');

======================================================================





Q1
SELECT SUM(ORDER_AMOUNT) AS TOTAL_PURCHASE
FROM ORDERS_049;

Q2
SELECT CAST(AVG(ORDER_AMOUNT) AS DECIMAL(10,2)) AS TOTAL_PURCHASE
FROM ORDERS_049;

Q3
SELECT COUNT(DISTINCT CUSTOMER_ID) AS GRADED_CUSTOMER
FROM ORDERS_049
WHERE GRADE IS NOT NULL;

Q4
SELECT MAX(ORDER_AMOUNT) AS MAX_PURCHASE_AMOUNT
FROM ORDERS_049;

Q5
SELECT MIN(ORDER_AMOUNT) AS MAX_PURCHASE_AMOUNT
FROM ORDERS_049;

Q6
SELECT CITY, MIN(GRADE) AS HIGHEST_GRADE
FROM ORDERS_049
WHERE CITY IS NOT NULL
GROUP BY CITY;

Q7
SELECT CUSTOMER_ID, MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID
ORDER BY CUSTOMER_ID;

Q8
SELECT CUSTOMER_ID, ORDER_DATE, MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID,ORDER_DATE
ORDER BY ORDER_DATE;

Q9
SELECT CUSTOMER_ID, ORDER_DATE, MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID,ORDER_DATE
ORDER BY ORDER_DATE;

Q10
SELECT CUSTOMER_ID, ORDER_DATE, MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID,ORDER_DATE
HAVING MAX(ORDER_AMOUNT)>2000
ORDER BY ORDER_DATE;

Q11
SELECT CUSTOMER_ID, ORDER_DATE, MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID,ORDER_DATE
HAVING MAX(ORDER_AMOUNT)>2000 AND MAX(ORDER_AMOUNT)<6000
ORDER BY ORDER_DATE;

Q12
SELECT CUSTOMER_ID,  MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY CUSTOMER_ID
HAVING ORDER_ID>=3002 AND ORDER_ID<=3007;

Q13
SELECT SALESMAN_ID,  MAX(ORDER_AMOUNT)
FROM ORDERS_049
GROUP BY SALESMAN_ID
HAVING SALESMAN_ID>=5003 AND SALESMAN_ID<=5008;

Q14
SELECT COUNT(ORDER_AMOUNT) AS ORDER_COUNT
FROM ORDERS_049
WHERE ORDER_DATE = TO_DATE('2012-08-17','yyyy-mm-dd');

Q15
SELECT COUNT(DISTINCT CITY) AS CITY_COUNT
FROM ORDERS_049
WHERE CITY IS NOT NULL;