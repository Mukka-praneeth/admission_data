{{
  config(
    post_hook={
      "sql": "ALTER TABLE {{this}}
ADD CONSTRAINT PK_Name_of_University PRIMARY KEY CLUSTERED (Name_of_University);"
    }
  )
}}

select *
from Admission_data