<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="OnlineBookstore.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 103%;
            margin-left: 207px;
        }
        .auto-style2 {
            margin-left: 420px;
        }
        .auto-style3 {
            width: 244px;
        }
        .auto-style4 {
            width: 56%;
            margin: 0 auto;
            display: block;
        }
        .auto-style5 {
            width: 494px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container_full header_bg"> 
         <div class="container"> 
			 <div id="header">
                    <div class="header_left floatleft">
                        <img src="image/book.png" />
                         <h2>Online Bookstore</h2>
                    </div>  
                 <div class="header_right floatright" >
                        <a class="floatleft orimg" href="MainPage.aspx"><img src="image/logout.png" style="width:20px;margin-right:8px;" />Logout</a>
                           
                    </div>
			    </div>
        </div>
        </div>
        <div class="container_full"> 
         <div class="container"> 
			  <div class="sidenav">
                  <a href="#">Add Book Record</a>
                  <a href="Orderlist.aspx">View Order List</a>
                  <a href="customerlist.aspx">Customer List</a>                  
                  <a href="allbook.aspx">Book List</a>                  
        </div>
        </div>
        </div>
        <div class="container_full"> 
         <div class="auto-style4"> 
			 <div class="bookcontent">
                 <h2 class="auto-style2">Add Book Record</h2>
                 <div class="bookrecord">
                     <table class="auto-style1">
                         <tr>
                             <td class="auto-style3">Book ID</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="bidtxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">Book Name</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="bnametxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">Author</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="authortxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">Catagory</td>
                             <td class="auto-style5">
                                 <asp:DropDownList ID="ctgrydd" runat="server" Height="25px" Width="180px">
                                     <asp:ListItem Value="Arts &amp; Music"></asp:ListItem>
                                     <asp:ListItem>Biography</asp:ListItem>
                                     <asp:ListItem>Business</asp:ListItem>
                                     <asp:ListItem>Kids</asp:ListItem>
                                     <asp:ListItem Value="Comics"></asp:ListItem>
                                     <asp:ListItem Value="Cooking"></asp:ListItem>
                                     <asp:ListItem Value="Computer &amp; Technology"></asp:ListItem>
                                     <asp:ListItem Value="Hoobies"></asp:ListItem>
                                     <asp:ListItem Value="Health &amp; Fitness">Health &amp; Fitness</asp:ListItem>
                                     <asp:ListItem Value="History"></asp:ListItem>
                                     <asp:ListItem Value="Horror"></asp:ListItem>
                                     <asp:ListItem Value="Entertainment"></asp:ListItem>
                                     <asp:ListItem Value="Medical"></asp:ListItem>
                                     <asp:ListItem Value="Social Science"></asp:ListItem>
                                     <asp:ListItem Value="Religion"></asp:ListItem>
                                     <asp:ListItem Value="Sports"></asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">Price</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="pricetxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">Availability</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="availtxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                 </div>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="submitbtn" runat="server" Text="Submit" OnClick="submitbtn_Click" />
			 &nbsp;
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />
			 </div>
             
        </div>
        </div>


      


    </form>
</body>
</html>
