<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allbook.aspx.cs" Inherits="OnlineBookstore.allbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
        .auto-style3 {
            width: 80%;
            margin: 0 auto 0 204px;
            display: block;
            text-align: center;
        }
        .auto-style4 {
            margin-left: 287px;
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
                  <a href="customerlist.aspx">Customer List</a>                  
                  <a href="#">Book List</a>                  
        </div>
        </div>
        </div>
        <div class="container_full"> 
         <div class="auto-style3"> 
			 <h2 class="auto-style4">Book List</h2>
             <asp:GridView ID="allbookgv" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="200px" Width="959px" OnRowDeleting="allbookgv_RowDeleting" OnSelectedIndexChanged="allbookgv_SelectedIndexChanged">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:TemplateField HeaderText="Book ID">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bookid") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="dl" runat="server" Text='<%# Bind("bookid") %>'></asp:Label>
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
                     <asp:CommandField ShowEditButton="True" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Delete All Records" OnClick="Button1_Click" />
             <br />
             <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        </div>
        </div>

    </form>
</body>
</html>
