<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Category</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/updatecat"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/savecat"/>
</c:if>
<form:form method = "POST" modelAttribute="Category" action = "${formaction}">
         <table class="table">

<tr>
 			<form:input type="hidden" path="catid" />
               <td><form:label path ="catname">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "catname" /></td>
               <td>
               <form:errors cssClass="form-control" path="catname"/>
               </td>
            </tr>

<tr>
               <td><form:label path ="catdescriptn">Description</form:label></td>
               <td><form:input cssClass="form-control" path = "catdescriptn" /></td>
               <td>
               <form:errors cssClass="form-control" path="catdescriptn"/>
               </td>
            </tr>
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update Category"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <input type = "submit" value = "Save Category"/>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
      <table border="1" class="table">
<tr>
      <th>ID</th>
      <th>Name</th>
      <th>Description</th>
      </tr>
<c:forEach var="cat" items="${CategoryList}" >
<tr>
      <td>${cat.catid}</td>
      <td>${cat.catname}</td>
      <td>${cat.catdescriptn}</td>
      <td><a href="<c:url value='/updatecat/${cat.catid}'/> ">Update</a></td>
      <td><a href="<c:url value='/deletecat/${cat.catid}'/> ">Delete</a></td>
      </tr>
</c:forEach>
      </table>
</body>
</html>
