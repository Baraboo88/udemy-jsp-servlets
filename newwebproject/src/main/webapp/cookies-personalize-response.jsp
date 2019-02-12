<%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
    <%
        String favLanguage = request.getParameter("language");

        Cookie cookie = new Cookie("lang", favLanguage);

        cookie.setMaxAge(60*60*24*360);

        response.addCookie(cookie);

    %>
</head>
<body>




Thank you! We set your favorite language to: ${param.language}

<br><br>

<a href="cookies-homepage.jsp">Return to homepage.</a>

</body>
</html>
