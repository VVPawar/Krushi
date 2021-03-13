<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pestisides.aspx.cs" Inherits="krushi1._1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="6" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table border="1" class="w-full">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductPic") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" BackColor="#0066CC" CssClass="m-l-0" Text="View Details" Width="124px" CommandArgument='<%# Eval("productid") %>' CommandName="viewdetail"/>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID, ProductName, Price, ProductPic, Description, category FROM ProductDetails WHERE (category = 'pestisides')"></asp:SqlDataSource>
    <br />
</asp:Content>
