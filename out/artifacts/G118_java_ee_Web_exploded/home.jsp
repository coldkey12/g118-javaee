<%@ page import="java.awt.*" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Developer" %><%--
  Created by IntelliJ IDEA.
  User: coldkey
  Date: 27.09.2023
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab</title>
</head>
<body>
    <form action="/home" method="post">
        <input type="text" name="name" placeholder="Insert name..."><br><br>
        <input type="text" name="surname" placeholder="Insert surname"><br><br>
        <input type="text" name="city" placeholder="Insert city"><br><br>
        <input type="number" name="age" placeholder="Insert age"><br><br>
        <button>ADD DEVELOPER</button><br><br>
    </form>
    <table cellpadding="10px">
        <thead>
            <th>ID</th>
            <th>NAME</th>
            <th>SURNAME</th>
            <th>CITY</th>
            <th>DETAILS</th>
        </thead>
        <tbody>
        <%
            List<Developer> developers = (List<Developer>) request.getAttribute("razraby");
            for (Developer dev : developers) {
        %>
            <tr>
                <td><%=dev.getId()%></td>
                <td><%=dev.getName()%></td>
                <td><%=dev.getSurname()%></td>
                <td><%=dev.getBirthCity()%></td>
                <td>
                    <form action="/details" method="get">
                        <input type="hidden" name="id" value="<%=dev.getId()%>">
                        <button>DETAILS</button>
                    </form>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</body>
</html>
