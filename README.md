#Crowdfunding ETL Project
##Project Overview
This project involved the creation of an ETL (Extract, Transform, Load) pipeline to process crowdfunding data from Excel files and load the transformed data into a PostgreSQL database. Working collaboratively, the team applied Python, Pandas, and regular expressions to extract and transform the data, and created multiple CSV files for loading into the database.

##Team Members
Member 1: [Mark]
Member 2: [Jonas]
Files Included
crowdfunding.xlsx: Contains data on crowdfunding campaigns.
contacts.xlsx: Contains data on campaign contacts.
category.csv: Contains transformed category data.
subcategory.csv: Contains transformed subcategory data.
campaign.csv: Contains transformed campaign data.
contacts.csv: Contains transformed contact data.
Workflow Summary
Project Setup
One member of the team set up the repository named Crowdfunding_ETL, added the necessary files (ETL_Mini_Project_starter_code.ipynb, crowdfunding.xlsx, contacts.xlsx), and shared access with the partner.
After initial setup, both members cloned the repository locally to begin their individual contributions.
Work Breakdown
Mark:

Extract and Transform the Category Data

Created the category_id and category columns.
Ensured the category data was unique and exported it as category.csv.
Extract and Transform the Subcategory Data

Created the subcategory_id and subcategory columns.
Ensured the subcategory data was unique and exported it as subcategory.csv.
Jonas:

Extract and Transform the Campaign Data

Extracted relevant columns such as cf_id, contact_id, company_name, and others.
Converted necessary columns such as goal and pledged to float.
Renamed the blurb column to description.
Converted the launched_at and deadline columns to datetime format.
Merged category_id and subcategory_id with the campaign DataFrame.
Exported the transformed campaign data as campaign.csv.
Extract and Transform the Contacts Data

Used regular expressions to extract contact_id, name, and email.
Split the name column into first_name and last_name.
Cleaned and exported the contact data as contacts.csv.
Consolidation and Review
After each member completed their respective parts, they:

Pushed the changes to the GitHub repository.
Merged the individual work back into a unified Jupyter notebook (ETL_Mini_Project_final.ipynb), consolidating all the steps for a complete ETL process.
Conducted final testing and review to ensure consistency across all data transformations and outputs.
ERD (Entity-Relationship Diagram)
The team created an ERD using the extracted and transformed data:

Campaign Table: Linked with Contacts (via contact_id), Category (via category_id), and Subcategory (via subcategory_id).
Database Setup
After finalizing the CSV files (category.csv, subcategory.csv, campaign.csv, and contacts.csv), the team sketched the ERD.
Created the table schema using PostgreSQL and saved it as crowdfunding_db_schema.sql.
Created a PostgreSQL database, named crowdfunding_db, and loaded the CSV data into corresponding tables.
Ran SELECT * queries to verify the data loaded correctly.
Steps to Reproduce the ETL Process
Data Extraction and Transformation
Category and Subcategory DataFrames:

Extract the category and subcategory data from crowdfunding.xlsx.
Create category_id and subcategory_id columns.
Export the data to category.csv and subcategory.csv.
Campaign DataFrame:

Extract necessary columns, transform them (including date conversions), and export the data to campaign.csv.
Contacts DataFrame:

Extract and clean the contact data from contacts.xlsx, splitting names and creating a contact list, and export to contacts.csv.
Database Setup and Loading
ERD Creation: Sketch an ERD based on the transformed data.
PostgreSQL Schema:
Use the provided crowdfunding_db_schema.sql to create tables with the appropriate relationships (primary and foreign keys).
Data Import:
Import each CSV into the corresponding table in PostgreSQL.
Technologies Used
Python: For data extraction, transformation, and CSV creation (using Pandas).
PostgreSQL: For database creation and data loading.
Git/GitHub: For version control and collaboration.
Regular Expressions: For data extraction from complex fields.
