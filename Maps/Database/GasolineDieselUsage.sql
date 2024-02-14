--CREATE TABLE

CREATE TABLE "GASOLINEDIESLUSAGE"(
 District varchar(80) PRIMARY KEY,
 No_of_Sheds int NOT NULL,
 Gasoline_SD  numeric(4,1),
 Gasoline_Mean varchar(80),
 Gasoline_CV numeric(3,1),
 Diesel_SD  varchar(80),
 Diesel_Mean varchar(80),
 Diesel_CV numeric(3,1)
);

SELECT * FROM "GASOLINEDIESLUSAGE";

---Easiest way to import data----

COPY "GASOLINEDIESLUSAGE" (District, No_of_Sheds , Gasoline_SD, Gasoline_Mean, Gasoline_CV,
						   Diesel_SD, Diesel_Mean, Diesel_CV )
FROM 'C:\Users\Public\Book1.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "GASOLINEDIESLUSAGE";

--Convert the database into the geospecial database

CREATE EXTENSION postgis;  -- post gis is the geospecial data model


SELECT * FROM spatial_ref_sys;

--Slect the data from  tables
SELECT * FROM "district";

SELECT * FROM "town_villages";