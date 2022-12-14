LIST @Walmart_dev.wallnd.files_stage;

TRUNCATE WALMART_DEV.WALLND.CALENDAR;
TRUNCATE WALMART_DEV.WALLND.SALES;
TRUNCATE WALMART_DEV.WALLND.PRODUCT;
TRUNCATE WALMART_DEV.WALLND.STORE;
TRUNCATE WALMART_DEV.WALLND.INVENTORY;


COPY INTO WALMART_DEV.WALLND.CALENDAR FROM @WALMART_DEV.WALLND.FILES_STAGE/calendar.csv.gz;
COPY INTO WALMART_DEV.WALLND.SALES FROM @WALMART_DEV.WALLND.FILES_STAGE/sales.csv.gz;
COPY INTO WALMART_DEV.WALLND.PRODUCT FROM @WALMART_DEV.WALLND.FILES_STAGE/product.csv.gz;
COPY INTO WALMART_DEV.WALLND.STORE FROM @WALMART_DEV.WALLND.FILES_STAGE/store.csv.gz;
COPY INTO WALMART_DEV.WALLND.INVENTORY FROM @WALMART_DEV.WALLND.FILES_STAGE/inventory.csv.gz;