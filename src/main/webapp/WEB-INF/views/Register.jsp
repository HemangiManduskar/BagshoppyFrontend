<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div>
${msg}
</div>
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/updatecus"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/savecus"/>
</c:if>
<form:form method = "POST" modelAttribute="Customer" action = "${formaction}">
         <table class="table">
<tr>
               <td><form:label path = "cusid">Customer Id:</form:label></td>
               <td><form:input cssClass="form-control" path = "cusid" /></td>
               <td>
               <form:errors cssClass="form-control" path="cusid"/>
               </td>
            </tr>
<tr>
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
            
            
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Updatecus"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <input type = "submit" value = "Savecus"/>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
      <table border="1" class="table">
<tr>
      <th>Customer ID</th>
      <th>Customer Name</th>
      <th>Username </th>
      <th>Password</th>
      <th>Phone No </th>
      <th>Email</th>
      <th>Customer Address</th>
      <th>User Role</th>
      </tr>
<c:forEach var="cus" items="${CustomerList}" >
<tr>
      <td>${cus.cusid}</td>
      <td>${cus.cusname}</td>
      <td>${cus.username}</td>
      <td>${cus.passwrd}</td>
      <td>${cus.phnno}</td>
      <td>${cus.email}</td>
      <td>${cus.cusadd}</td>
      <td>${cus.userrole}</td>
      <td><a href="updatecus/${cus.cusid}">Update</a></td>
      <td><a href="deletecus/${cus.cusid}">Delete</a></td>
      </tr>
</c:forEach>
</table>
</body>
</html>