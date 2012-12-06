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

public partial class Services_Tourism : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateGridViewComment2();
        }
    }

    private void populateGridViewComment2()
    {

        int productid;
        productid = 222;
        //// Take customNumber from screen
        //try
        //{
        //    productid = ListBoxCategory.Text;
        //}
        //catch
        //{
        //    productid = 0;
        //}
        //// Load the productbacklog according to productbacklogid
        //lbPurchaseErr.Text = ""; 



        ProductService.serProduct comment = new ProductService.serProduct();
        DataSet dataset = comment.Product_GetMechantComment(productid);

       
        // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            //GridView2.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridView2.DataSource = dataset;
            // Bind values to controls rows and columns
            GridView2.DataBind();
            // Set control visible

            GridView2.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }
}