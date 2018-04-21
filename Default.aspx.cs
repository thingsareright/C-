using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//用于SQL Sever数据访问的命名空间
using System.Data;               //DataSet类的命名空间
public partial class _Default : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
       
    }

    protected void SqlDataSource1_Selected(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string sqlStr = "select Tid from dbo.teacher  where Tid =" + Login1.UserName + " and Password =" + Login1.Password;
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-1J2N236\\THINGSARERIGHT;Initial Catalog=Attendance;Persist Security Info=True;User ID=meng;Password=123456");//创建数据库连接(字符串中是我个人的数据库信息)
        conn.Open();      //打开数据库连接
        
        
        DataSet dt = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
        
        adapter.Fill(dt);
        conn.Close();
        string Tid = dt.Tables[0].Rows[0][0].ToString();


        if (Tid != null)
        {
            Session.Add("TID", Tid);
            Response.Redirect("LoginSuccess.aspx");
            return;
        }
        else if (Tid == null || Tid.Equals(""))
        {
            Response.Redirect("LoginError.aspx");
        }



        LoginButton_Click(sender, e);
    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {
       
    }

    protected void Password_TextChanged(object sender, EventArgs e)
    {
       
    
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        
    }
}