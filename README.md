Student Depression Analysis Dashboard

Dashboard Link
https://public.tableau.com/app/profile/adarsh.prajapati5912/viz/StudentDepressionAnalysis_17732306495530/StudentCountAnalysis?publish=yes

Problem Statement\
This dashboard is created to analyze factors that affect student depression based on various parameters such as academic pressure, satisfaction level of students with their studies, hours of sleep, dietary habits, financial problems, and family history of mental illness.

The main aim of this analysis is to identify patterns of student depression and determine key factors that lead to mental illness in students.

Steps Followed
Step 1
The dataset is loaded into SQL Server Management Studio to perform exploratory data analysis and data preprocessing.

Step 2
Analysis of the dataset is done using SQL queries to understand the dataset and perform exploratory data analysis.

Step 3
Standardization of gender is done by changing Female to F and Male to M in the dataset to perform further operations on it.

Step 4
Blank values are checked in important columns of the dataset to perform further operations on it.

Step 5
A new column Age_Group has been created to classify the data based on age groups to improve data analysis.

SQL used:

CASE 
WHEN age BETWEEN 18 AND 25 THEN 'A1'
WHEN age BETWEEN 25 AND 30 THEN 'A2'
ELSE 'A3'
END
Step 6
A distribution analysis of critical data has been carried out on:

Academic Pressure
Study Satisfaction
Sleep Duration
Dietary Habits
Suicidal Thoughts
Study Hours
Financial Stress
Family History of Mental Illness
Depression
Step 7
An Index Column has been added to each data set using SQL identity to uniquely identify each data set.

Step 8
A standardization of data has been carried out on the depression variable by replacing binary data with:

0 → No
1 → Yes
Step 9
The cleaned data set has been linked to Tableau Desktop to create various data visualizations.

Step 10
Various data visualizations have been created to identify relationships between various aspects of a student’s lifestyle and depression.

Insights
Based on the analysis dashboard, it is possible to make the following key observations.

[1] Academic Pressure
Levels of academic pressure are related to increased depression levels.

[2] Sleep Duration
Students with lower sleep duration are more likely to have increased depression levels compared to students with healthy sleep patterns.

[3] Financial Stress
Financial stress is another major factor that is related to increased depression levels.

[4] Study Satisfaction
Students with lower levels of study satisfaction are more likely to have increased depression levels.

[5] Family History of Mental Illness
Students with a family history of mental illness are more likely to have increased depression levels.

Technologies Used
SQL Server – Data cleaning and data preprocessing
Tableau Desktop – Data visualization
Tableau Public – Data visualization and sharing

Dataset
This data set includes various attributes related to students' lifestyles and depression levels. The data includes:

Gender
Age
Academic Pressure
Study Satisfaction
Sleep Duration
Dietary Habits
Study Hours
Financial Stress
Family History of Mental Illness
Depression Indicator

Conclusion
This project shows how data analysis and visualization techniques can be used to derive valuable insights into student mental health. By determining key factors related to depression, this analysis reveals areas where interventions and support structures may help to address student mental health.

Author
Adarsh Prajapati B.Sc. (Hons) Computer Science – University of Delhi
