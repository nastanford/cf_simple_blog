<cfquery name="qry_posts">
  select 
    p.*,
    u.first_name,
    u.last_name,
    u.email
  from posts p
  left join users u
    on p.users_id = u.id
</cfquery>
