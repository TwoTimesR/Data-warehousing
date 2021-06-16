SELECT OD.ORDER_DETAIL_CODE,
	OH.RETAILER_NAME,
	OD.ORDER_NUMBER,
	CONVERT(DATE, OH.ORDER_DATE) AS ORDER_DATE,
	P.PRODUCT_NUMBER,
	P.PRODUCT_NAME,
	PT.PRODUCT_TYPE_EN,
	OD.QUANTITY,
	OD.UNIT_PRICE,
	(OD.QUANTITY * OD.UNIT_PRICE) AS TOTAL_PRICE
FROM ORDER_DETAILS OD
	LEFT JOIN PRODUCT P ON OD.PRODUCT_NUMBER = P.PRODUCT_NUMBER
	LEFT JOIN ORDER_HEADER OH ON OD.ORDER_NUMBER = OH.ORDER_NUMBER
	LEFT JOIN PRODUCT_TYPE PT ON P.PRODUCT_TYPE_CODE = PT.PRODUCT_TYPE_CODE
ORDER BY OD.ORDER_DETAIL_CODE