<cfset currentUser = 9>
<cfinclude template = "../../queries/qry_posts.cfm">
<cfinclude template = "../../includes/header.cfm">
<div class="container-fluid ps-4">
  <div class="row">
    <div class="col-11">
      <div class="h3 mt-3">Posts</div>
    </div>
    <div class="col-1 text-end mt-3">
      <cfoutput>
        <a href="add.cfm?id=#currentUser#" class="btn btn-sm btn-secondary mb-4 ">Add Post</a>
      </cfoutput>
    </div>
  </div>
  <div class="row">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Edit</th>
            <th>Title</th>
            <th>Body</th>
            <th>Author</th>
            <th class="text-end">Delete</th>
          </tr>
        </thead>
        <tbody>
          <cfoutput query="qry_posts">
            <tr>
              <td><a href="edit.cfm?id=#id#" class="btn btn-sm btn-secondary">Edit</a></td>
              <td>#title#</td>
              <td>#content#</td>
              <td>#first_name# #last_name#</td>
              <td class="text-end"><a href="act_delete.cfm?id=#id#" class="btn btn-sm btn-secondary">Delete</a></td>
            </tr>
          </cfoutput>
        </tbody>
      </table>
  </div>
</div>

<cfinclude template = "../../includes/footer.cfm">
