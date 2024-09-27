CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT,
    name varchar(60),
    role varchar(40),
    nation_insurance varchar(13),
    bank_account varchar(40),
    salary DECIMAL(10, 2),
    PRIMARY KEY (employee_id)
);

CREATE TABLE `Client` (
    client_id INT AUTO_INCREMENT,
    name varchar(60),
    address varchar(120),
    phone_number varchar(20),
    PRIMARY KEY (client_id)
);

CREATE TABLE Delivery_Employee_Project (
    delivery_employee_id INT,
    project_id INT,
    working_on_proj BOOLEAN,
    PRIMARY KEY(delivery_employee_id, working_on_proj)
);

CREATE TABLE Technology (
    tech_id INT,
    name varchar(60),
    PRIMARY KEY (tech_id)
);


CREATE TABLE Project (
    project_id INT AUTO_INCREMENT,
    `name` varchar(60),
    `value` DECIMAL(15,2),
    client_id INT,
    tech_lead_id INT,
    sales_employee_id INT,
    commission DECIMAL(10,2),
    start_date DATE,
    completion_date DATE,
    PRIMARY KEY (project_id),
    FOREIGN KEY (tech_lead_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (sales_employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES `Client`(client_id)
);

CREATE TABLE Tech_Proj (
    tech_id INT,
    proj_id INT,
    PRIMARY KEY (tech_id, proj_id)
);

