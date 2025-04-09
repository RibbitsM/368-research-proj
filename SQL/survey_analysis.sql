DROP TABLE survey_analysis;

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