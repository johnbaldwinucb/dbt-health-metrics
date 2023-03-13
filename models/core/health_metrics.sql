{{ config(materialized='table')}}

-- Combine all views


WITH health_expenditure AS (    
    
    SELECT *
    FROM {{ ref('stg_health_expenditure') }}    

),

hospital_beds AS (

    SELECT * 
    FROM {{ ref('stg_hospital_beds') }}

),

infant_mortality AS (

    SELECT *
    FROM {{ ref('stg_infant_mortality') }}

)

SELECT infant_mortality.Location, 
mortality_rate_under_5_per_1000_births_2020,
health_expenditure_2020,
hospital_beds_per_1000_2017
FROM infant_mortality
LEFT JOIN hospital_beds
ON infant_mortality.Location = hospital_beds.Location
LEFT JOIN health_expenditure
ON infant_mortality.Location = health_expenditure.Location