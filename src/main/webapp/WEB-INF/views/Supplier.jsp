<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<%@taglib uri= "http://www.springframework.org/tags/form" prefix= "form" %>
<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/Stylesheet1.css">
<script type="text/javascript" src="resources/js/Script1.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Supplier</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/updatesup"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/savesup"/>
</c:if>
<form:form method = "POST" modelAttribute="Supplier" action = "${formaction}">
         <table class="table">

<tr>
				<form:input type="hidden" path="supid" />
               <td><form:label path = "supname">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "supname" /></td>
               <td>
               <form:errors cssClass="form-control" path="supname"/>
               </td>
            </tr>

<tr>
               <td><form:label path = "supadd">Address</form:label></td>
               <td><form:input cssClass="form-control" path = "supadd" /></td>
               <td>
               <form:errors cssClass="form-control" path="supadd"/>
               </td>
            </tr>
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update Supplier"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <input type = "submit" value = "Save Supplier"/>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
     <div> <table border="1" class="table">
<tr>
      <th>ID</th>
      <th>Name</th>
      <th>Address</th>
      </tr>
<c:forEach var="sup" items="${SupplierList}" >
<tr>
      <td>${sup.supid}</td>
      <td>${sup.supname}</td>
      <td>${sup.supadd}</td>
      <td><a href="<c:url value='/updatesup/${sup.supid}'/> ">Update</a></td>
      <td><a href="<c:url value='/deletesup/${sup.supid}'/> ">Delete</a></td>
      </tr>
</c:forEach>
      </table></div>
</body>
</html>