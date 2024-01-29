# GravityBooks Data Warehouse and Dashboard Project

## Overview
This project aims to design and implement a Data Warehouse (DWH) solution for GravityBooks, an Online Transaction Processing (OLTP) database. The OLTP database contains data related to Customers, Addresses, Books, Authors, and Shipping methods. The Data Warehouse is built using SQL Server Integration Services (SSIS) for ETL processes, Snowflake schema for data modeling, and SQL Server Analysis Services (SSAS) for analysis. Additionally, a dashboard is developed to visualize key metrics and relationships within the data.

## Components
1. **OLTP Database (GravityBooks):** Contains transactional data such as Customers, Address, Books, Authors, Shipping method, and Date.
2. **Data Warehouse (DWH):** Built using SSIS for ETL processes. Snowflake schema is implemented for efficient querying and reporting.
3. **SSAS Cube:** Utilized for multidimensional analysis and reporting.
4. **Dashboard:** Visualizes important relationships and metrics derived from the DWH.

## ETL Process
1. **Extract:** Data is extracted from the GravityBooks OLTP database using SSIS packages.
2. **Transform:** Data undergoes transformation to conform to the Snowflake schema and business rules.
3. **Load:** Transformed data is loaded into the Data Warehouse for analysis and reporting.

## Snowflake Schema Diagram
![Schema](https://github.com/farah1612/GravityBooks/assets/96481182/6083dbea-83a8-4d0e-b553-7b2c7cb4260e)




## SSAS Cube
1. **Dimensions:** Includes dimensions such as Customers, Address, Books, Authors, Shipping method, and Date.
2. **Measures:** Key measures like total orders, and total due are included.
   
## Dashboard Visualizations
1. **Top Publications:** Bar chart showcasing the top publications based on sales.
2. **Top Ordered Books:** Bar chart displaying the most ordered books.
3. **Top Languages of Books:** Pie chart representing the distribution of books by language.
4. **Total Due Over Time:** Line chart depicting the trend of total dues over time.
5. **Number of Customers, Books, Authors, Orders:** Summary statistics displayed in a tabular format.

## Usage
1. **ETL Execution:** Run SSIS packages to perform ETL from OLTP to DWH.
2. **SSAS Cube Processing:** Process SSAS cube for analysis.
3. **Dashboard Access:** Access the dashboard to visualize data insights.

## Dependencies
- SQL Server Integration Services (SSIS)
- SQL Server Analysis Services (SSAS)
- Business Intelligence Development Studio (BIDS) or SQL Server Data Tools (SSDT)
- Dashboarding tool (e.g., Power BI, Tableau)

## Conclusion
This project successfully implements a Data Warehouse solution for GravityBooks, enabling efficient analysis and reporting of key business metrics. The SSAS cube provides multidimensional analysis capabilities, while the dashboard offers intuitive visualizations for decision-making purposes.
