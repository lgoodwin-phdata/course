{% macro learn_logging() %}
    {{log("just a log message here!", info = True) }}
{% endmacro %}