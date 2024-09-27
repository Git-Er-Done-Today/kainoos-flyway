INSERT INTO Employee (name, national_insurance_no, bank_account, salary)
VALUE ("Benji Agnew", "PL 22 34 54 B", "GB 31839 0923 9343 2394", 25000);

INSERT INTO Sales_Employee (employee_id)
VALUE (LAST_INSERT_ID());

INSERT INTO Employee (name, national_insurance_no, bank_account, salary)
VALUE ("Delilah Martin", "PL 20 12 77 B", "GB 9872 4432 9663 2224", 30000);

INSERT INTO Sales_Employee (employee_id)
VALUE (LAST_INSERT_ID());