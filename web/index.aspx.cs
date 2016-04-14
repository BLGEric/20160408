using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Application.Lock();
            string txtNumber;
            string PathName = Server.MapPath("visit.txt");
            if (File.Exists(PathName))
            {
                StreamReader sReader = new StreamReader(PathName,Encoding.Default);
                txtNumber = sReader.ReadLine();
                Session["intNumber"] = Convert.ToUInt64(txtNumber) + 1;
                sReader.Close();
            }
            StreamWriter sWriter = new StreamWriter(PathName, false,Encoding.Default);
            sWriter.Write(Session["intNumber"].ToString());
            sWriter.Flush();
            sWriter.Close();
            Application.UnLock();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString()[0].ToString();
        Label2.Text = DateTime.Now.ToLongTimeString()[1].ToString();
        Label3.Text = DateTime.Now.ToLongTimeString()[2].ToString();
        Label4.Text = DateTime.Now.ToLongTimeString()[3].ToString();
        Label5.Text = DateTime.Now.ToLongTimeString()[4].ToString();
        Label6.Text = DateTime.Now.ToLongTimeString()[5].ToString();
        Label7.Text = DateTime.Now.ToLongTimeString()[6].ToString();
        Label8.Text = DateTime.Now.ToLongTimeString()[7].ToString();
        lblvisit.Text = Session["intNumber"].ToString();
     }
    protected void btn1_Click(object sender, EventArgs e)
    {
        ws.Attributes["src"]="history.aspx";
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        ws.Attributes["src"] = "login.aspx";
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        ws.Attributes["src"] = "search.aspx";
    }
    protected void btn4_Click(object sender, EventArgs e)
    {
        ws.Attributes["src"] = "listen.aspx";
    }
}