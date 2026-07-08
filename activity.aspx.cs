using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activity : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    public enum MessageType { Success, Error, Info, Warning };

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    Master mst = new Master();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        //rptbinddata.DataSource = mst.GetData("select max(url)url,max(activity_name)activity_name from activity group by activity_name");
        rptbinddata.DataSource = mst.GetData("select * from activity order by id desc");
        rptbinddata.DataBind();
    }

    protected void rptbinddata_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
       
    }

    protected void rptbinddata_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
    }

}