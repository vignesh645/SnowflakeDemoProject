{{ config(materialized='view') }}

with source_data as (
    select *
    from EmployeeData
)



select * from source_data
