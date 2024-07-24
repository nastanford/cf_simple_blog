<cfquery name="qry_users">
  select *
  from users
  order by last_name, first_name
</cfquery>
