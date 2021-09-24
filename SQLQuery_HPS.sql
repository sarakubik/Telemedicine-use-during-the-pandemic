select * from wk_36
-- selects all columns

--renames columns to be more easily understandable
sp_rename 'wk_36.TELEHLTH', 'Telehealth', 'COLUMN'
sp_rename 'wk_36.TBIRTH_Year', 'Year_Born', 'COLUMN'
sp_rename 'wk_36.EST_ST', 'State', 'COLUMN'
sp_rename 'wk_36.WEEK', 'Week', 'COLUMN'

select Telehealth, Year_Born, State, Week from wk_36

-- deletes -99 and -88 values
DELETE FROM wk_36
WHERE Telehealth = -99;

DELETE FROM wk_36
WHERE Telehealth = -88;
	
-- add categorical values and create new columns
select * from wk_36
-- in Object Explorer, right click on your database and select 'Design', add a new
-- column at the bottom named 'State_Abr
UPDATE wk_36 SET State_Abr = State;
UPDATE wk_36 SET Telehealth_Cat = Telehealth;
select Week, Telehealth, Telehealth_Cat, Year_Born, State, State_Abr from wk_36

-- Now let's change Telehealth_Cat variables 1 = yes, 2 = no
UPDATE wk_36 
SET 
	Telehealth_Cat = 'Yes' 
	WHERE Telehealth = 1

UPDATE wk_36 
SET 
	Telehealth_Cat = 'No' 
	WHERE Telehealth = 2

-- Now let's change State numbers to abbreviations
-- based upon the codes here https://www.census.gov/library/reference/code-lists/ansi.html#par_textimage_3

UPDATE wk_36 SET State_Abr = 'AL' WHERE State = 1
UPDATE wk_36 SET State_Abr = 'AK' WHERE State = 2
UPDATE wk_36 SET State_Abr = 'AZ' WHERE State = 4
UPDATE wk_36 SET State_Abr = 'AR' WHERE State = 5
UPDATE wk_36 SET State_Abr = 'CA' WHERE State = 6
UPDATE wk_36 SET State_Abr = 'CO' WHERE State = 8
UPDATE wk_36 SET State_Abr = 'CT' WHERE State = 9
UPDATE wk_36 SET State_Abr = 'DE' WHERE State = 10
UPDATE wk_36 SET State_Abr = 'DC' WHERE State = 11
UPDATE wk_36 SET State_Abr = 'FL' WHERE State = 12
UPDATE wk_36 SET State_Abr = 'GA' WHERE State = 13
UPDATE wk_36 SET State_Abr = 'HI' WHERE State = 15
UPDATE wk_36 SET State_Abr = 'ID' WHERE State = 16
UPDATE wk_36 SET State_Abr = 'IL' WHERE State = 17
UPDATE wk_36 SET State_Abr = 'IN' WHERE State = 18
UPDATE wk_36 SET State_Abr = 'IA' WHERE State = 19
UPDATE wk_36 SET State_Abr = 'KS' WHERE State = 20
UPDATE wk_36 SET State_Abr = 'KY' WHERE State = 21
UPDATE wk_36 SET State_Abr = 'LA' WHERE State = 22
UPDATE wk_36 SET State_Abr = 'ME' WHERE State = 23
UPDATE wk_36 SET State_Abr = 'MD' WHERE State = 24
UPDATE wk_36 SET State_Abr = 'MA' WHERE State = 25
UPDATE wk_36 SET State_Abr = 'MI' WHERE State = 26
UPDATE wk_36 SET State_Abr = 'MN' WHERE State = 27
UPDATE wk_36 SET State_Abr = 'MS' WHERE State = 28
UPDATE wk_36 SET State_Abr = 'MO' WHERE State = 29
UPDATE wk_36 SET State_Abr = 'MT' WHERE State = 30
UPDATE wk_36 SET State_Abr = 'NE' WHERE State = 31
UPDATE wk_36 SET State_Abr = 'NV' WHERE State = 32
UPDATE wk_36 SET State_Abr = 'NH' WHERE State = 33
UPDATE wk_36 SET State_Abr = 'NJ' WHERE State = 34
UPDATE wk_36 SET State_Abr = 'NM' WHERE State = 35
UPDATE wk_36 SET State_Abr = 'NY' WHERE State = 36
UPDATE wk_36 SET State_Abr = 'NC' WHERE State = 37
UPDATE wk_36 SET State_Abr = 'ND' WHERE State = 38
UPDATE wk_36 SET State_Abr = 'OH' WHERE State = 39
UPDATE wk_36 SET State_Abr = 'OK' WHERE State = 40
UPDATE wk_36 SET State_Abr = 'OR' WHERE State = 41
UPDATE wk_36 SET State_Abr = 'PA' WHERE State = 42
UPDATE wk_36 SET State_Abr = 'RI' WHERE State = 44
UPDATE wk_36 SET State_Abr = 'SC' WHERE State = 45
UPDATE wk_36 SET State_Abr = 'SD' WHERE State = 46
UPDATE wk_36 SET State_Abr = 'TN' WHERE State = 47
UPDATE wk_36 SET State_Abr = 'TX' WHERE State = 48
UPDATE wk_36 SET State_Abr = 'UT' WHERE State = 49
UPDATE wk_36 SET State_Abr = 'VT' WHERE State = 50
UPDATE wk_36 SET State_Abr = 'VA' WHERE State = 51
UPDATE wk_36 SET State_Abr = 'WA' WHERE State = 53
UPDATE wk_36 SET State_Abr = 'WV' WHERE State = 54
UPDATE wk_36 SET State_Abr = 'WI' WHERE State = 55
UPDATE wk_36 SET State_Abr = 'WY' WHERE State = 56

