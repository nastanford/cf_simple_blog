<cfinclude template = "../includes/header.cfm">

<div class="container-fluid ps-4">
  <cfoutput>
    <p>Admin for #this.applicationTitle#.</p>
  </cfoutput>
</div>

<ul>
  <li><a href="users/index.cfm">Users</a>
  <li><a href="posts/index.cfm">Posts</a>
</ul>


<cfinclude template = "../includes/footer.cfm">
