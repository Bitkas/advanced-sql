select emp.firstName, emp.lastName, sls.salesId 
from employee emp 
LEFT JOIN sales sls 
ON emp.employeeId = sls.employeeId 
WHERE emp.title = 'Sales Person'
AND sls.salesId IS NULL; 

GO;

select * from customer;