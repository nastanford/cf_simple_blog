<cfinclude template = "../../queries/qry_userById.cfm">

<cfinclude template = "../../includes/header.cfm">

<div class="container-fluid ps-4">
  <div class="row">
    <div class="col-11">
      <div class="h3 mt-3">Add Post</div>
    </div>
    <div class="col-1 text">
      <a href="index.cfm" class="btn btn-sm btn-secondary mt-3">Back</a>
    </div>
    <div class="col-12">
      <form action="act_insert.cfm" method="post">
        <cfoutput>
          <input type="hidden" name="user_id" value="#url.id#">
        </cfoutput>
        <div class="mb-3">
          <label for="title" class="form-label">Title</label>
          <input type="text" class="form-control" id="title" name="title" value="">
        </div>
        <div class="mb-3">
          <label for="content" class="form-label">Content</label>
          <textarea class="form-control" name="content" id="content" rows="10" cols="50"></textarea> 
        </div>
        <div class="mb-3">
          <button type="submit" class="btn btn-primary">Add Post</button>
        </div>
      </form>
  </div>
</div>

<cfinclude template = "../../includes/footer.cfm">
