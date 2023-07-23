SELECT emp.firstName, emp.lastName, MIN(salesAmount), MAX(salesAmount)
FROM employee emp
INNER JOIN sales sls
  ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName;
