using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class INDEX : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            BindData();
            BindData2();
        }
    }

    private void BindData2()
    {
        Repeater1.DataSource = mst.GetData("select top 10 * from activity order by id desc");
        Repeater1.DataBind();
    }

    private void BindData()
    {
        rptbinddata.DataSource = mst.GetData("SELECT * FROM notice order by id asc");
        rptbinddata.DataBind();
    }

    protected void rptbinddata_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void rptbinddata_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {

        }
    }

    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

}