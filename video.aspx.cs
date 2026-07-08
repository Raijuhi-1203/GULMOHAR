using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class video : System.Web.UI.Page
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
        }
    }


    private void BindData()
    {
        rptbinddata.DataSource = mst.GetData("SELECT * FROM video order by id asc");
        rptbinddata.DataBind();
    }

    protected void rptbinddata_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName.Equals("btndelete"))
        {
            Label lbldeletesellerid = (Label)rptbinddata.Items[e.Item.ItemIndex].FindControl("lbldeletesellerid");

            SqlDataReader dr_delete_seller = mst.Delete_Operation("delete from video where id='" + lbldeletesellerid.Text + "'");
            dr_delete_seller.Close();

            ShowMessage("Delete operation success.", MessageType.Success);

            BindData();
        }
    }

    protected void rptbinddata_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {

        }
    }

}