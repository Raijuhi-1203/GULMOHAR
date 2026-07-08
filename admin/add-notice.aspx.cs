using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_add_notice : System.Web.UI.Page
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

        }
    }

    protected void btnsave_ServerClick(object sender, EventArgs e)
    {
        try
        {
            if (url.Text.Length > 0)
            {

                con.Open();

                string insert_category = "insert into notice(notice) values (@notice)";
                SqlCommand cmd_category = new SqlCommand(insert_category, con);

                cmd_category.Parameters.AddWithValue("@notice", url.Text);

                int success = cmd_category.ExecuteNonQuery();
                if (success > 0)
                {
                    ShowMessage("Data has been saved.", MessageType.Success);

                }
                else
                {
                    ShowMessage("Something went wrong.", MessageType.Warning);
                }
            }
            else
            {
                ShowMessage("Please choose category photo.", MessageType.Error);
            }

        }
        catch (SqlException ex)
        {
            ShowMessage(ex.Message, MessageType.Error);
        }
    }


}