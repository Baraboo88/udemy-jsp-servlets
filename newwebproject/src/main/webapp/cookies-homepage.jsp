<%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Training Portal</title>
</head>
<body>

<br><br>

<%

    String favLanguage = "Java";

    Cookie[]cookies = request.getCookies();

    if (cookies!= null){

        for (Cookie cookie : cookies){
            if("lang".equals(cookie.getName())){
                favLanguage = cookie.getValue();
                break;
            }
        }
    }
%>
<br><br>
<!-- show personalize page -->

<h4>New book for <%=favLanguage%></h4>

<ul>
    <li> blah blah blah </li>
    <li> blah blah blah </li>
</ul>

<br>

<h4>Latest News Reports for <%=favLanguage%></h4>

<ul>
    <li> blah blah blah </li>
    <li> blah blah blah </li>
</ul>

<br>
<h4>Hot jobs for <%=favLanguage%></h4>


<ul>
    <li> blah blah blah </li>
    <li> blah blah blah </li>
</ul>
<br>
<hr>

<br>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>


