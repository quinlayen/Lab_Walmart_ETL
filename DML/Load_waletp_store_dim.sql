USE DATABASE WALMART_DEV;
USE SCHEMA WALETP;

TRUNCATE TABLE WALETP.STORE_DIM;

INSERT INTO WALETP.STORE_DIM
(
	STORE_KEY,
	STORE_NUM,
	ADDR,
	CITY,
	REGION,
	CNTRY_CD,
	CNTRY_NM,
	POSTAL_ZIP_CD,
	PROV_NAME,
	PROV_CODE,
	MARKET_KEY,
	MARKET_NAME,
	SUBMARKET_KEY,
	SUBMARKET_NAME,
	LATITUDE,
	LONGITUDE,
	TLOG_ACTIVE_FLG,
	START_DATE,
	END_DATE
)
SELECT
	STORE_KEY AS STORE_KEY,
	STORE_NUM AS STORE_NUM,
	ADDR AS ADDR,
	CITY AS CITY,
	REGION AS REGION,
	CNTRY_CD AS CNTRY_CD,
	CNTRY_NM AS CNTRY_NM,
	POSTAL_ZIP_CD AS POSTAL_ZIP_CD,
	PROV_STATE_DESC AS PROV_NAME,
	PROV_STATE_CD AS PROV_CODE,
	MARKET_KEY AS MARKET_KEY,
	MARKET_NAME AS MARKET_NAME,
	SUBMARKET_KEY AS SUBMARKET_KEY,
	SUBMARKET_NAME AS SUBMARKET_NAME ,
	LATITUDE AS LATITUDE,
	LONGITUDE AS LONGITUDE,
	TRUE AS TLOG_ACTIVE_FLG,
	NULL AS START_DATE,
	NULL AS END_DATE
FROM WALLND.STORE
;

SELECT * FROM WALETP.STORE_DIM LIMIT 10;