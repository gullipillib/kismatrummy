<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KISMAT RUMMY</title>
</head>
<body style="background-color:black;">
    <form id="form11" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>

<img alt="kismatlogo" style="position:absolute; top: 21px; left: 510px; height: 118px; width: 184px;" src="images/logo.png" />
<h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 17px; left: 10px; width: 183px; height: 28px; "> KISMAT </h1>
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 12px; top:144px; left: 576px; height: 18px; width: 55px; "> SIGN IN</h2>
 <h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 26px; left: 1084px; width: 142px; height: 36px; "> RUMMY </h1>   

		<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	

		</asp:UpdatePanel>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:acekqConnectionString %>" 
			SelectCommand="SELECT [uname], [password], [amount], [active] FROM [User_Table]"></asp:SqlDataSource>


    	<asp:Label ID="Label1" runat="server" ForeColor="White" style="top: 294px; left: 239px; position: absolute; height: 19px; width: 71px" Text="UserID"></asp:Label>
		<asp:TextBox ID="TextBox1" runat="server" style="top: 288px; left: 336px; position: absolute; height: 22px; width: 319px"></asp:TextBox>
		<asp:Label ID="Label2" runat="server" ForeColor="White" style="top: 332px; left: 228px; position: absolute; height: 19px; width: 71px" Text="Password"></asp:Label>
		<asp:TextBox ID="TextBox2" runat="server" style="top: 330px; left: 336px; position: absolute; height: 22px; width: 319px" TextMode="Password"></asp:TextBox>
    	<asp:Button ID="Button1" runat="server" style="top: 388px; left: 459px; position: absolute; height: 26px; width: 56px" Text="Login" />
    </form>
</body>
</html>
