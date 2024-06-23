-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hthqro
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Main_data_Table" (
    "IndicatorCode" object   NOT NULL,
    "Country_Code" object   NOT NULL,
    "Gender" Category   NOT NULL,
    "Age_Group" object   NOT NULL,
    "Planning_Value_Rate" float64   NOT NULL,
    "FactComments" text   NOT NULL,
    "Language_Code" object   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Year_Group" object   NOT NULL,
    "PeriodRangeID" int   NOT NULL,
    CONSTRAINT "pk_Main_data_Table" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Indicators_Table" (
    "IndicatorCode" object   NOT NULL,
    "Indicator" object   NOT NULL,
    CONSTRAINT "pk_Indicators_Table" PRIMARY KEY (
        "IndicatorCode"
     )
);

CREATE TABLE "Locations_Table" (
    "Patents_Continent_Code" object   NOT NULL,
    "ParentLocation_Continent" object   NOT NULL,
    CONSTRAINT "pk_Locations_Table" PRIMARY KEY (
        "Patents_Continent_Code"
     )
);

CREATE TABLE "Countries_Table" (
    "Country_Code" object   NOT NULL,
    "Country" object   NOT NULL,
    "Patents_Continent_Code" object   NOT NULL,
    CONSTRAINT "pk_Countries_Table" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Period_Ranges_Table" (
    "Year_Period_Range" object   NOT NULL,
    "PeriodRangeID" int   NOT NULL,
    CONSTRAINT "pk_Period_Ranges_Table" PRIMARY KEY (
        "PeriodRangeID"
     )
);

ALTER TABLE "Main_data_Table" ADD CONSTRAINT "fk_Main_data_Table_IndicatorCode" FOREIGN KEY("IndicatorCode")
REFERENCES "Indicators_Table" ("IndicatorCode");

ALTER TABLE "Main_data_Table" ADD CONSTRAINT "fk_Main_data_Table_Country_Code" FOREIGN KEY("Country_Code")
REFERENCES "Countries_Table" ("Country_Code");

ALTER TABLE "Main_data_Table" ADD CONSTRAINT "fk_Main_data_Table_PeriodRangeID" FOREIGN KEY("PeriodRangeID")
REFERENCES "Period_Ranges_Table" ("PeriodRangeID");

ALTER TABLE "Countries_Table" ADD CONSTRAINT "fk_Countries_Table_Patents_Continent_Code" FOREIGN KEY("Patents_Continent_Code")
REFERENCES "Locations_Table" ("Patents_Continent_Code");

