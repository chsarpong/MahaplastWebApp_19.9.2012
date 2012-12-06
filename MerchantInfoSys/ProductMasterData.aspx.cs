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

public partial class MerchantInfoSys_ProductMasterData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productid"] != null)
                lbSessionProdId.Text = Session["productid"].ToString();

            populateGridViewShippingDetails();
            populateGridViewProductDetail();
        }
    }

    private void populateGridViewShippingDetails()
    {
        int prodId;
     
        // Take productId from screen
        try
        {
            prodId = Convert.ToInt32(lbSessionProdId.Text);
        }
        catch
        {
            prodId = 0;
        }


        ShippingType.serShippingType oneProShippingDetail = new ShippingType.serShippingType();
        DataSet dataset = oneProShippingDetail.ShippingType_GetProductShippingDetail(prodId);


        // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            //GridViewStock.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewShippingDetails.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewShippingDetails.DataBind();
            // Set control visible

            GridViewShippingDetails.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }

    private void populateGridViewProductDetail()
    {
        ProductService.serProduct stock = new ProductService.serProduct();
        DataSet dataset = stock.Product_GetStock();


        // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            //GridViewStock.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewProductDetails.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewProductDetails.DataBind();
            // Set control visible

            GridViewProductDetails.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }
}