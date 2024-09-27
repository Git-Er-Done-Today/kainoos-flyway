INSERT INTO Employee (name, national_insurance_no, bank_account, salary)
VALUE ("Johnny Cage", "PL 22 22 23 B", "GB 4335 4564 6574 3425", 23000);

INSERT INTO Delivery_Employee (employee_id)
VALUE (LAST_INSERT_ID());

INSERT INTO Employee (name, national_insurance_no, bank_account, salary)
VALUE ("Matin Smith", "PL 20 20 13 B", "GB 4577 3454 3455 8932", 21000);

INSERT INTO Delivery_Employee (employee_id)
VALUE (LAST_INSERT_ID());