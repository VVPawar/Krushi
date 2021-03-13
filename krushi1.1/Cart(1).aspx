<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="krushi1._1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 264px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div>
        <br />
       <h1> My Cart</h1>
        <p> &nbsp;</p>
        <hr />
        <p> &nbsp;</p><br />
        <br />
        <div>
            
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="1013px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="1164px" BorderStyle="Double">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Dotted" />
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;<table class="w-full">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductPic") %>' Width="147px" />
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Product id : "></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Product Name : "></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Price : Rs.  "></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
        </div>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductID" DataValueField="ProductID">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete " />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#66CCFF" OnClick="Button3_Click" Text="Buy Now" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductDetails.ProductID, ProductDetails.ProductName, ProductDetails.Price, ProductDetails.ProductPic, ProductDetails.Description, ProductDetails.category FROM ProductDetails INNER JOIN Cart ON ProductDetails.ProductID = Cart.ProductID WHERE (Cart.mob = @mob)">
            <SelectParameters>
                <asp:QueryStringParameter Name="mob" QueryStringField="mob" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div></center>
</asp:Content>
