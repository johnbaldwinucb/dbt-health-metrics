{{ config(materialized='view')}}

WITH infant_mortality_stg1 AS (

    SELECT REPLACE(ACountryorterritory, ' *', '') AS Location,
    {{ format_numeric_cols('A2020mortalityrateunder5per1000livebirths') }} AS mortality_rate_under_5_per_1000_births_2020,
    FROM {{ source('google-sheets','infant_mortality') }}

)

SELECT * FROM infant_mortality_stg1
