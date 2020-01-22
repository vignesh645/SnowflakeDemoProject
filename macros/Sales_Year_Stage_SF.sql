{% macro Sales_Year_Stage_SF() %}

  {% set sql %}
    create or replace stage Sales_Year_Stage_SF url='s3://snowflakeproject/Sales_Year.csv'
    credentials=(aws_key_id='AKIAJKN5I577XDENHAHQ' aws_secret_key='lLzoiYU4Y+nYnOaHLHtUO3kKzv5WISkjd+HYQrNy')
    file_format =(type='CSV');
  {% endset %}

  {% do run_query(sql) %}
{% endmacro %}
