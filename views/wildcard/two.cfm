<h1>Page Two - Wildcard</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>Link via named route</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="three")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="wildcard", action="three")#</li>
    </ul>
  </cfoutput>
</p>