<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buyitem.aspx.cs" Inherits="krushi1._1.WebForm11" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="cssfileforcod/StyleSheet1.css" rel="stylesheet" />
    <link href="cssfileforcod/StyleSheet2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="navbar-inner">
		<div class="row-fluid">
			<div class="span7">
				<h3>Buy an Item</h3>
				<div class="control-group">
                    <label class="control-label">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </label>
				</div>
                <div class="control-group">
                    <label class="control-label">Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                     <asp:TextBox ID="TextBox3" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                    </label>
			
				  <div class="control-group">
					<label class="control-label"><span>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                        <asp:TextBox ID="TextBox1" runat="server" Height="81px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                      <br />
                      <br />
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="productid" DataSourceID="SqlDataSource1" Width="356px">
                          <Columns>
                              <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" SortExpression="productid" />
                              <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                          </Columns>
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#FFF1D4" />
                          <SortedAscendingHeaderStyle BackColor="#B95C30" />
                          <SortedDescendingCellStyle BackColor="#F1E5CE" />
                          <SortedDescendingHeaderStyle BackColor="#93451F" />
                      </asp:GridView>
                      <br />
                      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                              total:
                              <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                              <br />
<br />
                          </ItemTemplate>
                      </asp:DataList>
                      <br />
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select sum(productdetails.price) total from productdetails,cart where productdetails.productid=cart.productid and mob=@mob;">
                          <SelectParameters>
                              <asp:QueryStringParameter Name="mob" QueryStringField="mob" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select productdetails.productid,productdetails.productname,productdetails.price from productdetails,cart where cart.productid=productdetails.productid and cart.mob=@mob
">
                          <SelectParameters>
                              <asp:QueryStringParameter Name="mob" QueryStringField="mob" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <br />
                      <br />payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cash on Delivery</span></label>&nbsp;</div>
				  <p id=" buy">
                      <asp:Button ID="Button1" class="shopBtn" runat="server" Text="Proceed to CheckOut" OnClick="Button1_Click" CommandName="checkout" CommandArgument='<%# Eval("total") %>'/>
				  
				  </div>
			</div>
		</div>
        </center>
</asp:Content>
