-- joins: select all the computers from the products table:
-- using the products table and the categories table, return the product name and the category name */
SELECT products.Name, categories.Name FROM products INNER JOIN categories ON categories.CategoryID = products.CategoryID WHERE categories.Name = 'Computers';

-- joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.Name, products.Price, reviews.Rating FROM products JOIN reviews ON products.ProductID=reviews.ProductID WHERE reviews.Rating = '5';
--  joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT concat(e.FirstName, e.LastName) AS Employee, SUM(s.Quantity) AS Total  FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID group by e.EmployeeID ORDER BY Total DESC LIMIT 10;
--  joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name AS Department, categories.Name FROM departments JOIN categories ON departments.DepartmentID = categories.DepartmentID WHERE categories.Name IN ('Appliances', 'Games');
-- joins: find the product name, total # sold, and total price sold,

--  for Eagles: Hotel California --You may need to use SUM() */ 
SELECT p.Name, SUM(s.Quantity) AS Total_Quantity, SUM(s.PricePerUnit*s.Quantity) AS Total_Price_Sold FROM products as p JOIN sales AS s ON p.ProductID = s.ProductID WHERE p.ProductID = '97';
-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) 
SELECT p.Name,r.Reviewer, r.Rating, r.Comment FROM products AS p JOin reviews AS r ON p.ProductID = r.ProductID WHERE p.Name = 'Visio TV' AND r.Rating < 2;
-- ------------------------------------------ Extra - May be difficult

-- Your goal is to write a query that serves as an employee sales report.

-- This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold 