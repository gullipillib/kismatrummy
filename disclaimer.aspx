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
<h2 style="border-style: none; border-color: inherit; position:absolute; color: #FFFFFF; font-size: 12px; top:144px; left: 576px; height: 18px; width: 64px; "> Disclaimer</h2>
 <h1 style="border-style: none; border-color: inherit; border-width: medium; position:absolute; color: #FFFFFF; font-size: 30px; top: 26px; left: 1084px; width: 142px; height: 36px; "> RUMMY </h1>   

<asp:Button ID="Button2" runat="server" BackColor="Black" BorderStyle="Double" ForeColor="White" style="top: 115px; left: 924px; position: absolute; height: 48px; width: 75px" Text="Play Now" 
			PostBackUrl="Index.aspx" />>
	
<asp:TextBox ID="TextBox1" runat="server" Text="Disclaimer

Kismatrummy.com and its operator (Kismat Rummy) is the owner or authorized user of, and reserves all rights to, the materials, content, services, information, and products including graphics and links contained in this website. However Kismat Rummy does not give any guarantee regarding the accuracy of the website's content or that there shall be no claim by any party alleging infringement of that party's rights by any of the content or functions of this website.

Kismat Rummy makes no guarantee of merchantability or fitness for purpose of any of the functions of this website. Kismat Rummy also does not guarantee that users shall be able to use the website without interruption or that continuity will not be lost as a result of any interruption. The remedies available to users in case of any interruption to or loss of continuity in any activity on the website shall be as set out in the detailed terms and conditions.

Kismat Rummy shall use reasonable efforts to ensure that the website remains free of viruses or other harmful components. However Kismat Rummy does not guarantee that the website shall always remain virus-free and assumes no responsibility for any viruses, harmful components or any malicious or disabling code or software that may affect the website or that a user may be exposed to as a result of using Kismatrummy.com. Users use the services of this website at their own risk and are advised that they (and not Kismat Rummy) shall be responsible for all costs of any necessary servicing, repair, or correction to their systems.

Advertisements hosted on Kismatrummy.com are not to be understood to mean that Kismat Rummy endorses or provides support to the subject of the advertisement. Users responding to advertisements or purchasing any products advertised on Kismatrummy.com do so at their own risk.

While playing rummy is legal in most parts of India, Kismat Rummy does not represent that no restrictions or conditions will be implemented in various states of the country on playing of rummy in the future.
"  style="top: 160px; left: 0px; position: absolute; height: 432px; width: 1214px" TextMode="MultiLine"></asp:TextBox>
	
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	

		</asp:UpdatePanel>



    </form>
</body>
</html>
