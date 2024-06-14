<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Booked: Success</title>
</head>
<body>
    
    <h2>Appointment Booked with ID ${t.getAid()}</h2>
    
    <p>Name: ${p.getPetName()}</p>
    <p>Master Name: ${p.getPetOwner()}</p>
    <p>Pet Type: ${p.getPetType()}</p>
    <p>Pet Breed: ${p.getPetBreed()}</p>
    <p>Pet Age: ${p.getPetAge()}</p>
    <p>Pet Weight: ${p.getPetWeight()}</p>
    <p>Health Problem: ${treat.getHealthIssue()}</p>
    <p>Appointment Date: ${treat.getAppointmentDate()}</p>
    <p>Appointment Time: ${treat.getAppointmentTime()}</p>
</body>
</html>