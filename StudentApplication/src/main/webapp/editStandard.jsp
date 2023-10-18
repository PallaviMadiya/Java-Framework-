<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dao.StudentDao"%>
<%@page import="model.Standard"%>

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
                    <span class="fa fa-user-circle-o">STANDARD</span>
                </div>
                <div class="content-bottom">
                
                <%int id = Integer.parseInt(request.getParameter("id")); %>
            	<%Standard s = StudentDao.getStandardById(id); %>
                
                      
                    <form action="StudentController" method="post">
                       			
                       	<div class="field-group">
                            <div class="content-input-field">
                                <input name="id"  type="text" value="<%=s.getId() %>"  required="" readonly>
                            </div>
                        </div>
                       		
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="name" type="text" value="<%=s.getName() %>" placeholder="Standard Name" required="">
                            </div>
                        </div>
                        
                        <c:set var="status" value="<%=s.getStatus() %>"/>
                        
                        <div class="field-group">
							Status
                            <div class="checkbox-check-radio">
                               Active <input name="status" type="radio" value="active" required=""  <c:if test="${status=='active'}">checked</c:if>>
                               Inactive <input name="status" type="radio" value="inactive" required="" style="color:red" <c:if test="${status=='inactive'}">checked</c:if>>
                            </div>
                        </div>
                        
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="editStandard">Edit Standard</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>