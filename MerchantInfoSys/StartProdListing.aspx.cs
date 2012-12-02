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



public partial class MerchantInfoSys_StartProdListing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateCategory();
            GetMerchantId();
        }
    }



    private void populateCategory()
    {
        ProductCategoryService.serProductCategory category = new ProductCategoryService.serProductCategory();
        DataSet dataset = category.ProductCategory_GetAll();


        ListBoxMainCategory.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ListBoxMainCategory.Items.Add(listItem);
        }
    }



    protected void ListBoxMainCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string name;

        // Take customNumber from screen
        try
        {
            name = ListBoxMainCategory.Text;
        }
        catch
        {
            name = "";
        }

        ProductCategoryService.serProductCategory category = new ProductCategoryService.serProductCategory();
        DataSet dataset = category.ProductCategory_GetProdFilteronename(name);

        // Create a DataSet from Database

        ListBCatFilterOne.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ListBCatFilterOne.Items.Add(listItem);
        }
    }
    protected void ListBCatFilterOne_SelectedIndexChanged(object sender, EventArgs e)
    {
        string name;

        // Take customNumber from screen
        try
        {
            name = ListBCatFilterOne.Text;
        }
        catch
        {
            name = "";
        }

        ProductCategoryService.serProductCategory categorynumber = new ProductCategoryService.serProductCategory();
        DataSet dataset = categorynumber.ProductCategory_GetProdOneFilterNumber(name);

        // Create a DataSet from Database

        if (dataset.Tables[0].Rows.Count > 0)
        {
            // Move data from data row to screen 
            DataRow dr = dataset.Tables[0].Rows[0];

            tbMatchingCategory.Text = dr["productcategoryId"].ToString();

        }
        else
        {
            //setInitialValues();
            lbErr.Text = "No cat numb not selected";
        }
    }
    protected void btContinue_Click(object sender, EventArgs e)
    {
        Session["productcategoryId"] = tbMatchingCategory.Text;
        Session["merchantId"] = tbBuyerId.Text;
        Response.Redirect("FinalProductListing.aspx");
    }


    private void GetMerchantId()
    {
        
        bool successful = false;
        // Dataset containing 

        MerchantService.serMerchant merchantId = new MerchantService.serMerchant();
        DataSet dataset = merchantId.Merchant_GetMerchantId();


        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                successful = true;
                string s = dr["merchantId"].ToString();

                tbBuyerId.Text = dr["merchantId"].ToString();
            }
        }
        catch
        {
        }
        if (successful)
        {
            //LabelErr.Text = "Task Id created";
            // New  list must be created
            //loadTask();
            // Initial values to screen
            //setInitialValues();
        }
        else
        {
            lbErr.Text = "Problem with customer number";
        }
    }
}