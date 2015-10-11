<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html>
<script runat="server">

	protected void Button4_Click(object sender, EventArgs e)
	{
		Response.Redirect("play.aspx");
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
<img alt="acekqlogo" style="position:absolute; top: 1%; left: 40%; height: 15%; width: 15%;" src="images/logo.png" />
<h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 140%; top: 6%; left: 2%; width: 8%; height: 5%; "> KISMAT </h1>
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 100%; top:24%; left: 44%; height: 4%; width: 5%; "> LOBBY </h2>
 <h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 140%; top: 6%; left: 90%; width: 8%; height: 5%; "> RUMMY </h1>   
<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	

</asp:UpdatePanel>

<asp:GridView ID="GridView1"  runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="White" 
			style="top: 29%; left: 4%; position: absolute; height: 60%; width: 90%">
			<Columns>
				<asp:CommandField ButtonType="Button" SelectText="Play Now" ShowSelectButton="True" />
				<asp:BoundField DataField="tableno" HeaderText="Table Number" SortExpression="tableno" />
				<asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
				<asp:BoundField DataField="playing" HeaderText="Playing" SortExpression="playing" />
			</Columns>
		</asp:GridView>

<asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 30%; left: 77%; position: absolute; height: 10%; width: 8%" Text="Register" 
			PostBackUrl="register.aspx" />
<asp:Button ID="Button2" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 30%; left: 88%; position: absolute; height:10%; width: 8%;" Text="Login" 
			PostBackUrl="login.aspx" />>
<asp:Button ID="Button3" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 30%; left: 62%; position: absolute; height: 10%; width: 13%" Text="Play as Guest" 
			PostBackUrl="funplay.aspx" />
<asp:Button ID="Button4" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 30%; left: 3%; position: absolute; height: 10%; width: 13%" Text="Search" 
			UseSubmitBehavior="False" OnClick="Button4_Click" />
<asp:Button ID="Button5" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 30%; left: 15%; position: absolute; height: 10%; width: 13%" Text="Reserve a Table" 
			PostBackUrl="reserve.aspx" />








    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:acekqConnectionString %>" SelectCommand="SELECT [tableno], [amount], [playing] FROM [Lobby_Table]"></asp:SqlDataSource>

    </form>
	
</body>
</html>
