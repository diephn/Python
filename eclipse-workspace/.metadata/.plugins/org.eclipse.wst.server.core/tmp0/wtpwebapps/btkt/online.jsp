<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    long startTime = (Long) session.getAttribute("onlineTime");
    long currentTime = System.currentTimeMillis();
    long secondsOnline = (currentTime - startTime) / 1000;
    request.setAttribute("secondsOnline", secondsOnline); // nếu bạn cần truyền lại
%>

<html>
<head><title>Online Time</title></head>
<body>
    <h2>Bạn đã online: <%= secondsOnline %> giây</h2>

    <% if (secondsOnline > 60) { %>
        <p style="color:red;">Bạn đã online quá 60 giây!</p>
    <% } %>
</body>
</html>
