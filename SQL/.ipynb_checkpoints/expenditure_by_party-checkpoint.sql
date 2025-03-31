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
