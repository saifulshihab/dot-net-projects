<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="OnlineBookstore.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/responsive.css"/>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
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
                 <div class="mainpage_leftcontent">
                     <div class="catagorybox">
                        <asp:Label ID="Label1" style="font-weight: bold;" runat="server" Text="Catagories"></asp:Label>
                                 <asp:DropDownList class="mainpagedropdown" ID="ctgrydropdown" runat="server">
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
                             <asp:Button ID="Button1" class="mainshowbtn" runat="server" OnClick="Button1_Click" Text="Show" Width="114px" />
			        </div>
                 <div class="auto-style1">
                      <asp:GridView ID="mainpage_gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                         <AlternatingRowStyle BackColor="#CCCCCC" />
                         <Columns>
                             <asp:TemplateField HeaderText="Book ID">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bookid") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("bookid") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Book Name">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookname") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("bookname") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Author">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("author") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("author") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Catagory">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("catagory") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("catagory") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Price (BDT)">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Availability">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("availability") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("availability") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                         <FooterStyle BackColor="#CCCCCC" />
                         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#808080" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#383838" />
                     </asp:GridView>
                 </div>
                 </div>
			        
            </div>
            </div>

        <div class="container_full"> 
         <div class="container"> 
			    <div class="mainpage_rightcontent floatright">
                    <asp:TextBox ID="srcboxtxt" runat="server"></asp:TextBox><asp:Button class="mainshowbtn" ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
			    </div>
        </div>
        </div>

   </form>
</body>
</html>
