SELECT ctm.firstName, ctm.LastName, sls.salesAmount
FROM customer ctm 
INNER JOIN sales sls
  ON ctm.customerId = sls.customerId

UNION

SELECT ctm.firstName, ctm.lastName, sls.salesAmount
FROM sales sls
LEFT JOIN customer ctm
  ON sls.customerId = ctm.customerId
WHERE ctm.customerId IS NULL

UNION

SELECT ctm.firstName, ctm.lastName, sls.salesAmount
FROM customer ctm
LEFT JOIN sales sls
  ON sls.customerId = ctm.customerId
WHERE sls.salesId IS NULL;