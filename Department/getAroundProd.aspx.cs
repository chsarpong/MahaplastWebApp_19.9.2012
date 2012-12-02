using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Web.SessionState;

public partial class Department_getAroundProd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productid"] != null)
                lbSesProductId.Text = Session["productid"].ToString();
            getGateroryId();
        }
    }

    private void getGateroryId()
    {

        int proidforimage = Convert.ToInt32(lbSesProductId.Text);
        Image1.ImageUrl = "~/Handler/GetAroundHandler.ashx?productimageId=" + proidforimage;
       

    }


   
}