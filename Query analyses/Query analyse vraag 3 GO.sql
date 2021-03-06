SELECT OH.ORDER_NUMBER,
	CONVERT(DATE, OH.ORDER_DATE) AS ORDER_DATE,
	OH.RETAILER_NAME,
	SS.SALES_STAFF_CODE,
	SS.FIRST_NAME,
	SS.LAST_NAME
FROM ORDER_HEADER OH LEFT JOIN SALES_STAFF SS ON OH.SALES_STAFF_CODE = SS.SALES_STAFF_CODE
ORDER BY OH.ORDER_NUMBER