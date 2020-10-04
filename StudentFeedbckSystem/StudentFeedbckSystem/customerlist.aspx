<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerlist.aspx.cs" Inherits="OnlineBookstore.customerlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-left: 238px;
            margin-top: 17;
        }
        .auto-style3 {
            margin-left: 269px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container_full header_bg"> 
         <div class="container"> 
			 <div id="header">
                    <div class="header_left floatleft">
                        <a href="MainPage.aspx"><img src="image/book.png" /></a>
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
                  <a href="AdminDashboard.aspx">Add Book Record</a>
                  <a href="Orderlist.aspx">View Order List</a>
                  <a href="#">Customer List</a>                  
                  <a href="allbook.aspx">Book List</a>                  
        </div>
        </div>
             <h2 class="auto-style3">Customer List</h2>
             <div class="auto-style4">
                 <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="195px" Width="702px" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                     <Columns>
                         <asp:TemplateField HeaderText="Name">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Username">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Age">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label4" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Gender">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label5" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Email">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Phone">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         
                     </Columns>
                     <FooterStyle BackColor="White" ForeColor="#333333" />
                     <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="White" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F7F7F7" />
                     <SortedAscendingHeaderStyle BackColor="#487575" />
                     <SortedDescendingCellStyle BackColor="#E5E5E5" />
                     <SortedDescendingHeaderStyle BackColor="#275353" />
                 </asp:GridView>
             </div>
        </div>
    </form>
</body>
</html>
