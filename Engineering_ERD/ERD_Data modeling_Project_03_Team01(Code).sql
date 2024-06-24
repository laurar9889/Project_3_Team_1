-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hthqro
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Family_Planning" (
    "IndicatorCode" Varchar   NOT NULL,
    "Indicator" Varchar   NOT NULL,
    "Patents_Continent_Code" Varchar   NOT NULL,
    "ParentLocation_Continent" Varchar   NOT NULL,
    "Country_Code" Varchar   NOT NULL,
    "Country" Varchar  NOT NULL,
    "Gender" varchar   NOT NULL,
    "Age_Group" Varchar  NOT NULL,
    "Planning_Value_Rate" float   NOT NULL,
    "FactComments" Varchar    NOT NULL,
    "Language_Code" Varchar   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" varchar   NOT NULL

);

CREATE TABLE "Adolescent_birth_rate" (
    "ParentsLocation" Varchar  NOT NULL,
    "Location" Varchar   NOT NULL,
    "Age-Group" Varchar  NOT NULL,
    "Adolescent_birth_rate" float  NOT NULL,
    "FactComments" Varchar  NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Varchar   NOT NULL
);

CREATE TABLE "Antenatal_care_coverage" (
    "IndicatorCode" Varchar  NOT NULL,
    "Indicator" Varchar   NOT NULL,
    "ParentLocation" Varchar   NOT NULL,
    "Location" Varchar   NOT NULL,
    "Anatal_care%" float    NOT NULL,
    "FactComments" Varchar    NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Varchar    NOT NULL
);

CREATE TABLE "Births-attended" (
    "IndicatorCode" Varchar  NOT NULL,
    "ParentLocationCode" Varchar  NOT NULL,
    "ParentLocation" Varchar   NOT NULL,
	"SpatialDimValueCode" Varchar   NOT NULL,
    "Location" Varchar   NOT NULL,
	"Period_type" Varchar   NOT NULL,
    "skilled_personnel%" float  NOT NULL,
    "FactComments" Varchar    NOT NULL,
	"DateModified" Varchar   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Varchar    NOT NULL
);

CREATE TABLE "Location_Fact_Table" (
    "Country_Code" VARCHAR(10) NOT NULL,
    "Country" VARCHAR(255) NOT NULL,
    "continent_code" VARCHAR NOT NULL,
    "ParentLocation" VARCHAR NOT NULL,
    PRIMARY KEY ("Country_Code"),
    UNIQUE ("Country")
);


CREATE TABLE "Period" (
    "Period_Range" VARCHAR(50) NOT NULL,
    PRIMARY KEY ("Period_Range"),
    UNIQUE ("Period_Range")
);

ALTER TABLE "Family_Planning" ADD CONSTRAINT "fk_Family_Planning_Country_Code" FOREIGN KEY("Country_Code")
REFERENCES "Location_Fact_Table" ("Country_Code");

ALTER TABLE "Family_Planning" ADD CONSTRAINT "fk_Family_Planning_Period_Range" FOREIGN KEY("Period_Range")
REFERENCES "Period" ("Period_Range");

ALTER TABLE "Adolescent_birth_rate" ADD CONSTRAINT "fk_Adolescent_birth_rate_Location" FOREIGN KEY("Location")
REFERENCES "Location_Fact_Table" ("Country");

ALTER TABLE "Adolescent_birth_rate" ADD CONSTRAINT "fk_Adolescent_birth_rate_Period_Range" FOREIGN KEY("Period_Range")
REFERENCES "Period" ("Period_Range");

ALTER TABLE "Antenatal_care_coverage" ADD CONSTRAINT "fk_Antenatal_care_coverage_Location" FOREIGN KEY("Location")
REFERENCES "Location_Fact_Table" ("Country");

ALTER TABLE "Antenatal_care_coverage" ADD CONSTRAINT "fk_Antenatal_care_coverage_Period_Range" FOREIGN KEY("Period_Range")
REFERENCES "Period" ("Period_Range");

ALTER TABLE "Births-attended" ADD CONSTRAINT "fk_Births-attended_Location" FOREIGN KEY("Location")
REFERENCES "Location_Fact_Table" ("Country");

ALTER TABLE "Births-attended" ADD CONSTRAINT "fk_Births-attended_Period_Range" FOREIGN KEY("Period_Range")
REFERENCES "Period" ("Period_Range");


