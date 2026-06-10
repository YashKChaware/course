{% macro learn_variables() %}

    {% set your_name_jinja = "Yash" %} -- define jinja variable
    {{ log("Hello " ~ your_name_jinja, info=True) }} -- info = true for printing logs on console 

    {{log("Hello dbt user " ~ var("user_name") ~ "!", info=True )}} -- use of dbt variable

{% endmacro %}