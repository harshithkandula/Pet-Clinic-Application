<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
   form{
     margin:5%
   }
</style>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
</head>
<body>
   
     <form:form action="book-appoint" method="post" modelAttribute="pet">
          <form:label path="petName">Pet Name</form:label>
          <form:input type="text" path="petName"/><br>
          <form:label path="petOwner">Pet Owner Name</form:label>
          <form:input type="text" path="petOwner"/><br>
          <form:label path="petType">Pet Type</form:label>
          <form:input type="text" path="petType"/><br>
          <form:label path="petBreed">Pet Breed Name</form:label>
          <form:input type="text" path="petBreed"/><br>
          <form:label path="petAge">Pet Age</form:label>
          <form:input type="number" path="petAge"/><br>
          <form:label path="petWeight">Pet Weight</form:label>
          <form:input type="number" path="petWeight"/><br>
          
          
          <form:button>Proceed to book Appointment</form:button>
     </form:form>
</body>
</html>