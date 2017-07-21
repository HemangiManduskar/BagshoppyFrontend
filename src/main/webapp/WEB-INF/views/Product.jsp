<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Product</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<c:if test="${isEditing}" >
<c:url var="formaction"  value="/updatepro"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/savepro"/>
</c:if>
<form:form method = "POST" modelAttribute="Product" action="${formaction}" enctype="multipart/form-data">
         <table class="table">
<tr>
				<form:input type="hidden" path="pid" />
               <td><form:label path = "pname">Product Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "pname" /></td>
               <td>
               <form:errors cssClass="form-control" path="pname"/>
               </td>
            </tr>

<tr>
               <td><form:label path = "pdescriptn"> Product Description:</form:label></td>
               <td><form:input cssClass="form-control" path = "pdescriptn" /></td>
               <td>
               <form:errors cssClass="form-control" path="pdescriptn"/>
               </td>
            </tr>
            
            <tr>
               <td><form:label path = "price"> Product Price:</form:label></td>
               <td><form:input cssClass="form-control" path = "price" /></td>
               <td>
               <form:errors cssClass="form-control" path="price"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "pqty"> Product Quantity:</form:label></td>
               <td><form:input cssClass="form-control" path = "pqty" /></td>
               <td>
               <form:errors cssClass="form-control" path="pqty"/>
               </td>
            </tr> 
            
            <tr>
               <td><form:label type="file" path = "imgpath"> Image path:</form:label></td>
               <td><form:input type="file" cssClass="form-control" path = "file"/></td>
               </tr>
            
            
            <tr>
               <td><form:label path = "catid"> Category :</form:label></td>
               <td>
               		<form:select path="catid">
               		<c:forEach items="${CategoryList}" var="Category">
               			<form:option value="${Category.catid}">${Category.catname}</form:option>
  					</c:forEach>
               		</form:select>
               </td>
               <td>
               <form:errors cssClass="form-control" path="catid"/>
               </td>
            </tr>
            <tr>
               <td><form:label path = "supid">Supplier :</form:label></td>
               <td>
               <form:select path="supid">
               <c:forEach items="${SupplierList}" var="Supplier">
               <form:option value="${Supplier.supid}">${Supplier.supname}</form:option>
               </c:forEach>
               </form:select>
               </td>
               <td>
               <form:errors cssClass="form-control" path="supid"/>
               </td>
            </tr>
            
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update Product"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <input type = "submit" value = "Save Product"/>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
      <table border="1" class="table">
<tr> 
      <th>Product Name</th>
      <th>Product price</th>
            </tr>
<c:forEach var="pro" items="${ProductList}" >
<tr>
      
      <td>${pro.pname}</td>
      <td>${pro.price}</td>
      <td><a href="<c:url value='/updatepro/${pro.pid}'/> ">Update</a></td>
      <td><a href="<c:url value='/deletepro/${pro.pid}'/> ">Delete</a></td>
      <td><a href="<c:url value='/disp/${pro.pid}'/> ">View</a></td>
      </tr>
</c:forEach>
      </table>


</body>
</html>