<h1>Page One - Wildcard</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>Link via named route</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="two")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="wildcard", action="two")#</li>
    </ul>
  </cfoutput>
</p>