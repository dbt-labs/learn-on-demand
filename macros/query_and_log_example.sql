{% macro query_and_log_example() %}
    
    {% set query %}
        select 'matillion' as data_tool 
    {% endset %}

    {% if execute %}
        {{ log('Executing SQL...', info=True) }}
        {% set results = run_query(query).columns[0].values()[0] %}
        {{ log('SQL results: ' ~ results, info=True) }}
    
        {% if results == 'dbt' %}
            dbt is very cool
        {% else %}
            what is dbt?
        {% endif %}
    
    {%  endif %}



{% endmacro %}