<cfinclude template = "./queries/qry_posts.cfm">

<cfinclude template = "./includes/header.cfm">

<div class="container-fluid ps-4">
  <cfoutput query="qry_posts" maxrows="3">
    <div class="row">
      <div class="col-12">
        <h1>#title#</h1>
        <p>#content#</p>
      </div>
    </div>
  </cfoutput>
<a href="more.cfm">More</a>


</div>

<cfinclude template = "./includes/footer.cfm">
