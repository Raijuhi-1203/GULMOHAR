using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_add_activity : System.Web.UI.Page
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
            if (uploadphoto.PostedFile != null && uploadphoto.PostedFile.FileName != "")
            {

                //then save it to the Folder
                foreach (HttpPostedFile postedFile in uploadphoto.PostedFiles)
                {
                    string fileName = Guid.NewGuid().ToString();
                    string fileExtension = Path.GetExtension(postedFile.FileName);

                    string filePath = "upload/photo-gallery/" + fileName + fileExtension;

                    postedFile.SaveAs(Server.MapPath(filePath));
                    //validates the posted file before saving

                    if (uploadphoto.PostedFile.ContentLength > 5000000) // 5120 KB means 5MB
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.Upload picture upto 5MB')", true);
                    }
                    else
                    {
                        con.Open();

                        string insert_category = "insert into activity(url,activity_name) values (@url,@activity_name)";
                        SqlCommand cmd_category = new SqlCommand(insert_category, con);

                        cmd_category.Parameters.AddWithValue("@url", filePath);
                        cmd_category.Parameters.AddWithValue("@activity_name", name.Text);

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