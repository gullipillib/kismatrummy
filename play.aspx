<%@ Page Language="C#" AutoEventWireup="true" Async="true"   %>

<!DOCTYPE html>
<script runat="server" type="text/javascript">
 
	//ImageButton11.Style.Add("top", Convert.ToString(Convert.ToInt32(ImageButton11.Style["top"].Replace("px", "")) - 8) + "px");
	//array = array.OrderByDescending(c => c).ToArray();

	//public static System.Timers.Timer timer = new System.Timers.Timer(10000); // This will raise the event every one minute.

	static int[] player1cards = new int[14];
	static int[] player2cards = new int[14];
	static int[] player3cards = new int[14];
	static int[] player4cards = new int[14];
	static int[] player5cards = new int[14];
	static int[] player6cards = new int[14];
	static int[] tempcards = new int[14];
	public List<int> randomList = new List<int>();
	public List<int> randomList1 = new List<int>();
	
	
	int i = 0;
	static int j = 100;
	static int k = 100;
	
	static int[] tempno = new int[106];
	static int[] discard = new int[106];
	
	static int t1 = 0;
	int discardsize = 106;
	static int selectedcard1 = 0;
	static int selectedcard2 = 0;
	
	
	static int deckcounter = 0;
	static int selectcard = 1;
	
	protected void Page_Load(object sender, EventArgs e)
	{
		

		
		
		//timer.Enabled = true;
		//timer.Elapsed += new System.Timers.ElapsedEventHandler(showdistribute);
		
		if (Page.IsPostBack == false)
		{
			
			startdistribute();
		}
		
	}

	

	protected void startdistribute()
	{

		//timer.Enabled = false; 



		Random one = new Random();
		
		do
		{

			one = new Random();
			t1 = one.Next(1, 53);
			

			if (!randomList.Contains(t1))
			{
				randomList.Add(t1);
				tempno[i] = t1;
				i = i + 1;


			}

			if (i == 52)
			{
				i = 53;
			}

		} while (i <= 52);

		
		//second
		do
		{

			one = new Random();
			t1 = one.Next(1, 53);


			if (!randomList1.Contains(t1))
			{
				randomList1.Add(t1);
				tempno[i] = t1;
				i = i + 1;


			}

			if (i == 105)
			{
				randomList1.Add(t1);
				tempno[i] = t1;
				i = 106;
			}

		} while (i <= 105);


		player1cards[0] = tempno[105];
		ImageButton1.ImageUrl = "images/" + player1cards[0].ToString() + ".png";
		player1cards[1] = tempno[100];
		ImageButton2.ImageUrl = "images/" + player1cards[1].ToString() + ".png";
		player1cards[2] = tempno[95];
		ImageButton3.ImageUrl = "images/" + player1cards[2].ToString() + ".png";
		player1cards[3] = tempno[90];
		ImageButton4.ImageUrl = "images/" + player1cards[3].ToString() + ".png";
		player1cards[4] = tempno[85];
		ImageButton5.ImageUrl = "images/" + player1cards[4].ToString() + ".png";
		player1cards[5] = tempno[80];
		ImageButton6.ImageUrl = "images/" + player1cards[5].ToString() + ".png";
		player1cards[6] = tempno[75];
		ImageButton7.ImageUrl = "images/" + player1cards[6].ToString() + ".png";
		player1cards[7] = tempno[70];
		ImageButton8.ImageUrl = "images/" + player1cards[7].ToString() + ".png";
		player1cards[8] = tempno[65];
		ImageButton9.ImageUrl = "images/" + player1cards[8].ToString() + ".png";
		player1cards[9] = tempno[60];
		ImageButton10.ImageUrl = "images/" + player1cards[9].ToString() + ".png";
		player1cards[10] = tempno[55];
		ImageButton11.ImageUrl = "images/" + player1cards[10].ToString() + ".png";
		player1cards[11] = tempno[50];
		ImageButton12.ImageUrl = "images/" + player1cards[11].ToString() + ".png";
		player1cards[12] = tempno[45];
		ImageButton13.ImageUrl = "images/" + player1cards[12].ToString() + ".png";

		player2cards[0] = tempno[104];
		player2cards[1] = tempno[100];
		player2cards[2] = tempno[94];
		player2cards[3] = tempno[89];
		player2cards[4] = tempno[84];
		player2cards[5] = tempno[79];
		player2cards[6] = tempno[74];
		player2cards[7] = tempno[69];
		player2cards[8] = tempno[64];
		player2cards[9] = tempno[59];
		player2cards[10] = tempno[54];
		player2cards[11] = tempno[49];
		player2cards[12] = tempno[44];

		player3cards[0] = tempno[103];
		player3cards[1] = tempno[98];
		player3cards[2] = tempno[93];
		player3cards[3] = tempno[88];
		player3cards[4] = tempno[83];
		player3cards[5] = tempno[78];
		player3cards[6] = tempno[73];
		player3cards[7] = tempno[68];
		player3cards[8] = tempno[63];
		player3cards[9] = tempno[58];
		player3cards[10] = tempno[53];
		player3cards[11] = tempno[48];
		player3cards[12] = tempno[43];

		player4cards[0] = tempno[102];
		player4cards[1] = tempno[97];
		player4cards[2] = tempno[92];
		player4cards[3] = tempno[87];
		player4cards[4] = tempno[82];
		player4cards[5] = tempno[77];
		player4cards[6] = tempno[72];
		player4cards[7] = tempno[67];
		player4cards[8] = tempno[62];
		player4cards[9] = tempno[57];
		player4cards[10] = tempno[52];
		player4cards[11] = tempno[47];
		player4cards[12] = tempno[42];

		player5cards[0] = tempno[101];
		player5cards[1] = tempno[96];
		player5cards[2] = tempno[91];
		player5cards[3] = tempno[86];
		player5cards[4] = tempno[81];
		player5cards[5] = tempno[76];
		player5cards[6] = tempno[71];
		player5cards[7] = tempno[66];
		player5cards[8] = tempno[61];
		player5cards[9] = tempno[56];
		player5cards[10] = tempno[51];
		player5cards[11] = tempno[46];
		player5cards[12] = tempno[41];

		ImageButton16.ImageUrl = "images/" + tempno[deckcounter].ToString() + ".png";
		deckcounter = deckcounter + 1;

		one = new Random();
		t1 = one.Next(1, 53);
		ImageButton17.ImageUrl = "images/" + tempno[t1] + ".png";
		
	}

	protected void fillcards()
	{
		
		ImageButton1.ImageUrl = "images/" + player1cards[0].ToString() + ".png";
		ImageButton2.ImageUrl = "images/" + player1cards[1].ToString() + ".png";
		ImageButton3.ImageUrl = "images/" + player1cards[2].ToString() + ".png";
		ImageButton4.ImageUrl = "images/" + player1cards[3].ToString() + ".png";
		ImageButton5.ImageUrl = "images/" + player1cards[4].ToString() + ".png";
		ImageButton6.ImageUrl = "images/" + player1cards[5].ToString() + ".png";
		ImageButton7.ImageUrl = "images/" + player1cards[6].ToString() + ".png";
		ImageButton8.ImageUrl = "images/" + player1cards[7].ToString() + ".png";
		ImageButton9.ImageUrl = "images/" + player1cards[8].ToString() + ".png";
		ImageButton10.ImageUrl = "images/" + player1cards[9].ToString() + ".png";
		ImageButton11.ImageUrl = "images/" + player1cards[10].ToString() + ".png";
		ImageButton12.ImageUrl = "images/" + player1cards[11].ToString() + ".png";
		ImageButton13.ImageUrl = "images/" + player1cards[12].ToString() + ".png";

		if (player1cards[13] != 0)
		{
			ImageButton14.ImageUrl = "images/" + player1cards[13].ToString() + ".png";
			
		}
		Timer1.Enabled = true;
		
	}

	int p = 0;
	
	protected void sortcards(int j, int k)
	{

		ImageButton1.Visible = false;
		ImageButton2.Visible = false;
		ImageButton3.Visible = false;
		ImageButton4.Visible = false;
		ImageButton5.Visible = false;
		ImageButton6.Visible = false;
		ImageButton7.Visible = false;
		ImageButton8.Visible = false;
		ImageButton9.Visible = false;
		ImageButton10.Visible = false;
		ImageButton11.Visible = false;
		ImageButton12.Visible = false;
		ImageButton13.Visible = false;
		
		
		if (selectcard == 0)
		{ 
		
		if (j < k)
		{ 
		p = 0;
		for (p = 0; p <= 12; p++)
		{
			if (p == j)
			{
				player1cards[p] = player1cards[p + 1];
				fillcards();

			}
			
			if (p > j && p < k) 
			{
				player1cards[p] = player1cards[p + 1]; 
				fillcards();
				
			}
			if (p == k)
			{
				player1cards[k] = selectedcard1;
				fillcards();
			}
		}
		}

		if (k < j)
		{
			selectedcard1 = player1cards[k];
			selectedcard2 = player1cards[j];
			player1cards[j] = selectedcard1;
			player1cards[k] = selectedcard2;
		}
		}

		ImageButton1.Visible = true;
		ImageButton2.Visible = true;
		ImageButton3.Visible = true;
		ImageButton4.Visible = true;
		ImageButton5.Visible = true;
		ImageButton6.Visible = true;
		ImageButton7.Visible = true;
		ImageButton8.Visible = true;
		ImageButton9.Visible = true;
		ImageButton10.Visible = true;
		ImageButton11.Visible = true;
		ImageButton12.Visible = true;
		ImageButton13.Visible = true;
		
		
	}

	
	
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		
		if (selectcard == 1)
		{ 
		
		if  (j == 100)
		{
			j = 0;
			ImageButton1.BorderColor = System.Drawing.Color.Red;
			ImageButton1.BorderStyle = BorderStyle.Solid;
			selectedcard1 = player1cards[0];
		}
		
		else if (j != 100 && j != 1 )
		{
			k = 0;
			
			
		}
		else if (j == 100 && k == 14)
		{

			if (player1cards[13] != 0)
			{
				ImageButton1.BorderColor = System.Drawing.Color.Red;
				ImageButton1.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[0];
				selectedcard2 = player1cards[13];
				player1cards[13] = selectedcard1;
				player1cards[0] = selectedcard2;
				Timer1.Enabled = true;
				fillcards();
				Timer1.Enabled = true;
			}
		}
	
		if (j != 100 && k != 100 && j != 14 && k != 14 && j != 14 && k != 14)
		{
			selectcard = 0;
			sortcards(j, k);
			
		}
		}
		
	}

	protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 1;
				ImageButton2.BorderColor = System.Drawing.Color.Red;
				ImageButton2.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[1];
			}

			else if (j != 100 && k == 100)
			{
				k = 1;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton2.BorderColor = System.Drawing.Color.Red;
					ImageButton2.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[1];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[1] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;

				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
			
	}

	protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
	{

		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 2;
				ImageButton3.BorderColor = System.Drawing.Color.Red;
				ImageButton3.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[2];
			}

			else if (j != 100 && k == 100)
			{
				k = 2;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton3.BorderColor = System.Drawing.Color.Red;
					ImageButton3.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[2];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[2] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
	{

		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 3;
				ImageButton4.BorderColor = System.Drawing.Color.Red;
				ImageButton4.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[3];
			}

			else if (j != 100 && k == 100)
			{
				k = 3;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton4.BorderColor = System.Drawing.Color.Red;
					ImageButton4.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[3];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[3] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
	}

	protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 4;
				ImageButton5.BorderColor = System.Drawing.Color.Red;
				ImageButton5.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[4];
			}
			else if (j != 100 && k == 100)
			{
				k = 4;

			}
			else if (j == 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton5.BorderColor = System.Drawing.Color.Red;
					ImageButton5.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[4];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[4] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;

				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
	}

	protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 5;
				ImageButton6.BorderColor = System.Drawing.Color.Red;
				ImageButton6.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[5];
			}
			else if (j != 100 && k == 100)
			{
				k = 5;

			}
			else if (j == 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton6.BorderColor = System.Drawing.Color.Red;
					ImageButton6.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[5];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[5] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
	}

	protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 6;
				ImageButton7.BorderColor = System.Drawing.Color.Red;
				ImageButton7.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[6];
			}

			else if (j != 100 && k == 100)
			{
				k = 6;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton7.BorderColor = System.Drawing.Color.Red;
					ImageButton7.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[6];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[6] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
	}

	protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
	{

		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 7;
				ImageButton8.BorderColor = System.Drawing.Color.Red;
				ImageButton8.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[7];
			}

			else if (j != 100 && k == 100)
			{
				k = 7;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton8.BorderColor = System.Drawing.Color.Red;
					ImageButton8.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[7];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[7] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 8;
				ImageButton9.BorderColor = System.Drawing.Color.Red;
				ImageButton9.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[8];
			}
			else if (j != 100 && k == 100)
			{
				k = 8;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton9.BorderColor = System.Drawing.Color.Red;
					ImageButton9.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[8];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[8] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;

				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 9;
				ImageButton10.BorderColor = System.Drawing.Color.Red;
				ImageButton10.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[9];
			}

			else if (j != 100 && k == 100)
			{
				k = 9;

			}
			else if (j == 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton10.BorderColor = System.Drawing.Color.Red;
					ImageButton10.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[9];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[9] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 10;
				ImageButton11.BorderColor = System.Drawing.Color.Red;
				ImageButton11.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[10];
			}

			else if (j != 100 && k == 100)
			{
				k = 10;

			}
			else if (k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton11.BorderColor = System.Drawing.Color.Red;
					ImageButton11.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[10];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[10] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;

				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 11;
				ImageButton12.BorderColor = System.Drawing.Color.Red;
				ImageButton12.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[11];
			}

			else if (j != 100 && k == 100)
			{
				k = 11;

			}
			else if (j == 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton12.BorderColor = System.Drawing.Color.Red;
					ImageButton12.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[11];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[11] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;

				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
	{


		if (selectcard == 1)
		{

			if (j == 100)
			{
				j = 12;
				ImageButton13.BorderColor = System.Drawing.Color.Red;
				ImageButton13.BorderStyle = BorderStyle.Solid;
				selectedcard1 = player1cards[12];
			}

			else if (j != 100 && k == 100)
			{
				k = 12;


			}
			else if (j == 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton13.BorderColor = System.Drawing.Color.Red;
					ImageButton13.BorderStyle = BorderStyle.Solid;
					selectedcard1 = player1cards[12];
					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[12] = selectedcard2;
					Timer1.Enabled = true;
					fillcards();
					Timer1.Enabled = true;
				}
			}

			if (j != 100 && k != 100 && j != 14 && k != 14)
			{
				selectcard = 0;
				sortcards(j, k);

			}
		}
		
	}

	protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
	{

		if (selectcard == 1)
		{

			if (k == 100)
			{
				k = 14;
				ImageButton14.BorderColor = System.Drawing.Color.Red;
				ImageButton14.BorderStyle = BorderStyle.Solid;
				selectedcard2 = player1cards[13];
				fillcards();

			}

			if (j != 100 && k == 14)
			{

				if (player1cards[13] != 0)
				{
					ImageButton14.BorderColor = System.Drawing.Color.Red;
					ImageButton14.BorderStyle = BorderStyle.Solid;

					selectedcard2 = player1cards[13];
					player1cards[13] = selectedcard1;
					player1cards[j] = selectedcard2;
					fillcards();
					Timer1.Enabled = true;


				}
			}

		}
		
	}

	protected void Timer1_Tick(object sender, EventArgs e)
	{
		ImageButton1.BorderStyle = BorderStyle.None;
		ImageButton2.BorderStyle = BorderStyle.None;
		ImageButton3.BorderStyle = BorderStyle.None;
		ImageButton4.BorderStyle = BorderStyle.None;
		ImageButton5.BorderStyle = BorderStyle.None;
		ImageButton6.BorderStyle = BorderStyle.None;
		ImageButton7.BorderStyle = BorderStyle.None;
		ImageButton8.BorderStyle = BorderStyle.None;
		ImageButton9.BorderStyle = BorderStyle.None;
		ImageButton10.BorderStyle = BorderStyle.None;
		ImageButton11.BorderStyle = BorderStyle.None;
		ImageButton12.BorderStyle = BorderStyle.None;
		ImageButton13.BorderStyle = BorderStyle.None;
		ImageButton14.BorderStyle = BorderStyle.None;
		Timer1.Enabled = false;
		j = 100;
		k = 100;
		selectcard = 1;
		
	}

	protected void Timer2_Tick(object sender, EventArgs e)
	{
		ImageButton1.BorderStyle = BorderStyle.None;
		ImageButton2.BorderStyle = BorderStyle.None;
		ImageButton3.BorderStyle = BorderStyle.None;
		ImageButton4.BorderStyle = BorderStyle.None;
		ImageButton5.BorderStyle = BorderStyle.None;
		ImageButton6.BorderStyle = BorderStyle.None;
		ImageButton7.BorderStyle = BorderStyle.None;
		ImageButton8.BorderStyle = BorderStyle.None;
		ImageButton9.BorderStyle = BorderStyle.None;
		ImageButton10.BorderStyle = BorderStyle.None;
		ImageButton11.BorderStyle = BorderStyle.None;
		ImageButton12.BorderStyle = BorderStyle.None;
		ImageButton13.BorderStyle = BorderStyle.None;
		ImageButton14.BorderStyle = BorderStyle.None;
		j = 100;
		k = 100;
		selectcard = 1;

	}

	protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
	{
		ImageButton14.Visible = true;
		Button1.Visible = true;
		Button2.Visible = true;
		player1cards[13] = tempno[deckcounter];
		discard[t1] = tempno[deckcounter];                        //discards
		ImageButton14.ImageUrl = "images/" + tempno[deckcounter].ToString() + ".png";
		deckcounter = deckcounter + 1;
		
	}

	protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
	{
		ImageButton14.Visible = true;
		Button1.Visible = true;
		Button2.Visible = true;
		ImageButton14.ImageUrl = ImageButton16.ImageUrl;
		player1cards[13] = discard[t1];
		ImageButton16.ImageUrl = "images/blankcard.png";
		
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		ImageButton16.ImageUrl = ImageButton14.ImageUrl;
		discard[t1] = player1cards[13];
		ImageButton14.Visible = false;
		Button1.Visible = false;
		Button2.Visible = false;
		
	}

	protected void Button2_Click(object sender, EventArgs e)
	{

	}
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KISMAT RUMMY</title>
	<style type="text/css">
		#image1 {
			top: 13px;
			left: 897px;
			position: absolute;
			height: 139px;
			width: 81px;
		}
	</style>
