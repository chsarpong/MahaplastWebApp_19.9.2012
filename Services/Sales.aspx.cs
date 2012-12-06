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

public partial class Services_Sales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productcategoryId"] != null)
                lbSesProductCat.Text = Session["productcategoryId"].ToString();

            populateGridViewCustomers();
            BindDataList();
        }
    }


    private void populateGridViewCustomers()
    {

        int productcategoryId = 0;

        try
        {
            if (Session["productcategoryId"] != null)
                lbSesProductCat.Text = Session["productcategoryId"].ToString();

            productcategoryId = Convert.ToInt32(lbSesProductCat.Text);

        }

        catch
        {
            productcategoryId = 0;

        }



        ProductImageService.serProdctImage products = new ProductImageService.serProdctImage();
        DataSet dataset = products.ProductImage_GetFashionCategoryForPage(productcategoryId);



        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewProdSearch.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewProdSearch.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewProdSearch.DataBind();
            // Set control visible

            GridViewProdSearch.Visible = true;

            Image2.ImageUrl = "~/Handler/GetAroundHandler.ashx?productcategoryId=" + productcategoryId;

        }


        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }


    private void BindDataList()
    {
        int productcategoryId = 0;

        try
        {
            if (Session["productcategoryId"] != null)
                lbSesProductCat.Text = Session["productcategoryId"].ToString();

            productcategoryId = Convert.ToInt32(lbSesProductCat.Text);

        }

        catch
        {
            productcategoryId = 0;

        }

        ProductImageService.serProdctImage products = new ProductImageService.serProdctImage();
        DataSet dataset = products.ProductImage_GetFashionCategoryForPage(productcategoryId);
        DataTable dt = new DataTable();

        DataColumn imageCol = new DataColumn("imageone", typeof(string));
        dt.Columns.Add(imageCol);

       if (dataset != null)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i][imageCol] = string.Format("<img src='GetAroundHandler.ashx?id={0}' alt='' style='width:100px' />", dt.Rows[i][0].ToString());
            }
        }
        DataList1.DataSource = dataset;
        DataList1.DataBind();
    }
}