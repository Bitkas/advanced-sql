select inv.modelId, sls.employeeId, COUNT(mdl.model), mdl.model,
  RANK() OVER (PARTITION BY sls.employeeId ORDER BY COUNT(mdl.model) DESC) AS modelsSoldByEmployee
FROM sales sls
INNER JOIN inventory inv
  ON sls.inventoryId = inv.inventoryId
INNER JOIN model mdl
  ON inv.modelId = mdl.modelId
GROUP BY sls.employeeId;



