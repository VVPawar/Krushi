<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="krushi1._1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

        .menu
        {
            background:#e2dddd;
            padding:50px;
        }
        
        .imageclass
        {
            height: 180px;
            width: 180px;
            text-align: center;
            padding:10px;
            background-color:#ffffff;
        }
        .nameclass
        {
            width: 180px;
            height:30px;
            text-align:center;
            background-color:#ffffff;
        }
        .linkclass
        {
            width:180px;
            height:30px;
            text-align:left;
            background-color:#ffffff;
        }
        .noclass
        {
            width:180px;
             height:30px;
            text-align:left;
            background-color:#ffffff;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="menu">
        <table class="auto-style2" border="1" title="Deatails odf the project member" >
            <tr>
                <td class="imageclass">
                    <asp:Image ID="Image1" runat="server" Height="180px" Width="180px" ImageUrl="~/photo/gj.jpg" />
                </td>
                <td class="imageclass">
                    <asp:Image ID="Image2" runat="server" Height="180px" Width="180px" ImageUrl="~/photo/ss.jpeg" />
                </td>
                <td class="imageclass">
                    <asp:Image ID="Image3" runat="server" Height="180px" Width="180px" ImageUrl="~/photo/pg.jpg" />
                </td>
                <td class="imageclass">
                    <asp:Image ID="Image4" runat="server" Height="180px" Width="180px" ImageUrl="~/photo/vp.JPG" />
                </td>
                <td class="imageclass">
                    <asp:Image ID="Image5" runat="server" Height="180px" Width="180px" ImageUrl="~/photo/WhatsApp Image 2019-04-11 at 9.04.36 PM.jpeg" />
                </td>
            </tr>
            <tr class="nameclass">
                <td class="auto-style2"><h3>Guru Joshi</h3></td>
                <td class="auto-style2"><h3>Shashi Sawant</h3></td>
                <td class="auto-style2"><h3>Prathmesh Godbole</h3></td>
                <td class="auto-style2"><h3>Vaibhav Parande</h3></td>
                <td class="auto-style2"><h3>Prashant Jadhav</h3></td>
            </tr>
            <tr class="linkclass">
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC">gurujoshi007@gmail.com</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#0033CC">Shashisawant1995@gmail.com</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#0033CC">godbole611@gmail.com</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#0033CC">Vaibhavparande12@gmail.com</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#0033CC">prashant.jadhav9299@gmail.com</asp:HyperLink>
                </td>
            </tr>
            <tr class="noclass">
                <td>+91- 9850076448</td>
                <td>+91- 8605831610</td>
                <td>+91- 7517065560</td>
                <td>+91- 7057741719</td>
                <td>+91- 8623918167</td>
            </tr>
           
        </table>
            </div>
</asp:Content>
