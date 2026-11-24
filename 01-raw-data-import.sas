/*
  SAS Programming Foundations
  STP 315 — Spring 2022
  SAS1 Chapter 8: Reading Raw Data Files

  Portfolio transcription of coursework examples.
  The source data files are course-provided Orion sample files and are
  not included in this repository.

  Before running, define &path to the directory containing the data files:
      %let path=/your/local/path/to/Orion;
*/

/* 1. Reading a comma-delimited raw data file */

data work.newemployees;
    length First $ 12 Last $ 18 Title $ 25 Salary 8;
    infile "&path./newemps.csv" dlm=',';
    input First $ Last $ Title $ Salary;
run;

proc print data=work.newemployees;
run;


/* 2. Reading a space-delimited raw data file */

data work.qtrdonation;
    length IDNum $ 6 Qtr1 8 Qtr2 8 Qtr3 8 Qtr4 8;
    infile "&path./donation.dat";
    input IDNum $ Qtr1 Qtr2 Qtr3 Qtr4;
run;

proc print data=work.qtrdonation;
run;


/* 3. Reading a tab-delimited raw data file */

data work.managers2;
    length First Last $ 12 Title $ 25;
    infile "&path./managers2.dat" dlm='09'x;
    input ID First $ Last $ Gender $ Salary Title $;
    keep First Last Title;
run;

proc print data=work.managers2;
run;


/* 4. Reading nonstandard data from a comma-delimited raw data file */

data work.canada_customers;
    length First $ 20 Last $ 20 ID 8 Gender $ 1
           BirthDate 8 Age 8 AgeGroup $ 12;
    infile "&path./custca.csv" dlm=',';
    input First $ Last $ ID Gender $ BirthDate monyy8. Age AgeGroup $;
    format BirthDate monyy7.;
    drop ID Age;
run;

proc print data=work.canada_customers;
run;


/*
  The submitted coursework also lists these Chapter 8 topics:
  - Delimited raw data with nonstandard data values
  - In-stream delimited data
  - Comma-delimited files with missing values
  - Delimited files with missing values
  - Missing values and embedded delimiters

  Program text for those exercises was not present in the submitted
  document, so implementations have not been added here.
*/
