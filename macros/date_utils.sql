{% macro season_checker(x) %}

CASE 
WHEN MONTH(TO_TIMESTAMP({{x}})) in (12, 1, 2)
THEN 'Winter'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (2, 3, 4) 
THEN 'Spring'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (5, 6, 7)
THEN 'Summer'
ELSE
'Fall'
END

{% endmacro %}

{% macro weekend_checker(x)%}

CASE
WHEN dayname(TO_TIMESTAMP({{x}})) in ('Sat', 'Sun')
THEN 'Weekend'
ELSE 'Business Day'
END

{% endmacro %}