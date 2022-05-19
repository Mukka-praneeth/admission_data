
      
  
    delete from "working"."dbo"."stg_sample_data"
    where (Name_of_university) in (
        select (Name_of_university)
        from "working"."dbo"."#stg_sample_data__dbt_tmp"
    );
    

    insert into "working"."dbo"."stg_sample_data" ("Name_of_University", "Rigor", "Rank", "GPA", "Test_Score", "Essay", "Recommendation", "Interview", "Extracurricular", "Talent", "Personality", "First_Generation", "Religious", "State_Residency", "Race", "Volunteer", "Work_Experience", "Level_of_Interest")
    (
        select "Name_of_University", "Rigor", "Rank", "GPA", "Test_Score", "Essay", "Recommendation", "Interview", "Extracurricular", "Talent", "Personality", "First_Generation", "Religious", "State_Residency", "Race", "Volunteer", "Work_Experience", "Level_of_Interest"
        from "working"."dbo"."#stg_sample_data__dbt_tmp"
    );

  