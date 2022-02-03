<h1>Page One</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>#linkTo(text="Link via named route", route="two")#</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="two")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="main", action="two")#</li>
    </ul>
  </cfoutput>
</p>