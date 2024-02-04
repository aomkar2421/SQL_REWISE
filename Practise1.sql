CREATE datbase dummy;
use dummy;
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
(11, 'Oliver', 'Moore', 102, '2022-11-30', 80000.00),
(12, 'Isabella', 'Hill', 101, '2023-01-05', 55000.00),
(13, 'William', 'Baker', 103, '2023-02-10', 75000.00),
(14, 'Emma', 'Ward', 101, '2023-03-15', 67000.00),
(15, 'Henry', 'Cole', 102, '2023-04-20', 92000.00),
(16, 'Ava', 'Turner', 103, '2023-05-25', 60000.00),
(17, 'Mia', 'Fisher', 102, '2023-06-30', 85000.00),
(18, 'Liam', 'Carter', 101, '2023-07-05', 70000.00),
(19, 'Elijah', 'Harrison', 103, '2023-08-10', 78000.00),
(20, 'Zoe', 'Gardner', 102, '2023-09-15', 69000.00);



-- Example entries for the departments table

INSERT INTO departments (department_id, department_name, manager_id) VALUES
(101, 'Human Resources', 6),
(102, 'Marketing', 2),
(103, 'Research and Development', 7),
(104, 'Finance', 8),
(105, 'Customer Support', 11),
(106, 'Information Technology', 15),
(107, 'Sales', 19),
(108, 'Operations', 12),
(109, 'Legal', 13),
(110, 'Quality Assurance', 16),
(111, 'Product Management', 20),
(112, 'Public Relations', 4),
(113, 'Facilities', 5),
(114, 'Purchasing', 9),
(115, 'Training and Development', 14),
(116, 'Engineering', 18),
(117, 'Supply Chain', 10),
(118, 'Security', 3),
(119, 'Administration', 1),
(120, 'Strategic Planning', 17);



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
(10, 'QA Process Improvement', '2022-11-30', '2023-03-15'),
(11, 'New Product Research', '2023-01-05', '2023-04-20'),
(12, 'PR Event: Annual Conference', '2023-02-10', '2023-05-25'),
(13, 'Facilities Upgrade', '2023-03-15', '2023-06-30'),
(14, 'Vendor Negotiations', '2023-04-20', '2023-07-05'),
(15, 'Employee Training Series', '2023-05-25', '2023-08-10'),
(16, 'Software Development: Project A', '2023-06-30', '2023-09-15'),
(17, 'Supply Chain Integration', '2023-08-05', '2023-10-20'),
(18, 'Security Audit and Implementation', '2023-09-10', '2023-11-25'),
(19, 'Administrative Process Streamlining', '2023-10-15', '2023-12-30'),
(20, 'Strategic Planning Retreat', '2023-11-20', '2024-01-05');



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
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 1),
(20, 2),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9);
