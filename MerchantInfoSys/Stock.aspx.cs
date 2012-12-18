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

public partial class MerchantInfoSys_Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateGridViewStock();
        }
    }


    private void populateGridViewStock()
    {
        ProductService.serProduct stock = new ProductService.serProduct();
        DataSet dataset = stock.Product_GetStock();

        //string x = dataset.GetXml();

         //Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            //GridViewStock.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewStock.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewStock.DataBind();
            // Set control visible

            GridViewStock.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }
    protected void GridViewStock_SelectedIndexChanged(object sender, EventArgs e)
    {

        // Determine the index of the selected row.
        int index = GridViewStock.SelectedIndex;

        // Display the primary key value of the selected row.
        MessageLabel.Text = GridViewStock.DataKeys[index].Value.ToString();

        Session["productid"] = MessageLabel.Text;
        Response.Redirect("ProductMasterData.aspx");
        
    }

}