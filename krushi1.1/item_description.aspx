<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="item_description.aspx.cs" Inherits="krushi1._1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height:auto;
            padding-left:20px;
        }
        .auto-style2
        {
            text-align:center;
            align-content:center;
            padding:10px;
            background:#e6e2e2;
        }
        .text-center
        {
            align-content:center;
            padding: 10px;
            background:#e6e2e2;
        }
        .auto-style3 
        {
            width: 350px;
        }
        .auto-style4
        {
            width:15px;
        }
        .auto-style5
        {
            width:107px;
        }
        .auto-style6
        {
            text-align:center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <div class="text-center">
    
        <div class="auto-style2">
     <center>
    
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" DataSourceID="SqlDataSource1" Width="742px" >
            <ItemTemplate>
                <table border="1">
                    <tr>
                        <td colspan="2">
                            <b>Product Name :- </b>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' BackColor="#66FFCC"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" rowspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductPic") %>' />
                        </td>
                        <td class="auto-style3">
                            <b>Product id :- </b>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Description :- </b><br/>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2">
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Rs."></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Buy Now" Width="127px" BackColor="Aqua" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BackColor="#00CCFF" Text="Add to Cart" CommandArgument='<%# Eval("ProductID") %>' CommandName="Item" OnClick="Button3_Click" />
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </center>
    </div>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductDetails] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>       
          
    
 </asp:Content>
