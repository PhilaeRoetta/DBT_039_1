{% macro run_mode(model,seed) %}

    {% if (var('is_in_testing_mode',false) == true ) %}
        {{seed}}
    {% else %}
        {{model}}
    {% endif %}

{% endmacro %}