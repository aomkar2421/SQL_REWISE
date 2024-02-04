create database practise;
use practise;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2)
);


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT,
    CONSTRAINT fk_manager_id
        FOREIGN KEY (manager_id)
        REFERENCES employees (employee_id)
);


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    CONSTRAINT chk_end_date_gt_start_date
        CHECK (end_date >= start_date)
);

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_employee_id
        FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id),
    CONSTRAINT fk_project_id
        FOREIGN KEY (project_id)
        REFERENCES projects (project_id)
);


-- Example entries for the employees table

INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary) VALUES
(1, 'John', 'Doe', 101, '2022-01-10', 60000.00),
(2, 'Jane', 'Smith', 102, '2022-02-15', 70000.00),
(3, 'Bob', 'Johnson', 101, '2022-03-20', 55000.00),
(4, 'Alice', 'Williams', 103, '2022-04-25', 80000.00),
(5, 'Charlie', 'Brown', 102, '2022-05-30', 65000.00),
(6, 'Eva', 'Miller', 101, '2022-06-05', 75000.00),
(7, 'David', 'Anderson', 103, '2022-07-10', 90000.00),
(8, 'Grace', 'Davis', 102, '2022-08-15', 62000.00),
(9, 'Frank', 'White', 101, '2022-09-20', 72000.00),
(10, 'Sophia', 'Taylor', 103, '2022-10-25', 68000.00),
(11, 'Oliver', 'Moore', 102, '2022-11-30', 80000.00);


-- Example entries for the departments table

INSERT INTO departments (department_id, department_name, manager_id) VALUES
(101, 'Human Resources', 6),
(102, 'Marketing', 2),
(103, 'Research and Development', 7),
(104, 'Finance', 8),
(105, 'Customer Support', 10),
(106, 'Information Technology', 5),
(107, 'Sales', 9),
(108, 'Operations', 2),
(109, 'Legal', 8),
(110, 'Quality Assurance', 10);


-- Example entries for the projects table

INSERT INTO projects (project_id, project_name, start_date, end_date) VALUES
(1, 'Employee Portal Redesign', '2022-01-15', '2022-05-30'),
(2, 'Social Media Campaign', '2022-02-20', '2022-06-10'),
(3, 'Product Launch: XYZ Widget', '2022-03-25', '2022-07-15'),
(4, 'Financial System Upgrade', '2022-04-30', '2022-08-20'),
(5, 'Customer Feedback Analysis', '2022-06-05', '2022-09-25'),
(6, 'IT Infrastructure Enhancement', '2022-07-10', '2022-10-30'),
(7, 'Sales Training Program', '2022-08-15', '2022-12-05'),
(8, 'Supply Chain Optimization', '2022-09-20', '2023-01-15'),
(9, 'Legal Compliance Review', '2022-10-25', '2023-02-28'),
(10, 'QA Process Improvement', '2022-11-30', '2023-03-15');


-- Example entries for the employee_projects table

INSERT INTO employee_projects (employee_id, project_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);