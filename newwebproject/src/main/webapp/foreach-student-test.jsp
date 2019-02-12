<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bara.jsp.tagdemo.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Student> data = new ArrayList<>();
    data.add(new Student("John", "Doe", false));
    data.add(new Student("Maxwell", "Johnson", false));
    data.add(new Student("Mary", "Public", true));

    session.setAttribute("mystudents", data);
%>

<html>
<head>
    <title>For Each Student</title>
</head>
<body>

<table border="1">

    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>

<c:forEach var="tempStudent" items="${mystudents}">

    <tr>
        <td>${tempStudent.firstName}</td>
        <td>${tempStudent.lastName}</td>
        <td>

            <c:choose>

                <c:when test="${tempStudent.goldCustomer}">
                    Special Discount
                </c:when>

                <c:otherwise>
                    no soup for you!
                </c:otherwise>
            </c:choose>


        </td>
    </tr>

</c:forEach>

</table>

Total: ${fn:length(mystudents)}

<c:set var="data" value="Singapore,Tokio,Mumbai,London"/>

<c:set var="citiesArray" value="${fn:split(data,',' )}"/>

<c:forEach var="printdata" items="${citiesArray}">
    ${printdata}
    <br>
</c:forEach>

</body>
</html>
