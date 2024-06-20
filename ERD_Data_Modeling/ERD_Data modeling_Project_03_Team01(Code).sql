-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hthqro
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Family_Planning" (
    "IndicatorCode" object   NOT NULL,
    "Indicator" object   NOT NULL,
    "Patents_Continent_Code" object   NOT NULL,
    "ParentLocation_Continent" object   NOT NULL,
    "Country_Code" object   NOT NULL,
    "Country" object   NOT NULL,
    "Gender" Category   NOT NULL,
    "Age_Group" object   NOT NULL,
    "Fact_Value_%" float64   NOT NULL,
    "FactComments" text   NOT NULL,
    "Language_Code" object   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Var   NOT NULL,
    CONSTRAINT "pk_Family_Planning" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Adolescent_birth_rate" (
    "ParentsLocation" object   NOT NULL,
    "Location" object   NOT NULL,
    "Age-Group" object   NOT NULL,
    "Adolescent_birth_rate" float64   NOT NULL,
    "FactComments" object   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Var   NOT NULL
);

CREATE TABLE "Antenatal_care_coverage" (
    "IndicatorCode" object   NOT NULL,
    "Indicator" object   NOT NULL,
    "ParentLocation" object   NOT NULL,
    "Location" object   NOT NULL,
    "Anatal_care%" float64   NOT NULL,
    "FactComments" text   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" var   NOT NULL
);

CREATE TABLE "Births-attended" (
    "IndicatorCode" object   NOT NULL,
    "ParentLocationCode" object   NOT NULL,
    "ParentLocation" object   NOT NULL,
    "Location" object   NOT NULL,
    "FactValue" float64   NOT NULL,
    "FactComments" Text   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    "Period_Range" Var   NOT NULL
);

CREATE TABLE "Location_Fact_Table" (
    "Country_Code" object   NOT NULL,
    "Country" object   NOT NULL,
    "Continent_Code" object   NOT NULL,
    "Continent" object   NOT NULL,
    "Starting_Year" int   NOT NULL,
    "Year_Ending" int   NOT NULL,
    CONSTRAINT "pk_Location_Fact_Table" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Period" (
    "Period_Range" Var   NOT NULL
);

ALTER TABLE "Family_Planning" ADD CONSTRAINT "fk_Family_Planning_Country" FOREIGN KEY("Country")
REFERENCES "Location_Fact_Table" ("Country");

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

