<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="krushi1._1.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .w-full
        {
            text-align:center;
            align-content:center;
            align-items:center;
        }
         .text-center
        {
            text-align:center;
            padding: 10px;
            background:#e6e2e2;
        }
        .auto-style2 {
            text-align: center;
            align-content: center;
            padding: 50px;
            background: #e6e2e2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
       <br />
       <h1>Search Result<p>&nbsp;</p>
       <hr />
       <p>&nbsp;</p>
    <br />
           &nbsp;<div class="auto-style2">
 <center>
    <asp:DataList class="text-center" ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="6" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" CssClass="m-r-0" Width="16px">
        <ItemTemplate>
            <table border="1" class="w-full">
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label2" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductPic") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Button ID="Button3" runat="server" BackColor="#0066CC" CssClass="m-l-0" Text="View Details" Width="124px" CommandName="viewdetail" CommandArgument='<%# Eval("productid") %>'/>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
     <br />
     <br />
     </center>
        </div>
        <br />
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductDetails] WHERE ([ProductName] LIKE '%' + @ProductName + '%')" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductName" QueryStringField="ProductName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        </div>
</asp:Content>

