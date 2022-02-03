<h1>Page Three - Wildcard</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>Link via named route</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="one")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="main", action="one")#</li>
    </ul>
  </cfoutput>
</p>