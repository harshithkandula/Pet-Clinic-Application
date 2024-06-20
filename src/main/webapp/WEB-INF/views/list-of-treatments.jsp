<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Treatment Corner</title>
</head>
<body>
   <div style="margin:10%">  
      <h2>List Of Patients</h2>
      <table>
          <tr>
             <th>Pet ID</th>
             <th>Appointment ID</th>
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
   </div>    
</body>
</html>