# Project_3_Team_1

Women's health encompasses a diverse array of physical, mental, and social well-being concerns unique to females. This includes maternal and reproductive health, which focuses on aspects such as pregnancy, childbirth, and reproductive choices. Maternal health emphasizes prenatal care, safe delivery practices, and postpartum support, aiming to reduce maternal and infant mortality rates and promote healthy pregnancies. Reproductive health further encompasses family planning and access to reproductive healthcare services, crucial for empowering women to make informed decisions about their reproductive futures. Addressing these multifaceted issues requires comprehensive healthcare strategies that recognize the intersection of biological factors, societal norms, and healthcare access, thereby promoting the overall well-being of women throughout their lives.

Main question: How does access to and satisfaction with modern family planning methods 
among married or in-union women of reproductive age, impact reproductive 
health outcomes and maternal well-being? 

Specific focus areas:
 - Mental health (psychological well-being such as depression, strees, anxiety)
 - Skilled birth attendance (count with doctors, nurses and midwives support) 
 - Postpartum support (health care for mothers within the first months)

Sub-questions to guide the analysis: 
1. Access to Family Planning: How does access to modern family planning methods vary across different 
regions and socioeconomic groups? 

2. Reproductive Health Outcomes: What is the correlation between access to modern family planning methods and 
adolescent birth rates?

3. Maternal Well-being: Are there correlations between family planning access and maternal healthcare-
seeking behavior, such as antenatal care attendance and skilled birth attendance?

Data Collection
- Sources: WHO datasets WHO Indicators.
- Types: CSV files.
- Size and Shape: Large datasets spanning various indicators of maternal and reproductive health.
Data Collection Challenges:
- Data normalization across different countries.
- Varying data collection periods requiring assumptions for standardization.

Overall Approach
* Problem Framing: Identifying the core questions and defining key indicators.
* Data Exploration: Understanding the datasets and identifying relevant variables.
* Data Cleaning: Handling missing values and ensuring consistency.
* Data Modeling: Using Python and libraries such as pandas, seaborn, Geopandas, matplotlib,webdriver and other Relevant and required libraries for analysis and visualization.
* Data Visualization: Creating informative visuals to convey findings effectively.

Time Allocation:
* Problem Framing: 20%
* Data Exploration: 10%
* Data Cleaning: 40%
* Data Modeling: 20%
* Data Visualization: 10%

Data Flow: Data sourced from WHO -> Processed in Jupyter Notebook -> Stored and retrieved from a SQL database.
* Schema Diagram: Detailed in the Engineering_ERD folder.

Tools Used:
Storage: SQL database for organized data storage and retrieval.
Processing: Jupyter Notebook (main_file.ipynb) for data manipulation and analysis.
Visualization: Matplotlib, Seaborn, Geopanda, webdriver for plotting graphs and charts.

Additional Tools:
* NumPy: For numerical operations.
* Pathlib: For file path manipulations.
* CSV and OS Libraries: For handling data files.

Analytical Use Cases
* Access Disparities: Analyzing regional and socioeconomic variations in access to family planning.
* Adolescent Birth Rates: Correlation between family planning access and adolescent birth rates.
* Maternal Healthcare Behavior: Link between family planning access and antenatal care or skilled birth attendance.

Demonstration
* Jupyter Notebook: Demonstrates data retrieval and visualization.
* Visuals: Includes Geograhical Interactive Maps(.HTML), bar charts, line graphs, and heatmaps to depict key findings. Visuals are included in the project report and presentation.

Assumptions:
* When the period of study was done between 2 years (i.e. 2022-2023), it is assumed that the results of that particular study corresponds to 12 months and it is a reflection of the latest year (2023).__
* The datasets were broken down in intervals of 3 years each starting in 2003 to 2023 to allow consistent analysis of data over time.
* The study was done in married and in-union women of reproductive age, which is assumed to be between 15-49 years.
* Assumed the same collecting data method accross countries.

Limitations:
* There are more indicators that could have been analyzed to contribute to the overall hypothesis. We focused on 4 key indicators due to time constrainsts.
* Period data was not standardized accross datasets. Some assumptions needed to be made to standardize it and make them fully comparable.

Ethical Considerations:
* Ensuring the confidentiality and ethical use of data.
* Addressing biases inherent in data collection methods.

Future Work Scope:
* Extended Analysis: Incorporate more indicators for a comprehensive view.
* Data Integration: Enhance the database with additional sources and real-time data.
* Interactive Dashboards: Develop more interactive visualization tools for dynamic data exploration.
* Please, refer to the word file to get the summary of the findings

Folder Structure:
* Output: Contains all exported datasets and analysis results and visual Files.
* Engineering_ERD: ERD for schema and SQL database export.
* Project_Analysis: Findings and summary documents.

How to Run:
Environment Setup: Ensure you have Python and Jupyter Notebook installed.
Dependencies: Install required libraries via pip: numpy, pandas, matplotlib, seaborn.
Run Notebook: Open main.ipynb in Jupyter Notebook and run the cells sequentially.

Presentation link : https://docs.google.com/presentation/d/1x9B9XUovqEVoICqrudJISOiVQhtrC1XmSFutZ8thbOo/edit#slide=id.gc6f919934_0_0

Sources:
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/married-or-in-union-women-of-reproductive-age-who-have-their-need-for-family-planning-satisfied-with-modern-methods-(-) 
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/adolescent-birth-rate-(per-1000-women-aged-15-19-years)
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/antenatal-care-coverage-at-least-four-visits
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/births-attended-by-skilled-health-personnel-(-) 
