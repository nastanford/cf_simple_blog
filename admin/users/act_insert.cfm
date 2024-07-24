<cfquery name="insert">
  insert into users 
  (
    first_name, 
    last_name, 
    email, 
    password
  )
  values
  (
    <cfqueryparam value="#form.first_name#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#form.last_name#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar">
  )
</cfquery>

<cflocation url="index.cfm" addToken="no">