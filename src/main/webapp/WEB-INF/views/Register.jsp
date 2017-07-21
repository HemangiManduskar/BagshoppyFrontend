<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form:form method = "POST" modelAttribute="Customer" action = "savecus">
         <table class="table">

<tr>
				<form:input type="hidden" path="cusid" />
               <td><form:label path = "cusname">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "cusname" /></td>
               <td>
               <form:errors cssClass="form-control" path="cusname"/>
               </td>
            </tr>

<tr>
               <td><form:label path = "username">Username</form:label></td>
               <td><form:input cssClass="form-control" path = "username" /></td>
               <td>
               <form:errors cssClass="form-control" path="username"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "passwrd">Password </form:label></td>
               <td><form:input cssClass="form-control" path = "passwrd" /></td>
               <td>
               <form:errors cssClass="form-control" path="passwrd"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "phnno">Phone no: </form:label></td>
               <td><form:input cssClass="form-control" path = "phnno" /></td>
               <td>
               <form:errors cssClass="form-control" path="phnno"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "email">Email:</form:label></td>
               <td><form:input cssClass="form-control" path = "email" /></td>
               <td>
               <form:errors cssClass="form-control" path="email"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "cusadd">Customer Address</form:label></td>
               <td><form:input cssClass="form-control" path = "cusadd" /></td>
               <td>
               <form:errors cssClass="form-control" path="cusadd"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "userrole">User Role</form:label></td>
               <td><form:input cssClass="form-control" path = "userrole" /></td>
               <td>
               <form:errors cssClass="form-control" path="userrole"/>
               </td>
            </tr>      
</table>
</form:form>
      
      <div class="wrapper">
      <button type="submit" value="submit" class="btn btn-default">Submit</button>
      </div>
      
      
</body>
</html>