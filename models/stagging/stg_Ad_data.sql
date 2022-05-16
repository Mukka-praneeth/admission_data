{{
  config(unique_key='Name_of_university',
    post_hook= primarykeyforTable("{{this}}","Name_of_university"),
  )
}}

select *
from AdmissionData
