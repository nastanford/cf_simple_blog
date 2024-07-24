<cfquery name="update">
  update users
  set
    first_name = <cfqueryparam value="#form.first_name#" cfsqltype="cf_sql_varchar">,
    last_name = <cfqueryparam value="#form.last_name#" cfsqltype="cf_sql_varchar">,
    email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">,
    password = <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar">
  where
    id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer">
</cfquery>
<cflocation url = "index.cfm" addToken="no">