using System;
using System.Activities.Expressions;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Runtime.InteropServices;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public class Master
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    
    public Master()
    {
        
    }

    public void PopulateCheckbox(CheckBoxList chk, string value_field, string text_field, string query)
    {
        DataSet ds = new DataSet();
        string cmdstr = query;
        SqlDataAdapter adp = new SqlDataAdapter(cmdstr, con);
        adp.Fill(ds);
        chk.DataSource = ds;
        chk.DataTextField = text_field;
        chk.DataValueField = value_field;
        chk.DataBind();
        con.Close();
    }

    public DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    cmd.Dispose();
                }
            }
            con.Close();
            return dt;

           
        }
    }

    public SqlDataReader Delete_Operation(string query)
    {
        
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader = null;
        try
        {
            con.Close();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        return (reader);
    }

    public int Count_data(string query)
    {
        con.Close();
        con.Open();
        int data = 0;
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            data = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        return (data);
    }

    public SqlDataReader Select_Operation(string query)
    {
       
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader = null;
        try
        {
            con.Close();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        return (reader);
    }

    public void BindDropDown(DropDownList dbl_list, string valueField, string textField, string query)
    {
        dbl_list.Items.Clear();
        dbl_list.Items.Add(new ListItem("Please Select", ""));
        dbl_list.AppendDataBoundItems = true;

        String strConnString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        String strQuery = query;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;

        try
        {
            con.Open();

            dbl_list.DataSource = cmd.ExecuteReader();
            dbl_list.DataTextField = textField;
            dbl_list.DataValueField = valueField;
            dbl_list.DataBind();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    public void PopulateGridview(string query, GridView grd_list)
    {
        DataTable dtbl = new DataTable();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
        //  cmd.Parameters.AddWithValue("@search", txt_search.Text.Trim());
        sqlDa.Fill(dtbl);
        if (dtbl.Rows.Count > 0)
        {
            grd_list.DataSource = dtbl;
            grd_list.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            grd_list.DataSource = dtbl;
            grd_list.DataBind();

            grd_list.Rows[0].Cells.Clear();
            grd_list.Rows[0].Cells.Add(new TableCell());
            grd_list.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            grd_list.Rows[0].Cells[0].Text = "No Data Found ..!";
            grd_list.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }

        con.Close();

    }

    public void Bind_Checkbox(CheckBoxList chklist,string valueField, string textField,string query)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        adp.Fill(ds);
        chklist.DataSource = ds;
        chklist.DataTextField = textField;
        chklist.DataValueField = valueField;
        chklist.DataBind();
        con.Close();
    }

    public int Insert_Enquiry(string name, string email, string mobileno, string subject, string message, string create_date, string create_time)
    {
        con.Close();
        con.Open();
        int RowsAffected = 0;
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into enquiry(name,email,mobileno,subject,message,create_date,create_time) values (@name,@email,@mobileno,@subject,@message,@create_date,@create_time) ";
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobileno", mobileno);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@message", message);
            cmd.Parameters.AddWithValue("@create_date", create_date);
            cmd.Parameters.AddWithValue("@create_time", create_time);

            RowsAffected = cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        return (RowsAffected);
    }
}