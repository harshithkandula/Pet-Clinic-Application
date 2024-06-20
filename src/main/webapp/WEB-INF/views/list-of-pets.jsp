<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pets Corner</title>
</head>
<body>
 <div style="margin:10%">
   <h2>List Of Pets</h2>
   <table>
      <tr>
         <th>ID</th>
         <th>Pet Name</th>
         <th>Master Name</th>
         <th>Pet Type</th>
         <th>Pet Breed</th>
         <th>Pet Age</th>
         <th>Pet Weight</th>      
      </tr>
      <c:forEach var="p" items="${pets}">
          <tr>
             <td>${p.getPid()}</td>
             <td>${p.getPetName()}</td>
             <td>${p.getPetOwner()}</td>
             <td>${p.getPetType()}</td>
             <td>${p.getPetBreed()}</td>
             <td>${p.getPetAge()}</td>
             <td>${p.getPetWeight()}</td>
          </tr>
      </c:forEach>
   </table>
 </div>
</body>
</html>