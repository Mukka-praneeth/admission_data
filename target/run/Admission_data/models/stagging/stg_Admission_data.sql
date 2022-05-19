
   
  USE [working];
  if object_id ('"dbo"."stg_Admission_data__dbt_tmp_temp_view"','V') is not null
      begin
      drop view "dbo"."stg_Admission_data__dbt_tmp_temp_view"
      end


   
   
  USE [working];
  if object_id ('"dbo"."stg_Admission_data__dbt_tmp"','U') is not null
      begin
      drop table "dbo"."stg_Admission_data__dbt_tmp"
      end


   USE [working];
   EXEC('create view "dbo"."stg_Admission_data__dbt_tmp_temp_view" as
    

select *
from AdmissionData
    ');

   SELECT * INTO "working"."dbo"."stg_Admission_data__dbt_tmp" FROM
    "working"."dbo"."stg_Admission_data__dbt_tmp_temp_view"

   
   
  USE [working];
  if object_id ('"dbo"."stg_Admission_data__dbt_tmp_temp_view"','V') is not null
      begin
      drop view "dbo"."stg_Admission_data__dbt_tmp_temp_view"
      end

    
   

