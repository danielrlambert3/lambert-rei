with contacts as (

    select
        id as contact_id, 
        property_firstname as first_name,
        property_lastname as last_name,
        property_email as email,
        property_phone as phone,
        property_associatedcompanyid as company_id
  
    from {{ source('hubspot', 'contact')}}

)

select * from contacts