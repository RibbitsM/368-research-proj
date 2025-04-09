SET ECHO OFF
SET TERMOUT OFF
SET FEEDBACK OFF
SET HEADING OFF
SET PAGESIZE 0
SET LINESIZE 1000
SET TRIMSPOOL ON
SET VERIFY OFF

SPOOL survey_analysis.csv
SELECT 'province,per_cap_spend,coordination,waiting_time,care_access,provider_access,unmet_needs' FROM DUAL;
SELECT province || ',' || per_cap_spend || ',' || coordination || ',' || waiting_time || ',' || care_access || ',' || provider_access || ',' || unmet_needs FROM survey_analysis;
SPOOL OFF
SET TERMOUT ON