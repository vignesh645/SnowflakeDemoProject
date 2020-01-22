{% macro s3Stage() %}

  {% set sql %}
    create or replace stage my_s3_stage url='s3://snowflakeproject/Sales.csv'
    credentials=(aws_key_id='AKIAJKN5I577XDENHAHQ' aws_secret_key='lLzoiYU4Y+nYnOaHLHtUO3kKzv5WISkjd+HYQrNy')
    file_format =(type='CSV');
  {% endset %}

  {% do run_query(sql) %}
{% endmacro %}
