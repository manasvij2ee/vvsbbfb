UPDATE ECOMM_CCINFO
SET DEFAULT_CC = 'Y'
WHERE ID IN (
  SELECT MIN(ID)
  FROM ECOMM_CCINFO
  GROUP BY USER_ID
)
GO