   
   /* ============================================================
   In Only a Few Pages™ series – SQL Learning

   Script: Insert Data into Tables / Practice SQL
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
/*         Data Insertion            */
--------------------------------------

-- Insert Data into the Regions Table
INSERT INTO regions (region_id, region_name) VALUES
(1, 'Asia'),
(2, 'Europe'),
(3, 'America'),
(4, 'Middle East'),
(5, 'Africa');

-- Insert Data into Countries Table
INSERT INTO countries (country_id, country_name, region_id) VALUES
(1, 'India', 1),
(2, 'Germany', 2),
(3, 'USA', 3),
(4, 'Saudi Arabia', 4),
(5, 'Nigeria', 5),
(6, 'Japan', 1),
(7, 'France', 2),
(8, 'Canada', 3),
(9, 'Egypt', 5),
(10, 'Italy', 2);

-- Insert Data into Locations Table
INSERT INTO locations (location_id, location_name, country_id) VALUES
(1, 'Mumbai', 1),
(2, 'Berlin', 2),
(3, 'New York', 3),
(4, 'Riyadh', 4),
(5, 'Cairo', 9);

-- Insert Data into the Departments Table
INSERT INTO departments (department_id, department_name, location_id) VALUES
(1, 'HR', 1),
(2, 'IT', 2),
(3, 'Sales', 3),
(4, 'Marketing', 4),
(5, 'Finance', 5),
(6, 'Research', 1),
(7, 'Legal', 2),
(8, 'Operations', 3),
(9, 'Customer Support', 4),
(10, 'Product Development', 5);

-- Insert Data into Jobs Table
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
(1, 'Developer', 50000, 100000),
(2, 'Manager', 60000, 120000),
(3, 'HR Specialist', 45000, 90000),
(4, 'Sales Executive', 40000, 85000),
(5, 'Marketing Expert', 50000, 95000),
(6, 'Financial Analyst', 55000, 110000),
(7, 'Operations Manager', 60000, 115000),
(8, 'Legal Advisor', 65000, 130000),
(9, 'Customer Support Representative', 30000, 65000),
(10, 'Product Manager', 70000, 140000),
(11, 'Research Scientist', 60000, 120000),
(12, 'Graphic Designer', 45000, 85000),
(13, 'Network Engineer', 55000, 105000),
(14, 'Data Analyst', 50000, 95000),
(15, 'Project Coordinator', 48000, 90000);

-- Insert Data into the Employees Table
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, salary, hire_date) VALUES
(1, 'Sam', 'Mayol', 1, 1, 50000, '2020-06-01'),
(2, 'Nemi', 'Mayol', 2, 2, 55000, '2021-07-12'),
(3, 'Iliana', 'Mayol', 3, 3, 60000, '2022-08-25'),
(4, 'Elisha', 'Mayol', 4, 4, 65000, '2023-09-10'),
(5, 'Sam', 'Smith', 5, 5, 70000, '2019-10-15'),
(6, 'John', 'Doe', 2, 1, 52000, '2020-11-20'),
(7, 'Jane', 'Doe', 3, 2, 58000, '2021-05-05'),
(8, 'Michael', 'Johnson', 1, 3, 61000, '2022-12-01'),
(9, 'Barnie', 'Lee', 4, 4, 65000, '2023-01-30'),
(10, 'Charlie', 'Brown', 2, 5, 48000, '2021-09-15'),
(11, 'David', 'Wilson', 3, 1, 55000, '2022-04-14'),
(12, 'Ella', 'White', 5, 2, 71000, '2020-03-20'),
(13, 'Frank', 'Taylor', 1, 3, 53000, '2021-07-05'),
(14, 'Grace', 'Moore', 4, 4, 67000, '2023-11-02'),
(15, 'Henry', 'Martinez', 2, 5, 60000, '2022-02-19'),
(16, 'Ivy', 'Anderson', 3, 1, 65000, '2021-10-22'),
(17, 'Jack', 'Thomas', 1, 2, 49000, '2020-01-25'),
(18, 'Kathy', 'Jackson', 5, 3, 72000, '2023-06-12'),
(19, 'Leo', 'Harris', 2, 4, 51000, '2022-09-18'),
(20, 'Megan', 'Clark', 4, 5, 68000, '2023-03-03');

