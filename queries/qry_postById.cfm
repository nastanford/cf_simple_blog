<cfquery name="qry_postById">
  select 
    p.*,
    u.first_name,
    u.last_name,
    u.email
  from posts p
  left join users u
    on p.users_id = u.id
  where p.id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>