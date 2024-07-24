<cfinclude template = "../../includes/header.cfm">
<cfinclude template = "../../queries/qry_userById.cfm">

<cfoutput query="qry_userById">
  <div class="container-fluid ps-4">
    <div class="container mt-5">
      <h2 class="mb-4">Edit New User</h2>
      <form action="act_update.cfm" method="post">
        <input type="hidden" name="id" value="#id#">
        <div class="mb-3">
          <label for="first_name" class="form-label">First Name</label>
          <input type="text" class="form-control" id="first_name" name="first_name" value="#first_name#" required>
        </div>
        <div class="mb-3">
          <label for="last_name" class="form-label">Last Name</label>
          <input type="text" class="form-control" id="last_name" name="last_name" value="#last_name#" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email" value="#email#" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password" value="#password#" required>
        </div>
        <button type="submit" class="btn btn-secondary">Update</button>
      </form>
    </div>
  </div>
</cfoutput>

<cfinclude template = "../../includes/footer.cfm">
