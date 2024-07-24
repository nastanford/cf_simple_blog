<cftry>
  <cfquery name="insert">
    INSERT INTO posts 
    (
      title, 
      content, 
      users_id
    ) 
    VALUES (
      <cfqueryparam value="#form.title#" cfsqltype="cf_sql_varchar">,
      <cfqueryparam value="#form.content#" cfsqltype="cf_sql_clob">,
      <cfqueryparam value="#form.user_id#" cfsqltype="cf_sql_integer">
    )
  </cfquery>
  

  <cfcatch type="database">
    <!--- Output the error message to help with debugging --->
    <cfoutput>
      <p>An error occurred while inserting data:</p>
      <p>Error Message: #cfcatch.message#</p>
      <p>Error Detail: #cfcatch.detail#</p>
      <p>SQL State: #cfcatch.sqlstate#</p>
      <p>SQL Code: #cfcatch.sqlcode#</p>
    </cfoutput>
  </cfcatch>
  
  <cfcatch type="any">
    <!--- Handle any other exceptions that might occur --->
    <cfoutput>
      <p>An unexpected error occurred:</p>
      <p>Error Message: #cfcatch.message#</p>
      <p>Error Detail: #cfcatch.detail#</p>
    </cfoutput>
  </cfcatch>
</cftry>


<cflocation url = "index.cfm" addToken="no">