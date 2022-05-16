{% macro primarykeyforTable(table,column) %}

IF NOT EXISTS(
SELECT 1
FROM sys.objects
WHERE name like '{{column}}')
BEGIN
    ALTER TABLE {{table}} 
    ADD CONSTRAINT {{column}} PRIMARY KEY CLUSTERED ({{column}});  
END
 {% endmacro %}