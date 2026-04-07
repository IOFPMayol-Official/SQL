   
   /* ============================================================
   In Only a Few Pages™ series – SQL Learning

   Script: Additional Data Insertion / Practice SQL
   Book  : Introduction to Structured Query Language (SQL)
   Author: Samuel Mayol

   About:
   This script is part of a beginner-friendly series that 
   teaches SQL using practical examples.

   Disclaimer:
   For educational purposes only. Not optimized for production.
   
   Version: Initial 1.0.0

   ------------------------------------------------------------
   Stay Connected:
   ------------------------------------------------------------
   
   🌐 Website   : https://www.inonlyafewpages.com/
   📺 YouTube   : https://www.youtube.com/@IOFPMayol
   💼 LinkedIn  : https://www.linkedin.com/in/iofp-mayol
   📘 Facebook  : https://www.facebook.com/iofpmayol
   📸 Instagram : https://www.instagram.com/iofp.mayol
   🐦 X         : https://www.x.com/iofpmayol
   💻 GitHub    : https://github.com/IOFPMayol-Official
   
   ============================================================ */


--------------------------------------
/*     Additional Data Insertion     */
--------------------------------------
/* NOTE:
   The following inserts are provided to test and demonstrate
   additional SQL concepts covered later in the book
   "Introduction to Structured Query Language (SQL)".
*/

-- Insert two employees with NULL salaries
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) VALUES
(21, 'Luisa', 'Hill', 3, 2, NULL, '2024-01-10'),
(22, 'Marc', 'Smith', 4, 3, NULL, '2024-02-15');

-- Insert two employees with salaries that will be rounded 
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(23, 'Janet', 'English', 1, 1, 49999.99, '2024-03-01'),
(24, 'Michael', 'Diaz', 2, 2, 51000.99, '2024-03-15');

-- Insert three employees with empty spaces, to be trimmed ()
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(25, '  Elmo', 'Brown  ', 1, 1, 55000, '2025-03-28'),
(26, 'Manny', '  Davis  ', 2, 2, 58000, '2025-03-28'),
(27, '  Carlos', '  Right', 3, 3, 60000, '2025-03-28');

-- Insert values to test Charindex
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date)
VALUES 
(28, 'Carla', 'Adams', 2, 2, 50000, '2024-03-30'),
(29, 'Franklyn', 'Adams', 2, 1, 50500, '2024-03-30'),
(30, 'Camila', 'Brown', 2, 3, 50555, '2024-03-30');

-- Insert three employees with first names starting with 'S_'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(31, 'S_Carlos', 'Jones', 1, 1, 58000, '2025-04-05'),
(32, 'S_Mary', 'James', 2, 2, 60000, '2025-04-06'),
(33, 'S_Clarck', 'Jefferson', 3, 3, 63000, '2025-04-07');

-- Insert values to test LIKE examples
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES 
(34, 'Frank', 'Santana', 1, 1, 55000, '2025-04-10'),
(35, 'Fiona', 'Right', 2, 2, 58000, '2025-04-11');


-- Insert three employees with an empty first name (empty string '')
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(36, '', 'Doe', 1, 1, 55000, '2025-04-15'),
(37, '', 'Smith', 2, 2, 60000, '2025-04-16'),
(38, '', 'Brown', 3, 3, 65000, '2025-04-17');

-- Insert three employees with F names
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(39, 'Florinda', 'Morris', 1, 1, 58000, '2025-04-18'),
(40, 'Flffor', 'Walton', 2, 2, 62000, '2025-04-19'),
(41, 'Sofia', 'Murry', 3, 3, 67000, '2025-04-20');

-- Insert three employees with a salary of exactly 0
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(42, 'Anna', 'Jackson', 1, 1, 0, '2025-04-21'),
(43, 'Ricardo', 'Diaz', 2, 2, 0, '2025-04-22'),
(44, 'Marino', 'Lopez', 3, 3, 0, '2025-04-23');

-- Insert three employees with NULL salary
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(45, 'David', 'Brown', 1, 1, NULL, '2025-04-24'),
(46, 'Tom', 'Davis', 2, 2, NULL, '2025-04-25'),
(47, 'Karl', 'Lee', 3, 3, NULL, '2025-04-26');

-- Inserting test records that meet LIKE pattern criteria

-- For 'F%'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (48, 'Frank', 'Santana', 1, 1, 55000, '2025-04-10'),
       (49, 'Fiona', 'Right', 2, 2, 58000, '2025-04-11');

-- For '%F'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (50, 'JohnF', 'Doe', 3, 3, 60000, '2025-04-12');

-- For '_F%'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (51, 'After', 'Smith', 2, 2, 62000, '2025-04-13');

-- For '__F%'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (52, 'AsFer', 'Johnson', 1, 1, 55000, '2025-04-14');

-- For '%@%%^' ESCAPE '@'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (53, 'Mark@%^', 'Lee', 1, 1, 53000, '2025-04-15');

-- For '%@_%' ESCAPE '@'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (54, 'Kathy_Anna', 'Morris', 2, 2, 58000, '2025-04-16');

-- For '%_%'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (55, 'Peter_John', 'Morris', 3, 3, 64000, '2025-04-17');

-- For '%@%%@_%' ESCAPE '@'
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES (56, 'Jenna%@%Doe', 'Wilson', 1, 1, 61000, '2025-04-18');

-- Insert an employee with a typo
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(57, 'Jonh', 'Reese', 1, 1, 0, '2025-01-21');

INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) 
VALUES
(58, 'Carla', 'Rijo', 1, 4, 70000, '2025-04-26'),
(59, 'Ted', 'Williams', 2, 4, 75000, '2025-04-27');

-- Insert null department_id in Employee table
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) VALUES
(60, 'Casimiro', 'Valdez', 1, NULL, 50000, '2019-07-01'),
(61, 'John', 'Thomas', 2, 2, 55000, '2019-08-07'),
(62, 'Nilo', 'Villagran', 3, NULL, 60000, '2019-09-15'),
(63, 'Juan', 'Soto', 4, NULL, 65000, '2020-12-04');

-- Employee with extra spaces in first_name
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date)
VALUES (64, '  Juan  ', 'Gomez', 1, 1, 55000, '2025-04-28');

-- Employee with extra spaces in last_name
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date)
VALUES (65, 'Maria', '  Rodriguez  ', 2, 2, 60000, '2025-04-28');

/* NOTE:
   If you manually type the data above to insert values into the tables,
   be careful—some spelling variations are intentional. They are included
   to create different test scenarios when retrieving and sorting data.
*/
