{% set names = ['id', 'unit_price', 'quantity']%}

SELECT
{% for name in names%}
    {{name}}
    {%  if not loop.last -%}
    ,
    {%endif-%}
{% endfor %}
from table