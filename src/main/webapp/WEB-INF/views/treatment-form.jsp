<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
    form{
     margin:20%
   }
</style>
<meta charset="ISO-8859-1">
<title>Prescription</title>
</head>
<body>
     
    <form action="" method="post" modelAttribute="t">
        <label>Pet ID</label>
        <input type="number" name="pid" value="${t.getPid()}">
        <label>Appointment ID</label>
        <input type="number" name="aid" value="${t.getAid()}">
        <label for="healthIssue">Health Issue</label>
        <textarea rows="4" cols="20" name="healthIssue" value="${t.getHealthIssue()}"></textarea><br>
        <label for="appointmentDate">Appointment Date</label>
        <input type="date" name="appointmentDate" value="${t.getAppointmentDate()}"><br>
        <label for="appointmentTime">Appointment Time</label>
        <input type="time" name="appointmentTime" value="${t.getAppointmentTime() }"><br>
        <label for="prescription">Prescription</label>
        <textarea rows="4" cols="20" name="prescription"></textarea><br>
        <label for="medicinesPrescribed">Medicines</label>
        <input type="text" name="medicinesPrescribed"><input type="button" value="OK"><br> 
        
        <input type="submit" value="OK">
    </form>
</body>
</html>