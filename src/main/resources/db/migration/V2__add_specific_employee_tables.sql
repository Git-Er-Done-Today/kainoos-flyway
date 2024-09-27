CREATE TABLE Sales_Employee (
    sales_employee_id INT AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY (sales_employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Delivery_Employee (
    delivery_employee_id INT AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY (delivery_employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- These are the names of the automatically created Foreign Keys
ALTER TABLE Project
DROP CONSTRAINT Project_ibfk_1,
DROP CONSTRAINT Project_ibfk_2,
DROP CONSTRAINT Project_ibfk_3;

ALTER TABLE Project
ADD FOREIGN KEY (tech_lead_id) REFERENCES Delivery_Employee(delivery_employee_id);

ALTER TABLE Project
ADD FOREIGN KEY (sales_employee_id) REFERENCES Sales_Employee(sales_employee_id);

ALTER TABLE Delivery_Employee_Project
ADD FOREIGN KEY (delivery_employee_id) REFERENCES Delivery_Employee(delivery_employee_id);