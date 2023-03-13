## Data Engineering / Analytics Engineering - Data Modeling of Wikipedia Health Metrics

<b> Overview: </b> Data pipeline project to extract and load Wikipedia country health metrics data with Python and Prefect for workflow orchestration to load into a data warehouse (BigQuery) to perform data transformations over with dbt, to be made into a dashboard (upcoming).

<b> Note: </b> The goal of this project was to practice using and demonstrate competence with the Modern Data Stack.  To this end, the scope of the project was kept intentionally minimal to focus on practicing the fundamentals with these technologies.

<b> Modern Data Stack Technologies Used: </b> Prefect (workflow orchestration), BigQuery (data warehousing), dbt (data modeling / ELT)

The dbt project consists of three source tables, three staging views and a final table.  Source tables are here: 

- https://en.wikipedia.org/wiki/List_of_countries_by_infant_and_under-five_mortality_rates
- https://en.wikipedia.org/wiki/List_of_countries_by_total_health_expenditure_per_capita
- https://en.wikipedia.org/wiki/List_of_countries_by_hospital_beds

<img width="1156" alt="screenshot_dag_1" src="https://user-images.githubusercontent.com/4205092/224840350-af56af74-5149-4890-b497-3bf08dd25902.png">
