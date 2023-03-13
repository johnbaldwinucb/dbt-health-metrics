{{ config(materialized='view')}}

WITH health_expenditure_stg1 AS (

    SELECT REPLACE(ALocation, ' *', '') AS Location,
    {{ format_numeric_cols('A2018') }} AS health_expenditure_2018,
    {{ format_numeric_cols('A2019') }} AS health_expenditure_2019,
    {{ format_numeric_cols('A2020') }} AS health_expenditure_2020,
    {{ format_numeric_cols('A2021') }} AS health_expenditure_2021


    FROM {{ source('staging','health_expenditure') }}
)

SELECT * FROM health_expenditure_stg1

