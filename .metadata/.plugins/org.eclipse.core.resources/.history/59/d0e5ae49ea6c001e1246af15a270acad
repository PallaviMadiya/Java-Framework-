<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                    <span class="fa fa-user-circle-o">SIGN UP</span>
                </div>
                 <% String msg = (String)request.getAttribute("msg"); %>
	            <% if(msg!=null){
	            %>
	            	<center><h3><%=msg %></h3></center><br>
	            <% } %>
                <div class="content-bottom">
                    <form action="StudentController" method="post">
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
                                <input name="email" id="text1" type="email" value="" placeholder="Student Email" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="contact" id="text3" type="number" value="" placeholder="Contact No" required="">
                            </div>
                        </div>
                         <div class="field-group">

                            <div class="content-input-field">
                                <input name="address" id="text1" type="text" value="" placeholder="Student Address" required="">
                            </div>
                        </div>
                        <div class="field-group">
							Gender
                            <div class="checkbox-check-radio">
                               Male <input name="gender" id="text3" type="radio" value="male" required="">
                               Female <input name="gender" id="text3" type="radio" value="female" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="myInput" type="Password" placeholder="Password">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="signup">Sign Up</button>
                        </div>
                        <div class="list-login-bottom text-center mt-lg-5 mt-4">

                            <a href="#" class="">By clicking Signup, I agree to your terms</a>



                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>