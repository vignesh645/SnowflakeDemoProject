{% macro s3Stage() %}

  {% set sql %}
    create or replace stage my_s3_stage url='s3://snowflakeproject/Sales.csv'
    credentials=(aws_key_id='XXXX' aws_secret_key='XXXX')
    file_format =(type='CSV');
  {% endset %}

  {% do run_query(sql) %}
{% endmacro %}
