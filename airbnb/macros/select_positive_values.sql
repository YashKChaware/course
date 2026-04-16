{% macro select_positive_values (model, column_name) %}
SELECT * from {{model}}
WHERE {{column_name}} > 0
{% endmacro %}