</head>
<body style="background-color:black;">
    <form id="form11" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">



	</asp:ScriptManager>

<img alt="kismatlogo" style="z-index:2; position:absolute; top: 490px; left: 3px; height: 86px; width: 147px;" src="images/logo.png" />&nbsp;
<h1 style="z-index:2; border-style: none; border-color: inherit; border-width: medium; position:absolute; color: blue; font-size: 140%; top: 6%; left: 2%; width: 8%; height: 5%; "> KISMAT </h1>
<h2 style="z-index:2; border-style: none; border-color: inherit; position:absolute; color: blue; font-size: 100%; top:0%; left: 80%; height: 4%; width: 5%; "> TABLE   </h2>
 <h1 style="z-index:2; border-style: none; border-color: inherit; border-width: medium; position:absolute; color: blue; font-size: 140%; top: 6%; left: 90%; width: 8%; height: 5%; "> RUMMY </h1>   
		
	


<asp:Label ID="Label1" runat="server" Text="TEST" ForeColor="White" style="z-index: 1; left: 65px; top: 247px; position: absolute;z-index:100; height: 25px;"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="TEST" ForeColor="White" style="z-index: 1; top: 110px; position: absolute;z-index:100; left: 38px;"></asp:Label>
<asp:Label ID="Label3" runat="server" Text='TEST' ForeColor="White" style="z-index: 1; left: 738px; top: 32px; position: absolute;z-index:100;"></asp:Label>
<asp:Label ID="messagelabel" runat="server" Text='' ForeColor="White" style="z-index: 1; left: 388px; top: 322px; position: absolute;z-index:100;"></asp:Label>

	<asp:UpdatePanel ID="UpdatePanel1" runat="server"   UpdateMode="Conditional">
		<ContentTemplate>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton1" runat="server" style="z-index: 1; left: 209px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  
					ImageUrl="images/blankcard.png"  OnClick="ImageButton1_Click"  />
			
			</fieldset>
				
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton2" runat="server" style="z-index: 1; left: 263px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;" 
					ImageUrl="images/blankcard.png" OnClick="ImageButton2_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton3" runat="server"  style="z-index: 1; left: 317px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton3_Click"  />


			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton4" runat="server"  style="z-index: 1; left: 374px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
				 OnClick="ImageButton4_Click" />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton5" runat="server"  style="z-index: 1; left: 430px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px; " 
					ImageUrl="images/blankcard.png" OnClick="ImageButton5_Click"  />
		</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton6" runat="server" style="z-index: 1; left: 484px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton6_Click"  />

	
			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton7" runat="server"  style="z-index: 1; left: 538px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton7_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton8" runat="server"  style="z-index: 1; left: 592px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton8_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton9" runat="server"  style="z-index: 1; left: 646px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton9_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton10" runat="server"  style="z-index: 1; left: 700px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton10_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton11" runat="server"  style="z-index: 1; left: 755px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton11_Click"  />

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton12" runat="server"  style="z-index: 1; left: 810px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					OnClick="ImageButton12_Click"/>

			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton13" runat="server"  style="z-index: 1; left: 865px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;"  ImageUrl="images/blankcard.png" 
					CausesValidation="False" OnClick="ImageButton13_Click"/>
			</fieldset>
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton14" runat="server" Visible="false" style="z-index: 1; left: 940px; top: 400px; position: absolute; width: 50px; z-index:100; height: 73px;" 
					ImageUrl="images/blankcard.png" CausesValidation="False" OnClick="ImageButton14_Click"/>
			</fieldset>
			<fieldset style="border:none;">
				<asp:Label ID="Label4" runat="server" Text="TEST" ForeColor="White" style="z-index: 1; left: 416px; top: 41px; position: absolute;z-index:100; height: 25px;"></asp:Label>

			</fieldset>
			
			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton15" runat="server"  style="z-index: 2; left: 476px; top: 236px; position: absolute; width: 110px; z-index:100; height: 63px;" 
					ImageUrl="images/deck.png" CausesValidation="False" OnClick="ImageButton15_Click" />
			</fieldset>

			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton16" runat="server"   style="z-index: 1; left: 674px; top: 229px; position: absolute; width: 49px; z-index:100; height: 70px;" 
					ImageUrl="images/pcard.png" CausesValidation="False" OnClick="ImageButton16_Click" />
			</fieldset>			

			<fieldset style="border:none;">
				<asp:ImageButton ID="ImageButton17" runat="server"   style="z-index: 1; left: 429px; top: 224px; position: absolute; width: 54px; z-index:100; height: 75px;" 
					ImageUrl="images/pcard.png" CausesValidation="False"  />
			</fieldset>	


			<fieldset style="border:none;">
				<asp:Timer ID="Timer1" runat="server" Interval="2000"  Enabled="false" OnTick="Timer1_Tick"></asp:Timer>
			</fieldset>

			<fieldset style="border:none;">
				<asp:Timer ID="Timer2" runat="server" Interval="5000"  OnTick="Timer2_Tick"></asp:Timer>
			</fieldset>
			

			<fieldset style="border:none;">
				<asp:Button ID="Button1" runat="server" Text="Discard"  Visible="false" style="z-index: 1; left: 933px; top: 355px; position: absolute; z-index:100; width: 63px;" OnClick="Button1_Click" />								
			</fieldset>

			<fieldset style="border:none;">
				<asp:Button ID="Button2" runat="server" Text="Show"  Visible="false" style="z-index: 1; left: 1030px; top: 355px; position: absolute; z-index:100; width: 63px;" OnClick="Button2_Click" />								
			</fieldset>

		</ContentTemplate>
	

		<Triggers>
			<asp:AsyncPostBackTrigger ControlID="ImageButton1" EventName="Click" />
			
<asp:AsyncPostBackTrigger ControlID="ImageButton2" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton3" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton4" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton5" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton6" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton7" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton8" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton9" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton10" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton11" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton12" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton13" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton14" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton15" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="ImageButton16" EventName="Click"></asp:AsyncPostBackTrigger>

<asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"></asp:AsyncPostBackTrigger>

			<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
			
		</Triggers>
	
		
			
		</asp:UpdatePanel>

		<asp:UpdateProgress runat="server" ID="progress1" DynamicLayout="true">
		<ProgressTemplate>
				Processing ......
		</ProgressTemplate>

		</asp:UpdateProgress>

<img alt="kismattable" style="position:absolute; top: 0px; left: 0px; height:578px; width: 1220px; z-index:0" src="images/table.png"  />

    </form>

</body>
</html>
