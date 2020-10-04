<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student Portal.aspx.cs" Inherits="FirstWebApplication.Student_Portal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Student Portal</title>
   <link rel="stylesheet" href="Content/student.css" />
</head>
<body>

    <!--
    <div class="fix container_full">
		<div class="fix container">
		
		</div>
	</div>
    -->

     <div class="fix container_full">
		<div class="fix container">
		     <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                  <a href="#">Dashboard</a>
                  <a href="#">Profile</a>
                  <a href="#">Profile Update</a>
                  <a href="#">Password Change</a>
                  <a href="#">Peyment Ledger</a>
                  <a href="#">Peyment Scheme</a>
                  <a href="#">Smaart Card</a>
                  <a href="#">Registered Course</a>
                  <a href="#">Drop Semester</a>
                  <a href="#">Live Result</a>
                  <a href="#">Teching Evaluation</a>
                  <a href="#">Transcript Certificate & Convocation</a>
                  <a href="#">Laptop</a>
                  <a href="#">Routine</a>
                  <a href="#">Mentor Meeting</a>
                  <a href="#">Result</a>
                  <a href="#">Student Application</a>
                  <a href="#">Logout</a>  
                 
            </div>
		</div>
	</div>

   
    
<div id="navbar"> 
        <span onclick="openNav()" class="sp">☰ Student Portal</span>
</div>


    <div class="fix container_full">
		<div class="fix container">
		    <div class="content">
                  <h2>Student Information</h2>
                     <div class="info">
		              <p> 
			          Name: Saiful Islam<br>
			          Student ID  : <strong>171-35-1970</strong><br>
			          B.Sc in Software Engineering<br>
		              Daffodil International University<br>		
		        </p>	
	     </div>
	 </div>
		</div>
	</div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>	
	<script>
                function openNav() {
              document.getElementById("mySidenav").style.width = "340px";
                          }
 
            function closeNav() {
              document.getElementById("mySidenav").style.width = "0";
        }
    </script>

</body>
</html>
</asp:Content>

