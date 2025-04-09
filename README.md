# 368-research-proj

Below we list the structure of our repository, indicating how to run our code and the purpose of each file. We also restate our research questions and explicitly list the SQL queries we used.

## Research Questions

1. With what level of importance do the different provincial government parties give to healthcare spending and is there one party that clearly cares more about public healthcare?

2. Which province has the most efficient healthcare spending?

## SQL queries and creating the csv to use for further analysis steps

1. For research question 1 we used the following SQL query found in SQL/expenditure_by_party.sql:

CREATE TABLE expenditure_by_party AS
SELECT 
    pg.province, 
    pg.year, 
    pg.party, 
    pec.percent_expenditure_change
FROM provincial_governments pg
JOIN percent_expenditure_change pec
    ON pg.year = pec.year AND pg.province = pec.province
WHERE pg.province IN ('Ontario', 'Alberta', 'BritishColumbia');

2. For research question 2 the following SQL queries from SQL/survey_analysis.sql were used:
    
CREATE TABLE survey_analysis AS
SELECT
    province,
    per_cap_spend,
    coordination,
    waiting_time,
    care_access,
    provider_access,
    unmet_needs
FROM survey_expenditure;

UPDATE survey_analysis
SET coordination = 1 - ((coordination-1)/4);

UPDATE survey_analysis
SET waiting_time = 1 - ((waiting_time-1)/6);

UPDATE survey_analysis
SET care_access = 2 - care_access;

UPDATE survey_analysis
SET provider_access = 2 - provider_access;

UPDATE survey_analysis
SET unmet_needs = unmet_needs - 1;

3. To download the data from the server we run the code found in SQL/download_RQ1.sql to produce a formatted csv from the query. The same was done for research question 2 using the identically formatted SQL/download_RQ2.sql file

4. We then scp the file to Data/Clean/from_sql/expenditure_by_party.csv and use this in our analysis. The same was done for the second research question, creating the file survey_analysis.csv

## Navigation and Important Files

### Our report

1. Our report can be found within the file final_report.ipynb in the root directory of our repository. This file is our final report that we submit.

### SQL Directory

1. Within the SQL/ directory healthcare.sql contains our create table and insert statements used to establish and populate all tables on the sql database.

2. Within the SQL/ directory the file expenditure_by_party.sql contains the query to create the table used to answer research question 1. It joins the provincial_governments and health_expenditure tables on the primary key (province, year) and excludes Quebec as a province for further analysis. The survey_analysis.sql file in the same directory takes the data used for exploratory data analysis that was uploaded to SQL and filters out unnecessary columns and normalizes all the values from the health survey by using a formula that subtracts the average survey response value from the lowest possible value and divides that by the highest possible value to create a percentage. This percentage is then flipped by subtracting from one for questions where higher response values are associated with negative outcomes.

### Python Directory

1. Within the Python/ directory pull_clean_eda.ipynb contains a walkthrough of the code to pull, clean and perform eda on our analysis. It is practically our midway checkpoint.

2. Within Python/ directory sql_insert.ipynb contains the code to create the insert statements we used in healthcare.sql.

3. Within Python/ directory analysis_RQ1.ipynb contains code and explanations relating to research question 1. Specifically it performs all the hypothesis testing and figure generation that is referenced in the results and discussion section relating to research question 1. The file analysis_RQ2.ipynb contains the code used to calculate the final efficiency metric from the data downloaded from the SQL server. It also contains the code used to create all graphs used for research question 2 in the final report as well as the rationale behind the creation of those graphs. 

### Environment.yml

In the root of our repository there is an environment.yml file which creates the environment that loads all necessary libraries to be able to run all the code in our repository. To recreate this environment simply run the commands below in your local terminal:

1. conda env create -f environment.yml

2. conda activate cpsc368

3. jupyter lab final_report.ipynb
