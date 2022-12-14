USE DATABASE WALMART_DEV;
USE SCHEMA WALETP;

TRUNCATE TABLE WALETP.INVENTORY;

INSERT INTO WALETP.INVENTORY
(
	CAL_DT,
	STORE_KEY,
	PROD_KEY,
	STOCK_ON_HAND_QTY,
	ORDERED_STOCK,
	OUT_OF_STOCK_FLG,
	WASTE_QTY,
	PROMOTION_FLG,
	NEXT_DELIVERY_DT
)
SELECT
	CAL_DT AS CAL_DT,
	STORE_KEY AS STORE_KEY,
	PROD_KEY AS PROD_KEY,
	INVENTORY_ON_HAND_QTY AS STOCK_ON_HAND_QTY,
	INVENTORY_ON_HAND_ORDER_QTY AS ORDERED_STOCK,
	OUT_OF_STOCK_FLG AS OUT_OF_STOCK_FLG,
	WASTE_QTY AS WASTE_QTY,
	PROMOTION_FLG AS PROMOTION_FLG,
	NEXT_DELIVERY_DT AS NEXT_DELIVERY_DT
FROM WALLND.INVENTORY
;