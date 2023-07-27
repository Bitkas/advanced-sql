SELECT sls.salesId, sls.salesAmount
FROM sales sls
INNER JOIN inventory inv
  ON sls.inventoryId = inv.inventoryId
WHERE inv.modelId  IN (
  SELECT m.modelId
  FROM model m
  WHERE m.EngineType = 'Electric'
)