<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="OnlineBookstore.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 198px;
            text-align: left;
        }
        .auto-style3 {
            width: 198px;
            height: 23px;
            text-align: left;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 213px;
        }
        .auto-style6 {
            height: 23px;
            width: 213px;
        }
        .auto-style7 {
            width: 198px;
            text-align: left;
            height: 35px;
        }
        .auto-style8 {
            width: 213px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 198px;
            text-align: left;
            height: 32px;
        }
        .auto-style11 {
            width: 213px;
            height: 32px;
        }
        .auto-style12 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          

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
			<div class="regbox">
         <div class="registrationform">
             <div>
                 <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Registration</h2>
                 <p>&nbsp;</p>
             </div>

             <table class="auto-style1">
                 <tr>
                     <td class="auto-style2">Name</td>
                     <td class="auto-style5">
                         <asp:TextBox ID="nametxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a valid name" Font-Size="12px" ForeColor="Red" ControlToValidate="nametxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2">Username</td>
                     <td class="auto-style5">
                         <asp:TextBox ID="usernametxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a valid username" Font-Size="12px" ForeColor="Red" ControlToValidate="usernametxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2">Password</td>
                     <td class="auto-style5">
                         <asp:TextBox ID="passtxtbox" runat="server" Height="25px" TextMode="Password" Width="180px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a password" Font-Size="12px" ForeColor="Red" ControlToValidate="passtxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style10">Confirm Password</td>
                     <td class="auto-style11">
                         <asp:TextBox ID="confirmpasstxtbox" runat="server" Height="25px" TextMode="Password" Width="180px"></asp:TextBox>
                     </td>
                     <td class="auto-style12">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Retype password" Font-Size="12px" ForeColor="Red" ControlToValidate="confirmpasstxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style7">Age</td>
                     <td class="auto-style8">
                         <asp:TextBox ID="agetxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                     </td>
                     <td class="auto-style9"></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Gender</td>
                     <td class="auto-style6">
                         <asp:DropDownList ID="genderdd" runat="server" Height="25px" Width="180px">
                             <asp:ListItem Value="Male"></asp:ListItem>
                             <asp:ListItem Value="Female"></asp:ListItem>
                             <asp:ListItem>Rather not to say</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td class="auto-style4"></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Email</td>
                     <td class="auto-style6">
                         <asp:TextBox ID="emailtxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                     </td>
                     <td class="auto-style4">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a email" Font-Size="12px" ForeColor="Red" ControlToValidate="emailtxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2">Phone</td>
                     <td class="auto-style5">
                         <asp:TextBox ID="phntxtbox" runat="server" Height="25px" Width="180px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter a phone number" Font-Size="12px" ForeColor="Red" ControlToValidate="phntxtbox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
             </table>

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             <asp:Button ID="registerbtn" runat="server" Text="Register" OnClick="registerbtn_Click" />
             &nbsp;<asp:Button ID="resetbtn" runat="server" Text="Reset" Width="68px" OnClick="resetbtn_Click" />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server"></asp:Label>
         </div>
       </div>
		</div>
	</div>
    </form>
</body>
</html>
