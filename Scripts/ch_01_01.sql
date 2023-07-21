SELECT A.firstName, A.lastName, B.firstName, B.lastName from employee A, employee B where A.employeeId = B.managerId;

GO

SELECT * from employee LIMIT 10;