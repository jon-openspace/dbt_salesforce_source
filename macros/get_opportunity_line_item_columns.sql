{% macro get_opportunity_line_item_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "created_by_id", "datatype": dbt.type_string()},
    {"name": "created_date", "datatype": dbt.type_timestamp()},
    {"name": "description", "datatype": dbt.type_string()},
    {"name": "discount", "datatype": dbt.type_float()},
    {"name": "has_quantity_schedule", "datatype": "boolean"},
    {"name": "has_revenue_schedule", "datatype": "boolean"},
    {"name": "has_schedule", "datatype": "boolean"},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "last_modified_by_id", "datatype": dbt.type_string()},
    {"name": "last_modified_date", "datatype": dbt.type_timestamp()},
    {"name": "last_referenced_date", "datatype": dbt.type_timestamp()},
    {"name": "last_viewed_date", "datatype": dbt.type_timestamp()},
    {"name": "list_price", "datatype": dbt.type_float()},
    {"name": "name", "datatype": dbt.type_string()},
    {"name": "opportunity_id", "datatype": dbt.type_string()},
    {"name": "pricebook_entry_id", "datatype": dbt.type_string()},
    {"name": "product_2_id", "datatype": dbt.type_string()},
    {"name": "product_code", "datatype": dbt.type_string()},
    {"name": "quantity", "datatype": dbt.type_float()},
    {"name": "service_date", "datatype": dbt.type_timestamp()},
    {"name": "sort_order", "datatype": dbt.type_int()},
    {"name": "total_price", "datatype": dbt.type_float()},
    {"name": "unit_price", "datatype": dbt.type_float()}
] %}

{{ return(columns) }}

{% endmacro %}
