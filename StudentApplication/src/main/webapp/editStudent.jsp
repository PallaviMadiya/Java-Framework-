
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.StudentDao"%>
<%@page import="model.Student"%>
<%@page import="model.Standard"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
 <!-- //banner-->
    <!--/login -->
    <%int sid = Integer.parseInt(request.getParameter("sid")); %>
    <%Student s = StudentDao.getStudentById(sid); %>
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o">REGISTER</span>
                </div>
                <div class="content-bottom">
                
                	 
                
                    <form action="StudentController" method="post" enctype='multipart/form-data'>
                     <%
						    List<Standard> list = StudentDao.getStandardList();
						    int id = s.getId();
						%>
						
						 <div class="field-group">
                            <div class="content-input-field">
                                <input name="sid" type="text" value="<%=s.getSid() %>" required="" hidden>
                            </div>
                        </div>
						
						<select name="id" style="width:340px; height:60px; margin-bottom:20px;">
						    <option value="" disabled selected hidden>&nbsp;&nbsp;Select Standard</option>
						    <% for (Standard std : list) { %>
						        <option value="<%= std.getId() %>" <%= std.getId() == id ? "selected" : "" %>><%= std.getName() %></option>
						    <% } %>
						</select>
						
						
						
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="fname" id="text1" type="text" value="<%=s.getFname() %>" placeholder="First Name" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="lname" id="text1" type="text" value="<%=s.getLname() %>" placeholder="Last Name" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="dob" id="text1" type="date" value="<%=s.getDob() %>" placeholder="Date Of Birth" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                        	<img height="100px" weight="100px" src="img/<%=s.getImage() %>" />
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="image" id="text1" type="file" placeholder="Student Image" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="createdDate" id="text1" type="text" value="<%=s.getCreatedDate() %>"  required="" hidden>
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="status" id="text1" type="text" value="<%=s.getStatus() %>"  required="" hidden>
                            </div>
                        </div>
                                     
                        
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="editStudent">Register</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>