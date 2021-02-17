--Show transaction date, first 20 characters of transaction description (change the column heading to "trans_desc") and amounts of all 'Credit' transactions done during June, 2010.

alter session set current_schema=bank;
SET heading OFF;
select trans_dt,substr(trans_desc,0,20),trans_amt 
from bank_transaction
where trans_type = 'CR' and trans_dt >= '01-JUNE-2010' and trans_dt <= '30-JUNE-2010';
