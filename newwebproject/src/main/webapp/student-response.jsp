<%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>

The Student is confirm: ${param.firstName} ${param.lastName} from ${param.country}

<br>
<br>

Favorite Language: ${param.language}
<br>
<br>



Additional languages:

<ul>
<%
    String [] params = request.getParameterValues("languages");

    for(String j : params){
        out.println("<li>"+j+"</li>");
    }


%>

</ul>



</body>
</html>
