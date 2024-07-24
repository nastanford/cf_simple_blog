<cfinclude template = "../../queries/qry_postById.cfm">

<cfinclude template = "../../includes/header.cfm">

<cfoutput query="qry_postById">
  <div class="container-fluid ps-4">
    <div class="row">
      <div class="col-11">
        <div class="h3 mt-3">Edit Post</div>
      </div>
      <div class="col-1 text">
        <a href="index.cfm" class="btn btn-sm btn-secondary mt-3">Back</a>
      </div>
      <div class="col-12">
        <form action="act_update.cfm" method="post">
          <input type="hidden" name="id" value="#id#">
          <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title" value="#title#">
          </div>
          <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea class="form-control" name="content" id="content" rows="10" cols="50">#content#</textarea> 
          </div>
          <div class="mb-3">
            <button type="submit" class="btn btn-primary">Update Post</button>
          </div>
        </form>
    </div>
  </div>
</cfoutput>

<cfinclude template = "../../includes/footer.cfm">
