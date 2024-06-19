<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
   div{
      margin: 5%
   }
</style>
<meta charset="ISO-8859-1">
<title>Schedule Appointment</title>
</head>
<body>
   <div>
       <p>Name: ${pet.getPetName()}</p>
    <p>Master Name: ${pet.getPetOwner()}</p>
    <p>Pet Type: ${pet.getPetType()}</p>
    <p>Pet Breed: ${pet.getPetBreed()}</p>
    <p>Pet Age: ${pet.getPetAge()}</p>
    <p>Pet Weight: ${pet.getPetWeight()}</p>
    
    <form action="schedule-appoint" method="post" modelAttribute="t">
        <label>Pet ID</label>
        <input type="number" name="pid" value="${pet.getPid()}">
        <label for="healthIssue">Health Issue</label>
        <textarea rows="4" cols="20" name="healthIssue"></textarea><br>
        <label for="appointmentDate">Appointment Date</label>
        <input type="date" name="appointmentDate"><br>
        <label for="appointmentTime">Appointment Time</label>
        <input type="time" name="appointmentTime"><br>
     <!--     <label for="prescription">Prescription</label>
        <textarea rows="4" cols="20"></textarea><br>
        <label for="medicinesPrescribed">Medicines</label>
        <input type="text" name="medicinesPrescribed" multiple><input type="button" value="OK"><br> -->
        
        <input type="submit" value="Book">
    </form>
  </div>
    
</body>
</html>