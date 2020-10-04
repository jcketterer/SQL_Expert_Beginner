# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR (100)
# );

# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     FOREIGN KEY(customer_id) REFERENCES customers(id)
# );

# SELECT * FROM customers, orders WHERE customers.id = orders.customer_id; 

# SELECT first_name, last_name, order_date, amount 
# FROM customers, orders 
# WHERE customers.id = orders.customer_id; 

# SELECT * FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;
    
# SELECT first_name, last_name, order_date, amount 
# FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;

# SELECT 
#     first_name, 
#     last_name, 
#     IFNULL(SUM(amount), 0) AS 'Total Spent'
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY customers.id
# ORDER BY 3;

# SELECT * FROM customers
# RIGHT JOIN orders
#     ON customers.id = orders.customer_id;

# CREATE TABLE students(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100)
# );

# CREATE TABLE papers(
#     title VARCHAR(100),
#     grade INT,
#     student_id INT,
#     FOREIGN KEY(student_id) REFERENCES students(id)
# );

-- #1
# SELECT first_name, title, grade
# FROM students 
# JOIN papers
#     ON students.id = papers.student_id
# ORDER BY grade DESC;

-- #2
# SELECT first_name, title, grade
# FROM students 
# LEFT JOIN papers
#     ON students.id = papers.student_id;

-- #3
# SELECT first_name, 
#        IFNULL(title, 'MISSING') AS title, 
#        IFNULL(grade, 0) AS grade
# FROM students 
# LEFT JOIN papers
#     ON students.id = papers.student_id;

-- #4
# SELECT first_name,
#        IFNULL(AVG(grade), 0) AS average
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id
# GROUP BY students.id
# ORDER BY average DESC;


-- #5 

# SELECT first_name,
#        IFNULL(AVG(grade), 0) AS average,
#        CASE 
#            WHEN AVG(grade) IS NULL THEN 'FAILING'
#            WHEN AVG(grade) >= 75 THEN 'PASSING'
#            ELSE "FAILING"
#        END AS passing_status
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id
# GROUP BY students.id
# ORDER BY grade DESC;

    
    
    
    
    
    
    
    
    
