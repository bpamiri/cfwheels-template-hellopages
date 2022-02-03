<h1>Page Two</h1>
<p>
  <cfoutput>
    Page Links:
    <ul>
      <li>#linkTo(text="Link via named route", route="three")#</li>
      <li>#linkTo(text="Link via wildcard specifying action", action="three")#</li>
      <li>#linkTo(text="Link via wildcard specifying controller and action", controller="main", action="three")#</li>
    </ul>
  </cfoutput>
</p>