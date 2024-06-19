<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
    div{
      margin:5%
    }
</style>
<meta charset="ISO-8859-1">
<title>Prescription</title>
</head>
<body>
     <div>  
        <h3>Thank you having confidence in us</h3>
        <p>Name: ${p.getPetName()}</p>
        <p>Master Name: ${p.getPetOwner()}</p>
        <p>Pet Type: ${p.getPetType()}</p>
        <p>Pet Breed: ${p.getPetBreed()}</p>
        <p>Pet Age: ${p.getPetAge()}</p>
        <p>Pet Weight: ${p.getPetWeight()}</p>
        
        <p>Health issue: ${t.getAid()}</p>
        <p>Appointment Date: ${t.getAppointmentDate()}</p>
        <p>Appointment Time: ${t.getAppointmentTime()}</p>
        <p>Prescription: ${t.getPrescription()}</p>
        <p>Medicines : ${t.getMedicinesPrescribed()}</p><br>
        
        <p></p>
     </div>
</body>
</html>