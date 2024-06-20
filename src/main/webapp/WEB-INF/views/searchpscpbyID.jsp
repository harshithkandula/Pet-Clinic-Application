<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Prescription</title>
</head>
<body>
    <div style="margin:10%">
       <form action="data-appoint" method="post">
           <label>ID</label>
           <input type="text" name="id">
           
           <br>
           <input type="submit" value="OK">
       </form>
    </div>
</body>
</html>