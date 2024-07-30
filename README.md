# Irish Salary Survey Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Tools Used](#tools-used)
- [Data](#data)
- [Methodology](#methodology)
- [Analysis](#analysis)
- [Results](#results)
- [Visualizations](#visualizations)
- [Acknowledgments](#acknowledgments)

## Project Overview

This project was undertaken soon after I graduated and right before I started my first data analyst job. The project focuses on the analysis of an online survey of tech job salaries across Ireland/Northern Ireland. The objective was to get a deeper understanding of potential salary progression as a data analyst, while also seeing if there were any standout career paths that had higher financial payoffs.

## Tools Used
![SQL Server Badge](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=Microsoft-SQL-Server&logoColor=white)
![Excel Badge](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=Microsoft-Excel&logoColor=white)
![SSIS Badge](https://img.shields.io/badge/SSIS-003366?style=for-the-badge&logo=Microsoft&logoColor=white)
![Tableau Badge](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)
- **Excel**: For preliminary analysis
- **SSIS**: For ETL purposes
- **SQL**: For data cleaning, manipulation, and exploratory analysis
- **Tableau**: For data visualisation

## Data

Provide a description of the dataset(s) used, including sources, types of data, and any relevant details.

- **Source**: Public Online Survey ran at https://www.reddit.com/r/DevelEire/
- **Raw Data**: https://docs.google.com/spreadsheets/d/1BxAgFD-m-6UAo5gcxulmdFdKXywMk_jcb1v3FBEQ-t0/edit?gid=155183096#gid=155183096 - 
- **Description**: Tech Job Salaries (Ireland, N.Ireland, Other)
- **Size**: 1253 Rows, 35 Columns
- **Time period**: (July, 2024)

## Methodology

1. **Data Cleaning**:
   - Excel
       - Performed preliminary analysis on Excel to remove columns not relevant to my objective.
       - Removed any entries of unemployed people as most still had salaries entered which would skew the data.
   - SQL (SQL Server Management Studio)
       - Removed additional unememployed rows that were missed in initial screening. ![sql1](https://github.com/user-attachments/assets/65f25e5b-a09c-457c-8ce2-975d3e76e9e0)
2. **Data Transformation**:
   - SQL (SQL Server Management Studio)
       - Udpated total compensation column to a number instead of range and transformed data type to float.![image](https://github.com/user-attachments/assets/4330e367-e9e5-4200-a1c4-41c38ad94fd8)
3. **Data Analysis**: Discuss the analytical methods and tools used to analyze the data.
   - SQL (SQL Server Management Studio)
       - Performed some initial basic exploratory analysis to get understanding of data. ![image](https://github.com/user-attachments/assets/62e24d6a-ab11-4a3f-88f7-bf3162f95253)
       - 
## Visualizations

1. **Visualization 1**: ![Dashboard 1](link-to-screenshot-or-dashboard)
   - Description
2. **Visualization 2**: ![Dashboard 2](link-to-screenshot-or-dashboard)
   - Description

## Analysis

Provide detailed analysis, including any insights you discovered. Use bullet points or subheadings for clarity.

- **Descriptive Statistics**: Summarize the main statistical findings.
- **Trends and Patterns**: Describe any trends or patterns you identified in the data.

## Results

Summarize the main results of your analysis. Highlight key findings and their implications.

- **Key Finding 1**: Description
- **Key Finding 2**: Description
- **Key Finding 3**: Description

## Acknowledgments

Acknowledge any individuals or resources that helped you with the project.

- **Mentors/Colleagues**: Names
- **Resources**: Links to articles, documentation, etc.

## Contact

Feel free to contact me for any questions or collaborations:

- **Email**: [chrisryan@umail.ucc.ie](mailto:your-email@example.com)
- **LinkedIn**: [Your LinkedIn Profile](https://www.linkedin.com/in/christopher-ryan-8229a81b9/)
