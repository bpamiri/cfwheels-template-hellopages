<h1>Page Three</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>#linkTo(text="Link via named route", route="one")#</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="one")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="main", action="one")#</li>
      At the moment there seems to be a bug with the wildcard routes, so it is recommended to use names routes.
    </ul>
  </cfoutput>
</p>