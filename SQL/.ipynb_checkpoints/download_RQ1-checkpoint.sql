SET ECHO OFF
SET TERMOUT OFF
SET FEEDBACK OFF
SET HEADING OFF
SET PAGESIZE 0
SET LINESIZE 1000
SET TRIMSPOOL ON
SET VERIFY OFF

SPOOL expenditure_by_party.csv
SELECT 'province,year,party,percent_expenditure_change' FROM DUAL;
SELECT province || ',' || year || ',' || party || ',' || percent_expenditure_change FROM expenditure_by_party;
SPOOL OFF
SET TERMOUT ON