SELECT P.PRODUCT_NUMBER,
	P.PRODUCT_NAME,
	PT.PRODUCT_TYPE_EN,
	ROUND(SUM(OD.QUANTITY * OD.UNIT_PRICE), 2) AS OMZET
FROM ORDER_DETAILS OD
	LEFT JOIN PRODUCT P ON OD.PRODUCT_NUMBER = P.PRODUCT_NUMBER
	LEFT JOIN ORDER_HEADER OH ON OD.ORDER_NUMBER = OH.ORDER_NUMBER
	LEFT JOIN PRODUCT_TYPE PT ON P.PRODUCT_TYPE_CODE = PT.PRODUCT_TYPE_CODE
--WHERE P.PRODUCT_NAME = 'insert product name'
GROUP BY P.PRODUCT_NUMBER,
	P.PRODUCT_NAME,
	PT.PRODUCT_TYPE_EN
ORDER BY P.PRODUCT_NUMBER ASC