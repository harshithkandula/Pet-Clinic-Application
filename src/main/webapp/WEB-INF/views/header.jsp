<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <style>

       *{
         background-color: bisque;
       }

        li{
            float: left;
        }

        ul{
            list-style-type: none;
        }
        
        ul li a{
            text-decoration: none;
            color: black;
        }

        .slide img{
            width: 50%;
        }

        .ddn{
            position: relative;
            display: inline-block;
            margin: 0.25%;
        }

        .ddn-ctn{
            display: none;
        }

        .ddn:hover .ddn-ctn{
            display: block;
        }

  </style>
<title></title>
</head>
<body>
     <div style="color: coral;">
            <h1>Welcome to Shawn Pet Clinic</h1>
        </div> 
            <div>
            <ul>
                <li class="ddn">
                    <button>
                        <a href="http://34.238.171.95:9090/index.jsp">Home</a>
                    </button>
                </li>
                <li class="ddn">
                    <button>
                        <a href="">About Us</a>
                    </button>
                </li>
                <li class="ddn">
                    <button>
                        <a href="">Appointments</a>
                    </button>
                    <div class="ddn-ctn">
                        <a href="http://34.238.171.95:9090/book-appoint">Book Appointment</a>
                    </div>
                    <div class="ddn-ctn">
                        <a href="http://34.238.171.95:9090/list">List of Pets</a>
                    </div>
                     <div class="ddn-ctn">
                        <a href="http://34.238.171.95:9090/list-appoints">List of Appointments</a>
                    </div>
                </li>
                <li class="ddn">
                    <button>
                        <a href="">Treatment</a>
                    </button>
                    <div class="ddn-ctn">
                        <a href="http://34.238.171.95:9090/list-appoints"> Give Treatment</a>
                    </div>
                </li>
                <li style="margin-left: 50%; margin-right: 2%;">
                    <button>
                        <a href="http://34.238.171.95:9090/book-appoint">Book Appointment</a>
                    </button>
                </li>
                <li>
                    <button>
                        <a>Login</a>
                    </button>
                </li>
            </ul>
         </div>
                  
       
         
</body>
</html>