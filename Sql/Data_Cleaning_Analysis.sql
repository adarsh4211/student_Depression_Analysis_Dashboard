create database [Tableau Project 1]
use [Tableau Project 1]

select * from [dbo].[Depression+Student+Dataset]



/*Modifying Gender Column*/

select Gender,count(*) from [dbo].[Depression+Student+Dataset]
group by Gender

-- updating Female as F and Male as M

update [dbo].[Depression+Student+Dataset]
set Gender = 'F' where Gender = 'Female'

update [dbo].[Depression+Student+Dataset]
set Gender = 'M' where Gender = 'Male'

-- Checking for Null in gender column

select * from [dbo].[Depression+Student+Dataset]
where Gender is Null

-- Checking for blank in gender column

select * from [dbo].[Depression+Student+Dataset]
where Gender = ''



/*Adding the Age Group Column*/

--It will count how many people of specific age

select age, count(*) [Count] from [dbo].[Depression+Student+Dataset]
group by age
order by age desc

-- Adding a new column

alter table [dbo].[Depression+Student+Dataset]
add Age_Group varchar(max)						-- Will add a new column with all null values

-- Adding Age Groups to the new column

update [dbo].[Depression+Student+Dataset]
set Age_Group = 
case 
when age between 18 and 25 then 'A1'
else case 
when age between 25 and 30 then 'A2'
else 'A3'
end end

-- count of the records for each of the distinct age group

select Age_group,count(*) from [dbo].[Depression+Student+Dataset]
group by Age_group



/*Column Distribution of Remaing Columns*/

--Show various columns present in the table

select * from INFORMATION_SCHEMA.columns where table_name
like 'Depression+Student+Dataset'

-- count of various other columns

select Academic_Pressure, count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

select Study_Satisfaction, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

select Sleep_Duration, count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

select Dietary_Habits, count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts, count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

select Financial_Stress, count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

select Family_History_of_Mental_Illness, count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select Depression, count(*) from [dbo].[Depression+Student+Dataset]
group by Depression



/*Adding Index Column and Updating Depression Column */

select * from [dbo].[Depression+Student+Dataset]

-- Adding Index column
alter table [dbo].[Depression+Student+Dataset]
add Index_column int identity(1,1)               -- identity(1,1) the value will start from 1 and for each new row 1 will be incremented

-- seting 0 as No and 1 as yes in Depression column
update [dbo].[Depression+Student+Dataset]
set Depression ='No' where Depression = '0' 

update [dbo].[Depression+Student+Dataset]
set Depression = 'Yes' where Depression = '1'

--checking datatype of Depression column

select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'Depression+Student+Dataset'   

-- first modifying datatype of Depression from bit to varchar and then run update statements
alter table [dbo].[Depression+Student+Dataset]
alter column Depression Varchar(max)