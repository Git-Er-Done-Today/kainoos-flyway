CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT NOT NULL,
    name varchar(60) NOT NULL,
    role varchar(40) NOT NULL,
    nation_insurance_no varchar(13) NOT NULL,
    bank_account varchar(40) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE TABLE `Client` (
    client_id INT AUTO_INCREMENT NOT NULL,
    name varchar(60) NOT NULL,
    phone_number varchar(15) NOT NULL,
    address_line_1 varchar(30) NOT NULL,
    address_line_2 varchar(30),
    address_city varchar(20) NOT NULL,
    address_province varchar(20) NOT NULL,
    address_region varchar(20) NOT NULL,
    address_country varchar(30) NOT NULL,
    address_post_code varchar(10) NOT NULL,
    PRIMARY KEY (client_id)
);

CREATE TABLE Delivery_Employee_Project (
    delivery_employee_id INT NOT NULL,
    project_id INT NOT NULL,
    working_on_project BOOLEAN NOT NULL,
    PRIMARY KEY(delivery_employee_id, working_on_project)
);

CREATE TABLE Technology (
    technology_id INT AUTO_INCREMENT NOT NULL,
    name varchar(60) NOT NULL,
    PRIMARY KEY (technology_id)
);

CREATE TABLE Project (
    project_id INT AUTO_INCREMENT NOT NULL,
    `name` varchar(60) NOT NULL,
    `value` DECIMAL(15,2) NOT NULL,
    client_id INT NOT NULL,
    tech_lead_id INT NOT NULL,
    sales_employee_id INT NOT NULL,
    commission DECIMAL(10,2) NOT NULL,
    start_date DATE NOT NULL,
    completion_date DATE NOT NULL,
    PRIMARY KEY (project_id),
    FOREIGN KEY (tech_lead_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (sales_employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES `Client`(client_id)
);

CREATE TABLE Project_Technology (
    project_id INT NOT NULL,
    technology_id INT NOT NULL,
    PRIMARY KEY (project_id, technology_id)
);