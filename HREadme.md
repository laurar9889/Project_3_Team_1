# Data Cleaning for Project Analysis
## Overview
This repository contains Python code implemented in a Jupyter notebook for cleaning and preparing data related to adolescent birth rates and other relevant indicators for analysis in a project on family planning and maternal well-being. The data was sourced from a CSV file (data.csv) and cleaned to focus on specific columns for further analysis.

## Steps Taken
Loading the Data: The data was loaded from data.csv using the pandas library in Python.

Selecting Relevant Columns: Only the following columns were selected for analysis:

        ParentLocation: Indicates the broader region or continent.
        Location: Specifies the country or specific region.
        Period: Year of data collection.
        Dim2: Age group of women (renamed to Age-group).
        Value: Numerical value of the indicator (renamed to Adolescent birth rate (per 1000 women)).
        FactComments: Comments or additional context related to the data.
        Data Cleaning:

Renamed the Dim2 column to Age-group to improve clarity.
Renamed the Value column to Adolescent birth rate (per 1000 women) to accurately reflect its content.

Output:

The cleaned DataFrame (Hdf_cleaned) is exported to Halima.csv in the Output folder.


Dependencies
Python 3.x
pandas library
Jupyter Notebook
Files Included
Hdata.csv: The original dataset containing raw data.
halu.ipynb: Jupyter Notebook file containing Python code for data cleaning.
HREad.md (this file): Provides an overview of the project, steps taken, and instructions for usage.

Author
## Halima

