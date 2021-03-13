<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Additem.aspx.cs" Inherits="krushi1._1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 250px;
        }
        .auto-style2 {
            width: 379px;
            text-align: center;
        }
        .auto-style3 {
            height: 44px;
            text-align: center;
        }
        .auto-style4 {
            height: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <h2>Add Item</h2>
         <p>&nbsp;</p>
         <hr />
         <p>&nbsp;</p>
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Enter Item Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="183px" BorderStyle="Inset"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Select Category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="186px">
                        <asp:ListItem>Fertilizers</asp:ListItem>
                        <asp:ListItem>Pestisides</asp:ListItem>
                        <asp:ListItem>Seeds</asp:ListItem>
                        <asp:ListItem>Equipments</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Price</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="183px" BorderStyle="Inset"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Select Image</td>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="82px" Width="132px" />
&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                  
                    &nbsp;
                  
                    <asp:Button ID="FileUpload" runat="server" Height="22px" OnClick="Upload_Click" Text="Upload" Width="89px" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">Description</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Inset" Height="72px" TextMode="MultiLine" Width="451px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="Button5" runat="server" Height="26px" OnClick="Button4_Click" Text="Submit" Width="68px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="26px" OnClick="Button4_Click1" Text="Home" Width="68px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblmsg" runat="server" Font-Bold="true"></asp:Label>
        </asp:Content>
