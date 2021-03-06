CREATE TABLE f_bde_ventes (
ticket VARCHAR(50),
tdate VARCHAR(50),
isbn VARCHAR(50),
mag VARCHAR(50)
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY nf26_data
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline
CHARACTERSET UTF8
BADFILE nf26p011_logs:'import.bad'
LOGFILE nf26p011_logs:'import.log'
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('Fantastic'))
REJECT LIMIT UNLIMITED;

SELECT count(*) from f_bde_ventes;
