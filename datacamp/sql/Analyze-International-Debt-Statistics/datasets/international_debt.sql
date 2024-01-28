-- Table: international_debt

CREATE TABLE international_debt
(
  country_name character varying(50),
  country_code character varying(50),
  indicator_name text,
  indicator_code text,
  debt numeric
);

-- Copy over data from CSV
\copy international_debt FROM 'international_debt.csv' DELIMITER ',' CSV HEADER;