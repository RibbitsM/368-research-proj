drop table provincial_governments;
drop table percent_expenditure_change;
drop table survey_expenditure;

CREATE TABLE provincial_governments (
    year INT,
    province VARCHAR(50),
    party VARCHAR(50),
    PRIMARY KEY (year, province)
);

CREATE TABLE percent_expenditure_change (
    year INT,
    province VARCHAR(50),
    percent_expenditure_change NUMERIC(5,2),
    PRIMARY KEY (year, province),
    FOREIGN KEY (year, province)
        REFERENCES provincial_governments(year, province)
);

CREATE TABLE survey_expenditure (
    idx int,
    province VARCHAR(15),
    per_cap_spend FLOAT(10),
    coordination FLOAT(5),
    waiting_time FLOAT(5),
    care_access FLOAT(5),
    provider_access FLOAT(5),
    unmet_needs FLOAT(5),
    total_spend FLOAT(10),
    year int,
    PRIMARY KEY (province)
);


insert into provincial_governments 
values('2000', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2001', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2002', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2003', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2004', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2005', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2006', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2007', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2008', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2009', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2010', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2011', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2012', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2013', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2014', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2015', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2016', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2017', 'BritishColumbia', 'Liberal Party');

insert into provincial_governments 
values('2018', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2019', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2020', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2021', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2022', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2023', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2024', 'BritishColumbia', 'NDP');

insert into provincial_governments 
values('2000', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2001', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2002', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2003', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2004', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2005', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2006', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2007', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2008', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2009', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2010', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2011', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2012', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2013', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2014', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2015', 'Alberta', 'NDP');

insert into provincial_governments 
values('2016', 'Alberta', 'NDP');

insert into provincial_governments 
values('2017', 'Alberta', 'NDP');

insert into provincial_governments 
values('2018', 'Alberta', 'NDP');

insert into provincial_governments 
values('2019', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2020', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2021', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2022', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2023', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2024', 'Alberta', 'Conservative Party');

insert into provincial_governments 
values('2000', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2001', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2002', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2003', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2004', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2005', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2006', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2007', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2008', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2009', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2010', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2011', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2012', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2013', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2014', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2015', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2016', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2017', 'Ontario', 'Liberal Party');

insert into provincial_governments 
values('2018', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2019', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2020', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2021', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2022', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2023', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2024', 'Ontario', 'Conservative Party');

insert into provincial_governments 
values('2000', 'Quebec', 'Parti Quebecois');

insert into provincial_governments 
values('2001', 'Quebec', 'Parti Quebecois');

insert into provincial_governments 
values('2002', 'Quebec', 'Parti Quebecois');

insert into provincial_governments 
values('2003', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2004', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2005', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2006', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2007', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2008', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2009', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2010', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2011', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2012', 'Quebec', 'Parti Quebecois');

insert into provincial_governments 
values('2013', 'Quebec', 'Parti Quebecois');

insert into provincial_governments 
values('2014', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2015', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2016', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2017', 'Quebec', 'Liberal Party');

insert into provincial_governments 
values('2018', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2019', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2020', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2021', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2022', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2023', 'Quebec', 'Coalition Avenir Quebec');

insert into provincial_governments 
values('2024', 'Quebec', 'Coalition Avenir Quebec');


insert into percent_expenditure_change 
values('2000', 'BritishColumbia', '9.2');

insert into percent_expenditure_change 
values('2001', 'BritishColumbia', '10.4');

insert into percent_expenditure_change 
values('2002', 'BritishColumbia', '6.4');

insert into percent_expenditure_change 
values('2003', 'BritishColumbia', '3.9');

insert into percent_expenditure_change 
values('2004', 'BritishColumbia', '2.2');

insert into percent_expenditure_change 
values('2005', 'BritishColumbia', '6.4');

insert into percent_expenditure_change 
values('2006', 'BritishColumbia', '4.3');

insert into percent_expenditure_change 
values('2007', 'BritishColumbia', '7.5');

insert into percent_expenditure_change 
values('2008', 'BritishColumbia', '6.5');

insert into percent_expenditure_change 
values('2009', 'BritishColumbia', '4.4');

insert into percent_expenditure_change 
values('2010', 'BritishColumbia', '4.9');

insert into percent_expenditure_change 
values('2011', 'BritishColumbia', '3.6');

insert into percent_expenditure_change 
values('2012', 'BritishColumbia', '6.5');

insert into percent_expenditure_change 
values('2013', 'BritishColumbia', '2.2');

insert into percent_expenditure_change 
values('2014', 'BritishColumbia', '3.5');

insert into percent_expenditure_change 
values('2015', 'BritishColumbia', '3.7');

insert into percent_expenditure_change 
values('2016', 'BritishColumbia', '4.3');

insert into percent_expenditure_change 
values('2017', 'BritishColumbia', '3.6');

insert into percent_expenditure_change 
values('2018', 'BritishColumbia', '4.3');

insert into percent_expenditure_change 
values('2019', 'BritishColumbia', '6.2');

insert into percent_expenditure_change 
values('2020', 'BritishColumbia', '12.5');

insert into percent_expenditure_change 
values('2021', 'BritishColumbia', '10.4');

insert into percent_expenditure_change 
values('2022', 'BritishColumbia', '5.1');

insert into percent_expenditure_change 
values('2023', 'BritishColumbia', '8.9');

insert into percent_expenditure_change 
values('2024', 'BritishColumbia', '12.0');

insert into percent_expenditure_change 
values('2000', 'Alberta', '10.2');

insert into percent_expenditure_change 
values('2001', 'Alberta', '13.2');

insert into percent_expenditure_change 
values('2002', 'Alberta', '9.9');

insert into percent_expenditure_change 
values('2003', 'Alberta', '7.2');

insert into percent_expenditure_change 
values('2004', 'Alberta', '9.9');

insert into percent_expenditure_change 
values('2005', 'Alberta', '11.9');

insert into percent_expenditure_change 
values('2006', 'Alberta', '10.4');

insert into percent_expenditure_change 
values('2007', 'Alberta', '12.8');

insert into percent_expenditure_change 
values('2008', 'Alberta', '8.2');

insert into percent_expenditure_change 
values('2009', 'Alberta', '6.2');

insert into percent_expenditure_change 
values('2010', 'Alberta', '12.2');

insert into percent_expenditure_change 
values('2011', 'Alberta', '3.4');

insert into percent_expenditure_change 
values('2012', 'Alberta', '4.8');

insert into percent_expenditure_change 
values('2013', 'Alberta', '4.1');

insert into percent_expenditure_change 
values('2014', 'Alberta', '3.7');

insert into percent_expenditure_change 
values('2015', 'Alberta', '3.9');

insert into percent_expenditure_change 
values('2016', 'Alberta', '4.1');

insert into percent_expenditure_change 
values('2017', 'Alberta', '4.0');

insert into percent_expenditure_change 
values('2018', 'Alberta', '3.3');

insert into percent_expenditure_change 
values('2019', 'Alberta', '1.8');

insert into percent_expenditure_change 
values('2020', 'Alberta', '6.1');

insert into percent_expenditure_change 
values('2021', 'Alberta', '4.3');

insert into percent_expenditure_change 
values('2022', 'Alberta', '3.4');

insert into percent_expenditure_change 
values('2023', 'Alberta', '6.9');

insert into percent_expenditure_change 
values('2024', 'Alberta', '5.0');

insert into percent_expenditure_change 
values('2000', 'Ontario', '10.9');

insert into percent_expenditure_change 
values('2001', 'Ontario', '5.5');

insert into percent_expenditure_change 
values('2002', 'Ontario', '7.9');

insert into percent_expenditure_change 
values('2003', 'Ontario', '11.5');

insert into percent_expenditure_change 
values('2004', 'Ontario', '7.5');

insert into percent_expenditure_change 
values('2005', 'Ontario', '6.9');

insert into percent_expenditure_change 
values('2006', 'Ontario', '6.1');

insert into percent_expenditure_change 
values('2007', 'Ontario', '9.1');

insert into percent_expenditure_change 
values('2008', 'Ontario', '5.3');

insert into percent_expenditure_change 
values('2009', 'Ontario', '6.4');

insert into percent_expenditure_change 
values('2010', 'Ontario', '4.8');

insert into percent_expenditure_change 
values('2011', 'Ontario', '3.3');

insert into percent_expenditure_change 
values('2012', 'Ontario', '4.7');

insert into percent_expenditure_change 
values('2013', 'Ontario', '2.2');

insert into percent_expenditure_change 
values('2014', 'Ontario', '2.8');

insert into percent_expenditure_change 
values('2015', 'Ontario', '2.8');

insert into percent_expenditure_change 
values('2016', 'Ontario', '2.2');

insert into percent_expenditure_change 
values('2017', 'Ontario', '3.3');

insert into percent_expenditure_change 
values('2018', 'Ontario', '4.1');

insert into percent_expenditure_change 
values('2019', 'Ontario', '3.9');

insert into percent_expenditure_change 
values('2020', 'Ontario', '13.8');

insert into percent_expenditure_change 
values('2021', 'Ontario', '7.5');

insert into percent_expenditure_change 
values('2022', 'Ontario', '3.0');

insert into percent_expenditure_change 
values('2023', 'Ontario', '2.1');

insert into percent_expenditure_change 
values('2024', 'Ontario', '4.6');

insert into percent_expenditure_change 
values('2000', 'Quebec', '7.3');

insert into percent_expenditure_change 
values('2001', 'Quebec', '7.1');

insert into percent_expenditure_change 
values('2002', 'Quebec', '5.3');

insert into percent_expenditure_change 
values('2003', 'Quebec', '4.9');

insert into percent_expenditure_change 
values('2004', 'Quebec', '6.2');

insert into percent_expenditure_change 
values('2005', 'Quebec', '5.2');

insert into percent_expenditure_change 
values('2006', 'Quebec', '7.2');

insert into percent_expenditure_change 
values('2007', 'Quebec', '8.7');

insert into percent_expenditure_change 
values('2008', 'Quebec', '4.8');

insert into percent_expenditure_change 
values('2009', 'Quebec', '7.4');

insert into percent_expenditure_change 
values('2010', 'Quebec', '4.6');

insert into percent_expenditure_change 
values('2011', 'Quebec', '4.2');

insert into percent_expenditure_change 
values('2012', 'Quebec', '2.6');

insert into percent_expenditure_change 
values('2013', 'Quebec', '4.2');

insert into percent_expenditure_change 
values('2014', 'Quebec', '2.3');

insert into percent_expenditure_change 
values('2015', 'Quebec', '9.5');

insert into percent_expenditure_change 
values('2016', 'Quebec', '1.2');

insert into percent_expenditure_change 
values('2017', 'Quebec', '4.8');

insert into percent_expenditure_change 
values('2018', 'Quebec', '6.0');

insert into percent_expenditure_change 
values('2019', 'Quebec', '5.3');

insert into percent_expenditure_change 
values('2020', 'Quebec', '21.2');

insert into percent_expenditure_change 
values('2021', 'Quebec', '8.7');

insert into percent_expenditure_change 
values('2022', 'Quebec', '0.0');

insert into percent_expenditure_change 
values('2023', 'Quebec', '2.6');

insert into percent_expenditure_change 
values('2024', 'Quebec', '3.4');


insert into survey_expenditure 
values('0', 'Alberta', '5317.51', '2.682', '3.004', '1.096', '1.127', NULL, '23301.65', '2019');

insert into survey_expenditure 
values('1', 'BritishColumbia', '4762.885', '2.832', '3.243', '1.105', '1.151', '1.945', '24506.35', '2019');

insert into survey_expenditure 
values('2', 'Man.', '5021.065', '2.598', '3.24', '1.103', '1.112', '1.966', '6905.35', '2019');

insert into survey_expenditure 
values('3', 'N.B.', '4593.585', '2.316', '3.931', '1.074', '1.072', '1.962', '3585.1', '2019');

insert into survey_expenditure 
values('4', 'N.L.', '6319.605', '2.293', '3.606', '1.051', '1.105', '1.965', '3332.1', '2019');

insert into survey_expenditure 
values('5', 'N.S.', '5121.23', '2.5', '4.011', '1.092', '1.113', '1.935', '5032.8', '2019');

insert into survey_expenditure 
values('6', 'Ontario', '4610.65', '2.65', '3.164', '1.073', '1.087', '1.952', '67652.75', '2019');

insert into survey_expenditure 
values('7', 'P.E.I.', '5101.495', '2.271', '3.336', '1.071', '1.09', NULL, '803.55', '2019');

insert into survey_expenditure 
values('8', 'Quebec', '5037.435', '2.771', '3.809', '1.151', '1.17', '1.953', '42920.3', '2019');

insert into survey_expenditure 
values('9', 'Sask.', '5198.73', '2.542', '2.977', '1.093', '1.125', NULL, '6060.95', '2019');
