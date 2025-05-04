
-- Create a view for high-salary employees
CREATE VIEW high_salary_employees AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 60000;

-- Create a trigger to prevent salary < 30000
CREATE OR REPLACE TRIGGER check_min_salary
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
    IF :NEW.salary < 30000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary must be at least 30,000');
    END IF;
END;
