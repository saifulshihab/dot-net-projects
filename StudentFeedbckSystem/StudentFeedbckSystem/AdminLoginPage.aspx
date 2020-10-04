<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="OnlineBookstore.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 323px;
        }
        .auto-style2 {
            margin-left: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--
	<div class="container_full"> 
		<div class="container"> 
			
		</div>
	</div>
	 -->

        <div class="container_full header_bg"> 
		<div class="container fix"> 
			    <div id="header">
                   <div class="header_left floatleft">
                        <a href="MainPage.aspx"><img src="image/book.png" /></a>
                         <h2>Online Bookstore</h2>
                    </div> 
                   
                     <div class="header_right floatright" >
                        <a class="floatleft orimg" href="CustomerLogin.aspx"><img src="image/order.png" style="width:20px;margin-right:8px;" />Order Book Now!</a>
                           <div class="navbar">
                              
                              <div class="dropdown">
                                  
                                <button class="dropbtn"><img src="image/reg.png"/>Register 
                                  <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                              <a href="AdminRegistration.aspx">Admin</a>
                              <a href="CustomerRegistration.aspx">Customer</a>                               
                            </div>
                          </div>
                               <div class="dropdown">
                                <button class="dropbtn"><img src="image/login.png"/>Login 
                                  <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">                             
                                <a href="AdminLoginPage.aspx">Admin</a>
                              <a href="CustomerLogin.aspx">Customer</a> 
                            </div>
                          </div> 
                        </div>
                    </div>
			    </div>
		</div>
	</div>

        <div class="container_full"> 
		<div class="container"> 
            
			 <div class="logbox fix">
                 <div class="floatleft" style="margin-top: 25px;">
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/image/admin.png" />
            </div>
                <h2>Admin Login</h2>
	           <table>
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="usernametxtBox" runat="server" Width="180px" Height="25px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametxtBox" ErrorMessage="Please Enter Username" ForeColor="#FF3300" Font-Size="11px"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="passtxtbox" runat="server" Width="180px" TextMode="Password" Height="25px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxtbox" ErrorMessage="Please Enter Password" ForeColor="#FF3300" Font-Size="11px"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
	               
	           </table>	
                 <div class="btn">
	                       
	                        <asp:Button class="btnstyle" ID="signbtn" runat="server" Text="Sign in" OnClick="signbtn_Click" BackColor="#339966" />
                            
                            <asp:Button class="btnstyle" ID="resetbtn" runat="server" Text="Reset" OnClick="resetbtn_Click" BackColor="#669999"  />                
                             
                </div>
            
        </div>
		</div>
	</div>
         
      
    </form>
</body>
</html>
