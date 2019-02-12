<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test File</title>
</head>
<body>

<c:set var = "stuff" value="<%= new java.util.Date()%>"/>

Time on the server is ${stuff}


</body>
</html>
