<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="krushi1._1.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shetipurak</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->

</head>
<body style="background-color: #999999;">
    <form id="form1" runat="server">
   <div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('images/bg-01.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<a class="login100-form validate-form">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

		<div class="wrap-input100 validate-input" >
						<span class="label-input100">mobile</span>
						<asp:TextBox ID="mob" runat="server" placeholder="MOBILE NUMBER..." CssClass="input100"></asp:TextBox>
						<span class="focus-input100"></span>
            <asp:RegularExpressionValidator ID="Mobilenovalidate" runat="server" ContolToValidate="mob" ValidationExpression="[0-9]{10}" ForeColor="Red" ErrorMessage="Invalid Mobile Number" ValidationGroup="vg"></asp:RegularExpressionValidator>
					</div>

			
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email(Optional)</span>
						<asp:TextBox ID="email" runat="server" placeholder="Email Address..." CssClass="input100" OnTextChanged="email_TextChanged" TextMode="Email"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:RegularExpressionValidator ID="Emailvalidator" runat="server" ControlToValidate="email" ForeColor="Red" ErrorMessage="Email Invalid" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</div>

					<div class="wrap-input100 validate-input" data-validate="name is required">
						<span class="label-input100">name</span>
                        <asp:TextBox ID="Username" runat="server" placeholder="name..." CssClass="input100" onkeypress="return isNumberKey(evt)" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
                        <asp:TextBox ID="Password" runat="server" placeholder="*************" CssClass="input100" TextMode="Password"></asp:TextBox>	
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
						<span class="label-input100">Confirm Password</span>
						<asp:TextBox ID="Repeatpassword" runat="server" placeholder="*************" CssClass="input100" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>

	
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                            <asp:Button ID="Sign_up" runat="server" Text="Signup" CssClass="login100-form-btn" OnClick="Sign_up_Click" />
						</div>
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Sign in</asp:HyperLink>
                       
						</div>
				</a>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

    </form>
</body>
</html>