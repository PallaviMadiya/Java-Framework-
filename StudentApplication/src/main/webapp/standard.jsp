<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.StudentDao"%>
<%@page import="model.Standard"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
</head>
<body>
<%@include file="header.jsp" %>
<!--/banner-->

	<div class="forms ml-auto">
		<a href="addStandard.jsp" class="btn"><span class="fa fa-plus"></span> Add Standard</a>
    </div>
	 <%List<Standard> list = StudentDao.getStandardList(); %>
	<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">S_ID</th>
      <th scope="col">Standard Name</th>
      <th scope="col">Status</th>
      <th scope= "col">Edit</th>
      <th scope= "col">Delete</th>
    </tr>
  </thead>
  <tbody>
 <%for(Standard s: list){ %>
    <tr>
      <th scope="row" ><%=s.getId() %></th>
      <td><%=s.getName() %></td>
      <td><%=s.getStatus() %></td>
      <td><a href="editStandard.jsp?id=<%=s.getId() %>" class="btn"><span class="fa fa-plus">Edit</span> </a></td>
      <td><a href="deleteStandard.jsp?id=<%=s.getId() %>" class="btn" style="color:red;"><span class="fa fa-plus">Delete</span></a></th>
    </tr>
    <%} %>
  </tbody>
</table>
      
</body>
</html>