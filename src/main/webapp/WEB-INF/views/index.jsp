<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
  <html>
    <head>
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
       <title>Shawn Pet Clinic: Home</title>
    </head>
    <meta charset="ISO-8859-1">
     <title>Shawn Pet Clinic</title>
    <body>
        <div style="color: coral;">
            <h1>Welcome to Shawn Pet Clinic</h1>
        </div> 
            <div>
            <ul>
                <li class="ddn">
                    <button>
                        <a href="http://54.204.188.134:9090/">Home</a>
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
                        <a href="http://54.204.188.134:9090/book-appoint">Book Appointment</a>
                    </div>
                    <div class="ddn-ctn">
                        <a href="http://54.204.188.134:9090/list">List of Pets</a>
                    </div>
                     <div class="ddn-ctn">
                        <a href="http://54.204.188.134:9090/list-appoints">List of Appointments</a>
                    </div>
                </li>
                <li class="ddn">
                    <button>
                        <a href="">Treatment</a>
                    </button>
                    <div class="ddn-ctn">
                        <a href="http://54.204.188.134:9090/list-appoints"> Give Treatment</a>
                    </div>
                </li>
                <li style="margin-left: 50%; margin-right: 2%;">
                    <button>
                        <a href="http://54.204.188.134:9090/book-appoint">Book Appointment</a>
                    </button>
                </li>
                <li>
                    <button>
                        <a>Login</a>
                    </button>
                </li>
            </ul>
         </div>
         <div style="margin: 5%;">
            <div class="slide">
                <img src="E:\Simplilearn\Integration and Deployment\Course End Project\horse.jpg" alt="horse">
            </div>
            <div class="slide">
                <img src="E:\Simplilearn\Integration and Deployment\Course End Project\dog.jpg" alt="dog">
            </div>
            <div class="slide">
                <img src="E:\Simplilearn\Integration and Deployment\Course End Project\cows.jpg" alt="cow">
            </div>
            <div class="slide">
                <img src="E:\Simplilearn\Integration and Deployment\Course End Project\sheep.jpg" alt="sheep">
            </div>
         </div>

         <script>
             let slideIndex = 0;
             slideShow();

             function slideShow(){
                let i;
                let photos = document.getElementsByClassName("slide");
                for(i=0;i<photos.length;i++){
                    photos[i].style.display= "none";
                }
                slideIndex++
                if(slideIndex>photos.length){
                    slideIndex =1;
                }

                photos[slideIndex-1].style.display= "block";
                setTimeout(slideShow, 2000);
             }
         </script>
    </body>
  </html>
