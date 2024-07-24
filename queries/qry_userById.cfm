<cfquery name="qry_userById">
  select *
  from users
  where id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>