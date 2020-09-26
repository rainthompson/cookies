
<html>

<body>
<h3>Training Portal</h3>
 <!-- read the favorite programming language cookie -->
 <%
 	//the default ... if there are no cookies
 	String favLang = "Java";
 
 	//get the cookies from the browser request
 	Cookie[] theCookies = request.getCookies();
 	
 	//find our fav lang cookie
 	if (theCookies != null) {
 		
 		for (Cookie tempCookie : theCookies){
 			 if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
                 favLang = tempCookie.getValue();
                  break;
      }
    }
 }
  %>
<!-- show a personalized page ... use favLang variable -->
<!-- show new books for this lang -->
<h4>New Books for <%= favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News report for <%= favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>

</html>