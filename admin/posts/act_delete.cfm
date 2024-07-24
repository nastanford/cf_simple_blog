<cfquery name="delete">
  delete from posts
  where  id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>
<cflocation url = "index.cfm" addToken="no">