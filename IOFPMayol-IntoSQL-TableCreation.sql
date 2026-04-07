   
   /* ============================================================
   In Only a Few Pages™ series – SQL Learning

   Script: Create Tables / Practice SQL
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
/*          Table Creation          */
--------------------------------------


-- Creating Regions Table
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL
);

-- Creating Countries Table
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Creating Locations Table
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

-- Creating Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- Creating Jobs Table
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    min_salary DECIMAL(10, 2),
    max_salary DECIMAL(10, 2)
);

-- Creating Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job_id INT,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
