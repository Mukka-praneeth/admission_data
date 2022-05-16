{{
  config(
        materialized = 'incremental',
        unique_key = 'Name_of_university',
    post_hook= primarykeyforTable2("{{this}}","Name_of_university"),
  )
}}


select *
from AdmissionData
{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where DateInserted >= (select max(DateInserted) from AdmissionData)

{% endif %}