-- Add values into Age of 2021 - Year_Born
UPDATE wk_36 SET Age = 2021 - Year_Born
select SCRAM, Week, Telehealth, Telehealth_Cat, Year_Born, Age, State, State_Abr from wk_36



-- //// Week 35 Table Manipulations ////
select * from wk_35
-- selects all columns

--renames columns to be more easily understandable
sp_rename 'wk_35.TELEHLTH', 'Telehealth', 'COLUMN'
sp_rename 'wk_35.TBIRTH_Year', 'Year_Born', 'COLUMN'
sp_rename 'wk_35.EST_ST', 'State', 'COLUMN'
sp_rename 'wk_35.WEEK', 'Week', 'COLUMN'

select Telehealth, Year_Born, State, Week from wk_35
DELETE FROM wk_35
WHERE Telehealth = -99;

DELETE FROM wk_35
WHERE Telehealth = -88;

-- in Object Explorer, right click on your database and select 'Design', add a new
-- column at the bottom named 'State_Abr
UPDATE wk_35 SET State_Abr = State;
UPDATE wk_35 SET Telehealth_Cat = Telehealth;
select Week, Telehealth, Telehealth_Cat, Year_Born, State, State_Abr from wk_35

-- Now let's change Telehealth_Cat variables 1 = yes, 2 = no
UPDATE wk_35 
SET 
	Telehealth_Cat = 'Yes' 
	WHERE Telehealth = 1

UPDATE wk_35 
SET 
	Telehealth_Cat = 'No' 
	WHERE Telehealth = 2

-- Now let's change State numbers to abbreviations
-- based upon the codes here https://www.census.gov/library/reference/code-lists/ansi.html#par_textimage_3

