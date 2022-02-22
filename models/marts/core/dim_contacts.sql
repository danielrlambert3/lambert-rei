with companies as (
    select * from {{ ref('stg_hubspot__companies') }}
),

contacts as (
    select * from {{ ref('stg_hubspot__contacts') }}
),

final as (
    select

    contacts.contact_id, 
    contacts.first_name,
    contacts.last_name,
    contacts.email,
    contacts.phone,
    companies.company_id,
    companies.company_name,
    companies.company_phone,
    companies.company_domain,
    companies.company_industry,
    companies.company_website

    from contacts
    left join companies using (company_id)
)

select * from final