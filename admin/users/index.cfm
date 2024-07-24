<cfinclude template = "../../queries/qry_users.cfm">
<cfinclude template = "../../includes/header.cfm">

<div class="container-fluid ps-4">
  <div class="row">
    <div class="col-11">
      <div class="h3 mt-3">Users</div>
    </div>
    <div class="col-1 text-end mt-3">
      <a href="add.cfm" class="btn btn-sm btn-secondary mb-4 ">Add User</a>
    </div>
  </div>

<table class="table table-striped">
  <thead>
    <tr>
      <th>Edit</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email</th>
      <th>Password</th>
      <th class="text-end">Delete</th>
    </tr>
  </thead>
  <tbody>
    <cfoutput query="qry_users">
    <tr>
      <td><a href="edit.cfm?id=#id#" class="btn btn-sm btn-secondary">Edit</a></td>
      <td>#first_name#</td>
      <td>#last_name#</td>
      <td>#email#</td>
      <td>*********</td>
      <td class="text-end"><a href="act_delete.cfm?id=#id#" class="btn btn-sm btn-secondary">Delete</a></td>
    </tr>
    </cfoutput>
  </tbody>
</table>




</div>
<cfinclude template = "../../includes/footer.cfm">
