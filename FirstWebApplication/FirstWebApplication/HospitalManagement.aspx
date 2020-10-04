<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HospitalManagement.aspx.cs" Inherits="FirstWebApplication.HospitalManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Student Portal</title>
   <link rel="stylesheet" href="Content/student.css" />
</head>
<body>

    <asp:GridView ID="gvTable" runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Patient_id" HeaderText="Patient ID" />
        <asp:BoundField DataField="Patient_name" HeaderText="Patient Name" />
        <asp:BoundField DataField="Patient_phone" HeaderText="Patient Phone" />

    </Columns>

         

</asp:GridView>

</body>
</html>




</asp:Content>
