{{ config(materialized='view')}}

-- Transformations to make:
-- remove * from Location
-- Remove , from number columns
-- If field does not contain numbers for number columns, replace with null

WITH hospital_beds_stg1 AS (    
    
    SELECT ACountryorterritory AS Location,
    {{ format_numeric_cols('AHospitalbedsper1000people6') }} AS hospital_beds_per_1000_2013,
    {{ format_numeric_cols('AUnnamed3') }} AS hospital_beds_per_1000_2014,
    {{ format_numeric_cols('AUnnamed4') }} AS hospital_beds_per_1000_2015,
    {{ format_numeric_cols('AUnnamed5') }} AS hospital_beds_per_1000_2016,
    {{ format_numeric_cols('AUnnamed6') }} AS hospital_beds_per_1000_2017

    FROM {{ source('google-sheets','hospital_beds') }}
    WHERE ACountryorterritory IS NOT NULL
    

)

SELECT * FROM hospital_beds_stg1

