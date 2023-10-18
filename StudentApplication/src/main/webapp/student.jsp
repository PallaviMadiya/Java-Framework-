<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.StudentDao"%>
<%@page import="model.Student"%>
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
		<a href="register.jsp" class="btn"><span class="fa fa-plus"></span> Register Student</a>
    </div>
	<%List<Student> list = StudentDao.getStudentList(); %>
	
	<table class="table table-bordered" >
  <thead>
    <tr>
      <th scope="col">S_ID</th>
      <th scope="col">Standard</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">DOB</th>
      <th scope="col">Status</th>
      <th scope="col">Image</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%for(Student s: list){ %>
    <tr>
      <th scope="row" ><%=s.getSid() %></th>
      <%String std = StudentDao.getStandardNameById(s.getId()); %>
      <td><%=std %></td>
      <td><%=s.getFname() %></td>
      <td><%=s.getLname() %></td>
      <td><%=s.getDob() %></td>
      <td><%=s.getStatus() %></td>
      <td><img height="100px" weight="100px" src="img/<%=s.getImage() %>" /></td>
      <td><a href="editStudent.jsp?sid=<%=s.getSid() %>" class="btn"><span class="fa fa-edit">Edit</span> </a></td>
      <td><a href="deleteStudent.jsp?sid=<%=s.getSid() %>" class="btn" style="color:red;"><span class="fa fa-trash" >Delete</span> </a></td>
    </tr>
    <%} %>
  </tbody>
</table>
      
</body>
</html>