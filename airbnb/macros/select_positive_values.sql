{% macro select_positive_values(model_name, column_name) %}
SELECT *
FROM {{ model }}
WHERE {{ column_name }} > 0
{% endmacro %}