<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%int sid = Integer.parseInt(request.getParameter("sid")); %>
    <%StudentDao.deleteStudent(sid); %>
    <%response.sendRedirect("student.jsp"); %>

</body>
</html>