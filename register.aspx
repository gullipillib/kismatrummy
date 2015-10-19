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
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 12px; top:144px; left: 576px; height: 18px; width: 55px; "> SIGN UP </h2>
 <h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 26px; left: 1084px; width: 142px; height: 36px; "> RUMMY </h1>   

	
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	

		</asp:UpdatePanel>

<asp:Label ID="Label1" runat="server" ForeColor="White" style="top: 294px; left: 239px; position: absolute; height: 19px; width: 71px" Text="UserID"></asp:Label>
		<asp:TextBox ID="TextBox1" runat="server" style="top: 288px; left: 332px; position: absolute; height: 22px; width: 319px"></asp:TextBox>
		<asp:Label ID="Label2" runat="server" ForeColor="White" style="top: 332px; left: 228px; position: absolute; height: 19px; width: 71px" Text="Password"></asp:Label>
		<asp:TextBox ID="TextBox2" runat="server" style="top: 332px; left: 332px; position: absolute; height: 22px; width: 319px" TextMode="Password"></asp:TextBox>
    	<asp:Button ID="Button1" runat="server" style="top: 455px; left: 468px; position: absolute; height: 26px; width: 56px" Text="Register" />
		<asp:Label ID="Label3" runat="server" ForeColor="White" style="top: 246px; left: 240px; position: absolute; height: 19px; width: 71px" Text="Name"></asp:Label>
		<asp:TextBox ID="TextBox3" runat="server" style="top: 240px; left: 333px; position: absolute; height: 22px; width: 319px"></asp:TextBox>
		<asp:Button ID="Button2" runat="server" style="top: 452px; left: 566px; position: absolute; height: 26px; width: 82px" Text="Payments" PostBackUrl="payments.aspx" />
		<asp:Label ID="Label4" runat="server" ForeColor="White" style="top: 385px; left: 219px; position: absolute; height: 19px; width: 71px" Text="Receipt No"></asp:Label>
		<asp:TextBox ID="TextBox4" runat="server" style="top: 377px; left: 331px; position: absolute; height: 22px; width: 319px"></asp:TextBox>
		<asp:Label ID="Label5" runat="server" ForeColor="White" style="top: 496px; left: 201px; position: absolute; height: 19px; width: 605px" 
			Text="To Register First Deposit using Payments, Only users with Receipt Number Can Register and Play. "></asp:Label>
		<asp:Label ID="Label6" runat="server" ForeColor="White" style="top: 423px; left: 220px; position: absolute; height: 19px; width: 71px" Text="Email"></asp:Label>
		<asp:TextBox ID="TextBox5" runat="server" style="top: 417px; left: 333px; position: absolute; height: 22px; width: 319px"></asp:TextBox>

    </form>
</body>
</html>
