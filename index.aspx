<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html>
<script runat="server">

	protected void Button4_Click(object sender, EventArgs e)
	{
		Response.Redirect("play.aspx");
	}

	protected void Page_Load(object sender, EventArgs e)
	{

	}
</script>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KISMAT RUMMY</title>
</head>
<body style="background-color:black;">
 
  
    <form id="form1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>

<img alt="kismatlogo" style="position:absolute; top: 21px; left: 510px; height: 118px; width: 184px;" src="images/logo.png" />
<h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 17px; left: 10px; width: 183px; height: 28px; "> KISMAT </h1>
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 12px; top:144px; left: 576px; height: 18px; width: 55px; "> LOBBY </h2>
 <h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 26px; left: 1084px; width: 142px; height: 36px; "> RUMMY </h1>   
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 16px; top:34px; left: 246px; height: 66px; width: 200px; "> Only players above
18 years in age are
permitted to play
our games. </h2>
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 9px; top:591px; left: 512px; height: 15px; width: 239px; "> All Copy Rights Reserved www.kismatrummy.com - 2015 </h2>
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 13px; top:561px; left: 812px; height: 15px; width: 113px; "> Payment Partmers </h2>

<img alt="kismatlogo" style="position:absolute; top: 573px; left: 946px; height: 37px; width: 141px;" src="images/payumoney.jpg" />



<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	

</asp:UpdatePanel>

<asp:GridView ID="GridView1"  runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="White" 
			style="top: 29%; left: 4%; position: absolute; height: 48%; width: 90%">
			<Columns>
				<asp:CommandField ButtonType="Button" SelectText="Play Now" ShowSelectButton="True" />
				<asp:BoundField DataField="tableno" HeaderText="Table Number" SortExpression="tableno" />
				<asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
				<asp:BoundField DataField="playing" HeaderText="Playing" SortExpression="playing" />
			</Columns>
		</asp:GridView>

<asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderStyle="None" ForeColor="Blue" style="top: 113px; left: 1089px; position: absolute; height: 48px; width: 96px; cursor:pointer;  -webkit-border-radius:25px; -moz-border-radius:25px; border-radius:25px; " Text="SignUp" 
			PostBackUrl="register.aspx" />
<asp:Button ID="Button2" runat="server" BackColor="#FF3300" BorderStyle="None" ForeColor="White" 
			style="top: 115px; left: 950px; position: absolute; height: 48px; width: 112px; cursor:pointer; -webkit-border-radius:25px; -moz-border-radius:25px; border-radius:25px; " Text="Play Now" 
			PostBackUrl="login.aspx" BorderColor="#FFFFCC" />>
<asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderStyle="None" ForeColor="Blue" style="top: 112px; left: 712px; position: absolute; height: 49px; width: 182px; cursor:pointer;  -webkit-border-radius:25px; -moz-border-radius:25px; border-radius:25px; " Text="Play Free Tables as  Guest" 
			PostBackUrl="funplay.aspx" />
<asp:Button ID="Button4" runat="server" BackColor="Yellow" BorderStyle="None" ForeColor="Blue" 
			style="top: 122px; left: 307px; position: absolute; height: 41px; width: 153px; cursor:pointer;  -webkit-border-radius:25px; -moz-border-radius:25px; border-radius:25px; " Text="Search for a Table" 
			UseSubmitBehavior="False" OnClick="Button4_Click" />
<asp:Button ID="Button5" runat="server" BackColor="Yellow" BorderStyle="None" ForeColor="Blue" 
			style="top: 49px; left: 729px; position: absolute; height: 44px; width: 118px; cursor:pointer;  -webkit-border-radius:25px; -moz-border-radius:25px; border-radius:25px; " Text="Reserve a Table" 
			PostBackUrl="reserve.aspx" />
<asp:Button ID="Button6" runat="server" BackColor="Black" BorderStyle="None" ForeColor="#CCCCCC" 
			style="border-style: none; border-color: inherit; border-width: medium; top: 562px; left: 203px; position: absolute; height: 33px; width: 140px; cursor:pointer;  " Text="Disclaimer" 
			PostBackUrl="disclaimer.aspx" />>
<asp:Button ID="Button7" runat="server" BackColor="Black" BorderStyle="None" ForeColor="#CCCCCC" 
			style="border-style: none; border-color: inherit; border-width: medium; top: 562px; left: 366px; position: absolute; height: 33px; width: 114px; cursor:pointer;  " Text="Privacy"
			PostBackUrl="privacy.aspx" />>
<asp:Button ID="Button8" runat="server" BackColor="Black" BorderStyle="None" ForeColor="#CCCCCC" 
			style="border-style: none; border-color: inherit; border-width: medium; top: 562px; left: 24px; position: absolute; height: 33px; width: 140px; cursor:pointer;  " Text="Terms and Comditions" 
			PostBackUrl="tandc.aspx" Font-Size="8pt" />>







    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:acekqConnectionString %>" SelectCommand="SELECT [tableno], [amount], [playing] FROM [Lobby_Table]"></asp:SqlDataSource>

    </form>
	
</body>
</html>
