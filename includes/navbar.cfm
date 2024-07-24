

<cfoutput>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#this.webpath#/index.cfm">#this.applicationTitle#</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a 
              class="nav-link #cgi.script_name eq '#this.webpath#/index.cfm' ? "active" : ""#" aria-current="page" 
              href="#this.webpath#/index.cfm">Home</a>
          </li>
          <li class="nav-item">
            <a 
              class="nav-link #cgi.script_name eq '#this.webpath#/admin/index.cfm' ? "active" : ""#" 
              href="#this.webpath#/admin/index.cfm">Admin</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</cfoutput>

