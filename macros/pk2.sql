{% macro primarykeyforTable2(table,column) %}

IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE type = 'PK' AND parent_object_id = OBJECT_ID ('{{table}}'))
BEGIN
  ALTER TABLE {{table}}
  ADD CONSTRAINT PK_{{column}} PRIMARY KEY CLUSTERED ({{column}})
END
{% endmacro %}