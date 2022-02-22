with companies as (

    select
        id as company_id,
        property_name as company_name,
        property_phone as company_phone,
        property_domain as company_domain,
        property_industry as company_industry,
        property_website as company_website
        
    from {{ source('hubspot', 'company')}}

)

select * from companies