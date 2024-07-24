<cfquery name="update">
  update posts
  set
    title = <cfqueryparam value="#form.title#" cfsqltype="cf_sql_varchar">, 
    content = <cfqueryparam value="#form.content#" cfsqltype="cf_sql_clob">
  where
    id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer">
</cfquery>
<cflocation url = "index.cfm" addToken="no">