UPDATE wk_35 SET State_Abr = 'AL' WHERE State = 1
UPDATE wk_35 SET State_Abr = 'AK' WHERE State = 2
UPDATE wk_35 SET State_Abr = 'AZ' WHERE State = 4
UPDATE wk_35 SET State_Abr = 'AR' WHERE State = 5
UPDATE wk_35 SET State_Abr = 'CA' WHERE State = 6
UPDATE wk_35 SET State_Abr = 'CO' WHERE State = 8
UPDATE wk_35 SET State_Abr = 'CT' WHERE State = 9
UPDATE wk_35 SET State_Abr = 'DE' WHERE State = 10
UPDATE wk_35 SET State_Abr = 'DC' WHERE State = 11
UPDATE wk_35 SET State_Abr = 'FL' WHERE State = 12
UPDATE wk_35 SET State_Abr = 'GA' WHERE State = 13
UPDATE wk_35 SET State_Abr = 'HI' WHERE State = 15
UPDATE wk_35 SET State_Abr = 'ID' WHERE State = 16
UPDATE wk_35 SET State_Abr = 'IL' WHERE State = 17
UPDATE wk_35 SET State_Abr = 'IN' WHERE State = 18
UPDATE wk_35 SET State_Abr = 'IA' WHERE State = 19
UPDATE wk_35 SET State_Abr = 'KS' WHERE State = 20
UPDATE wk_35 SET State_Abr = 'KY' WHERE State = 21
UPDATE wk_35 SET State_Abr = 'LA' WHERE State = 22
UPDATE wk_35 SET State_Abr = 'ME' WHERE State = 23
UPDATE wk_35 SET State_Abr = 'MD' WHERE State = 24
UPDATE wk_35 SET State_Abr = 'MA' WHERE State = 25
UPDATE wk_35 SET State_Abr = 'MI' WHERE State = 26
UPDATE wk_35 SET State_Abr = 'MN' WHERE State = 27
UPDATE wk_35 SET State_Abr = 'MS' WHERE State = 28
UPDATE wk_35 SET State_Abr = 'MO' WHERE State = 29
UPDATE wk_35 SET State_Abr = 'MT' WHERE State = 30
UPDATE wk_35 SET State_Abr = 'NE' WHERE State = 31
UPDATE wk_35 SET State_Abr = 'NV' WHERE State = 32
UPDATE wk_35 SET State_Abr = 'NH' WHERE State = 33
UPDATE wk_35 SET State_Abr = 'NJ' WHERE State = 34
UPDATE wk_35 SET State_Abr = 'NM' WHERE State = 35
UPDATE wk_35 SET State_Abr = 'NY' WHERE State = 36
UPDATE wk_35 SET State_Abr = 'NC' WHERE State = 37
UPDATE wk_35 SET State_Abr = 'ND' WHERE State = 38
UPDATE wk_35 SET State_Abr = 'OH' WHERE State = 39
UPDATE wk_35 SET State_Abr = 'OK' WHERE State = 40
UPDATE wk_35 SET State_Abr = 'OR' WHERE State = 41
UPDATE wk_35 SET State_Abr = 'PA' WHERE State = 42
UPDATE wk_35 SET State_Abr = 'RI' WHERE State = 44
UPDATE wk_35 SET State_Abr = 'SC' WHERE State = 45
UPDATE wk_35 SET State_Abr = 'SD' WHERE State = 46
UPDATE wk_35 SET State_Abr = 'TN' WHERE State = 47
UPDATE wk_35 SET State_Abr = 'TX' WHERE State = 48
UPDATE wk_35 SET State_Abr = 'UT' WHERE State = 49
UPDATE wk_35 SET State_Abr = 'VT' WHERE State = 50
UPDATE wk_35 SET State_Abr = 'VA' WHERE State = 51
UPDATE wk_35 SET State_Abr = 'WA' WHERE State = 53
UPDATE wk_35 SET State_Abr = 'WV' WHERE State = 54
UPDATE wk_35 SET State_Abr = 'WI' WHERE State = 55
UPDATE wk_35 SET State_Abr = 'WY' WHERE State = 56

-- Add values into Age of 2021 - Year_Born
UPDATE wk_35 SET Age = 2021 - Year_Born
select SCRAM, Week, Telehealth, Telehealth_Cat, Year_Born, Age, State, State_Abr from wk_35



-- //// Week 34 Table Manipulations ////

select * from wk_34
-- selects all columns

--renames columns to be more easily understandable
sp_rename 'wk_34.TELEHLTH', 'Telehealth', 'COLUMN'
sp_rename 'wk_34.TBIRTH_Year', 'Year_Born', 'COLUMN'
sp_rename 'wk_34.EST_ST', 'State', 'COLUMN'
sp_rename 'wk_34.WEEK', 'Week', 'COLUMN'

select Telehealth, Year_Born, State, Week from wk_34
DELETE FROM wk_34
WHERE Telehealth = -99;

DELETE FROM wk_34
WHERE Telehealth = -88;

-- in Object Explorer, right click on your database and select 'Design', add a new
-- column at the bottom named 'State_Abr', 'Telehealth_Cat'
UPDATE wk_34 SET State_Abr = State;
select Week, Telehealth, Year_Born, State, State_Abr from wk_34
UPDATE wk_34 SET Telehealth_Cat = Telehealth;
select Week, Telehealth, Telehealth_Cat, Year_Born, State, State_Abr from wk_34


-- Now let's change Telehealth_Cat variables 1 = yes, 2 = no
UPDATE wk_34 
SET 
	Telehealth_Cat = 'Yes' 
	WHERE Telehealth = 1

UPDATE wk_34 
SET 
	Telehealth_Cat = 'No' 
	WHERE Telehealth = 2

