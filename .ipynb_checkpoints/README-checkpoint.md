# 368-research-proj

Below we list the structure of our repository, indicating how to run our code and the purpose of each file. We also restate our research questions and explicitely list the SQL queries we used.

## Research Questions

1. With what level of importance do the different provincial government parties give to healthcare spending and is there one party that clearly cares more about public healthcare?

2. Which province has the most efficient healthcare spending?

## SQL Queries

For research question 1 we used the following SQL query:

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

## Navigation and Important Files

### Our report

1. Our report can be found within the file final_report.ipynb in the doot directory of our repository. This file is our final report that we submit.

### SQL Directory

1. Within the SQL/ directory healthcare.sql contains our create table and insert statements used to establish and populate all tables on the sql database.

2. Within the SQL/ directory the file expenditure_by_party.sql contains the query to create the table used to answer research question 1. It joins the provincial_governments and health_expenditure tables on the primary key (province, year) and excludes Quebec as a province for further analysis.

### Python Directory

1. Within the Python/ directory pull_clean_eda.ipynb contains a walkthrough of the code to pull, clean and perform eda on our analysis. It is practically our midway checkpoint.

2. Within Python/ directory sql_insert.ipynb contains the code to create the insert statements we used in healthcare.sql.

3. Within Python/ directory analysis_RQ1.ipynb contains code and explanations relating to research question 1. Specifically it performs all the hypothesis testing and figure generation that is referenced in the results and discussion section relating to research question 1.

### Environment.yml

In the root of our repository there is an environment.yml file which creates the environment that loads all necessary librairies to be able to run all the code in our repository. To recreate this environent simply run the commands below in your local terminal:

1. conda env create -f environment.yml

2. conda activate cpsc368
