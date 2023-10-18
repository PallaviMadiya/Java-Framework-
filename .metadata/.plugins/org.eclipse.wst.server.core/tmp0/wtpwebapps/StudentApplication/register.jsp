
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.StudentDao"%>
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
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o">REGISTER</span>
                </div>
                <div class="content-bottom">
                
                    <form action="StudentController" method="post" enctype='multipart/form-data'>
                        <%List<Standard> list = StudentDao.getStandardList(); %>
                    	
                    	<select name="id"  style="width:340px; height:60px; margin-bottom:20px;">
							<% for (Standard s : list) { %>
								<option value="" disabled selected hidden>&nbsp &nbsp Select Standard</option>
								<option value="<%=s.getId() %>"><%=s.getName() %></option>
							<% } %>
						</select>
						
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="fname" id="text1" type="text" value="" placeholder="First Name" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="lname" id="text1" type="text" value="" placeholder="Last Name" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="dob" id="text1" type="date" value="" placeholder="Date Of Birth" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="image" id="text1" type="file" value="" placeholder="Student Image" required="">
                            </div>
                        </div>
                                     
                        
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="register">Register</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>