-- Now let's change State numbers to abbreviations
-- based upon the codes here https://www.census.gov/library/reference/code-lists/ansi.html#par_textimage_3

UPDATE wk_34 SET State_Abr = 'AL' WHERE State = 1
UPDATE wk_34 SET State_Abr = 'AK' WHERE State = 2
UPDATE wk_34 SET State_Abr = 'AZ' WHERE State = 4
UPDATE wk_34 SET State_Abr = 'AR' WHERE State = 5
UPDATE wk_34 SET State_Abr = 'CA' WHERE State = 6
UPDATE wk_34 SET State_Abr = 'CO' WHERE State = 8
UPDATE wk_34 SET State_Abr = 'CT' WHERE State = 9
UPDATE wk_34 SET State_Abr = 'DE' WHERE State = 10
UPDATE wk_34 SET State_Abr = 'DC' WHERE State = 11
UPDATE wk_34 SET State_Abr = 'FL' WHERE State = 12
UPDATE wk_34 SET State_Abr = 'GA' WHERE State = 13
UPDATE wk_34 SET State_Abr = 'HI' WHERE State = 15
UPDATE wk_34 SET State_Abr = 'ID' WHERE State = 16
UPDATE wk_34 SET State_Abr = 'IL' WHERE State = 17
UPDATE wk_34 SET State_Abr = 'IN' WHERE State = 18
UPDATE wk_34 SET State_Abr = 'IA' WHERE State = 19
UPDATE wk_34 SET State_Abr = 'KS' WHERE State = 20
UPDATE wk_34 SET State_Abr = 'KY' WHERE State = 21
UPDATE wk_34 SET State_Abr = 'LA' WHERE State = 22
UPDATE wk_34 SET State_Abr = 'ME' WHERE State = 23
UPDATE wk_34 SET State_Abr = 'MD' WHERE State = 24
UPDATE wk_34 SET State_Abr = 'MA' WHERE State = 25
UPDATE wk_34 SET State_Abr = 'MI' WHERE State = 26
UPDATE wk_34 SET State_Abr = 'MN' WHERE State = 27
UPDATE wk_34 SET State_Abr = 'MS' WHERE State = 28
UPDATE wk_34 SET State_Abr = 'MO' WHERE State = 29
UPDATE wk_34 SET State_Abr = 'MT' WHERE State = 30
UPDATE wk_34 SET State_Abr = 'NE' WHERE State = 31
UPDATE wk_34 SET State_Abr = 'NV' WHERE State = 32
UPDATE wk_34 SET State_Abr = 'NH' WHERE State = 33
UPDATE wk_34 SET State_Abr = 'NJ' WHERE State = 34
UPDATE wk_34 SET State_Abr = 'NM' WHERE State = 35
UPDATE wk_34 SET State_Abr = 'NY' WHERE State = 36
UPDATE wk_34 SET State_Abr = 'NC' WHERE State = 37
UPDATE wk_34 SET State_Abr = 'ND' WHERE State = 38
UPDATE wk_34 SET State_Abr = 'OH' WHERE State = 39
UPDATE wk_34 SET State_Abr = 'OK' WHERE State = 40
UPDATE wk_34 SET State_Abr = 'OR' WHERE State = 41
UPDATE wk_34 SET State_Abr = 'PA' WHERE State = 42
UPDATE wk_34 SET State_Abr = 'RI' WHERE State = 44
UPDATE wk_34 SET State_Abr = 'SC' WHERE State = 45
UPDATE wk_34 SET State_Abr = 'SD' WHERE State = 46
UPDATE wk_34 SET State_Abr = 'TN' WHERE State = 47
UPDATE wk_34 SET State_Abr = 'TX' WHERE State = 48
UPDATE wk_34 SET State_Abr = 'UT' WHERE State = 49
UPDATE wk_34 SET State_Abr = 'VT' WHERE State = 50
UPDATE wk_34 SET State_Abr = 'VA' WHERE State = 51
UPDATE wk_34 SET State_Abr = 'WA' WHERE State = 53
UPDATE wk_34 SET State_Abr = 'WV' WHERE State = 54
UPDATE wk_34 SET State_Abr = 'WI' WHERE State = 55
UPDATE wk_34 SET State_Abr = 'WY' WHERE State = 56

UPDATE wk_34 SET Age = 2021 - Year_Born
select SCRAM, Week, Telehealth, Telehealth_Cat, Year_Born, Age, State, State_Abr from wk_34