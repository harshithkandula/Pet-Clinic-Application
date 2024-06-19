<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Treatment Corner</title>
</head>
<body>
      
      <h2>List Of Patients</h2>
      <table>
          <tr>
             <th>Pet ID</th>
             <th>Appointment ID</th>
             <th>Pet Name</th>
             <th>Master Name</th>
             <th>Appointment Date and Time</th>
             <th>Prescribe</th>
          </tr>
          <c:forEach var="x" items="${t}">
                 <tr>
                    <td>${x.getAid()}</td>
                    <td>${x.getPid()}</td>
                    <td>${x.getAppointmentTime()} | ${x.getAppointmentDate() }</td>
                    <td><a href="http://localhost:9090/appoint/${x.getAid()}">Prescription</a></td>
                 </tr>
          </c:forEach>
      </table>
</body>
</html>