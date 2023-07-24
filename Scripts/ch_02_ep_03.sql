SELECT emp.firstName, emp.lastName, MIN(salesAmount), MAX(salesAmount), count(*) AS numberOfCarsSold
FROM employee emp
INNER JOIN sales sls
  ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('now', 'start of year') 
GROUP BY emp.employeeId
HAVING count(*) > 5;