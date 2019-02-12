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

<%
    String [] cities = {"Mumbai", "Singapore", "Philadelphia"};

    session.setAttribute("myCities", cities);
%>


<c:forEach var="stuff" items="${myCities}">

    ${stuff}<br>

</c:forEach>




</body>
</html>
