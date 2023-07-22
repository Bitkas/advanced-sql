SELECT emp.employeeId, emp.firstName, emp.lastName , COUNT(*) AS carsSoldByEmployee
FROM sales sls
INNER JOIN employee emp
  ON emp.employeeId = sls.employeeId
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY carsSoldByEmployee DESC;