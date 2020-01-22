{% macro Sales_Year_Stage_SF() %}

  {% set sql %}
    create or replace stage Sales_Year_Stage_SF url='s3://snowflakeproject/Sales_Year.csv'
    credentials=(aws_key_id='XXXX' aws_secret_key='XXXX')
    file_format =(type='CSV');
  {% endset %}

  {% do run_query(sql) %}
{% endmacro %}
