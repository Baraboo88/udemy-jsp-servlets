<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %><%--
  Created by IntelliJ IDEA.
  User: Sursh
  Date: 12.02.2019
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>

Add new item:

<form action="session.jsp">
    <input type="text" name="text">
    <input type="submit" value="Отправить">
</form>

<br>
<br>
<hr>

Todo List:
<ol>
<%

    if(session.getAttribute("list")!=null){
        List<String> list = (LinkedList) session.getAttribute("list");
        list.add(request.getParameter("text"));
        session.setAttribute("list", list);
        for (String j : list){
            out.println("<li>" + j + "</li>");
        }
    }

    else {
        List<String> list = new LinkedList<>();
        session.setAttribute("list", list);

    }


%>
</ol>


</body>
</html>
