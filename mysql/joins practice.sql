use classicmodels;

/*SELECT 
    *
FROM
    customers;

SELECT 
    customers.contactLastName,
    customers.contactFirstName,
    COUNT(orders.orderNumber)
FROM
    customers
        LEFT JOIN
    orders ON customers.customerNumber = orders.customerNumber
GROUP BY orders.customerNumber
HAVING COUNT(orders.orderNumber) >= 5
    AND COUNT(orders.orderNumber) <= 10;
  
SELECT 
    *
FROM
    payments;

SELECT 
    customers.customerName, SUM(payments.amount), paymentDate
FROM
    customers
        LEFT JOIN
    payments ON customers.customerNumber = payments.customerNumber
WHERE
    paymentDate >= '2004-01-01'
GROUP BY customers.customerNumber;

*/
-- SELECT DISTINCT
--     customerName
-- FROM
--     customers
--         JOIN
-- 		orders using(customerNumber)
--         JOIN
--     orderdetails using(orderNumber)
--         JOIN
--     products ON products.productcode = orderdetails.productcode
-- WHERE
--     productline IN ('Motorcycles' , 'Trains')

-- SELECT DISTINCT
--     productline, SUM(orderdetails.quantityordered)
-- FROM
--     products
--         JOIN
--     orderdetails USING (productcode)
--         JOIN
--     orders USING (ordernumber)
-- WHERE
--     status IN ('Shipped')
-- GROUP BY productline
-- ORDER BY SUM(orderdetails.quantityordered) DESC;
-- 

SELECT 
	employees.lastname, sum(orderdetails.quantityordered*orderdetails.priceeach) revenue
From 
	employees
		LEFT JOIN
	customers ON employees.employeenumber = customers.salesrepemployeenumber
		JOIN
	orders USING(CUSTOMERnumber)
		JOIN
	orderdetails using(ordernumber)

group by employeenumber

having revenue> (
Select avg(revenue) from (
SELECT 
	employees.lastname, sum(orderdetails.quantityordered*orderdetails.priceeach) revenue
From 
	employees
		LEFT JOIN
	customers ON employees.employeenumber = customers.salesrepemployeenumber
		JOIN
	orders USING(CUSTOMERnumber)
		JOIN
	orderdetails using(ordernumber)

group by employeenumber) as T

)
order by sum(orderdetails.quantityordered*orderdetails.priceeach) desc
