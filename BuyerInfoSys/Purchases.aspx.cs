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


public partial class BuyerInfoSys_Purchases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateCategory();
            populateMerchant();
        }
    }

    protected void btSearchOrderNum_Click(object sender, EventArgs e)
    {
        int orderNumber;

        // Take customNumber from screen
        try
        {
            orderNumber = Int32.Parse(tbSearchOrderNum.Text);
        }
        catch
        {
            orderNumber = 0;
        }
        // Load the productbacklog according to productbacklogid
        lbPurchaseErr.Text = "";                          // Empty error text
        //System.Data.DataSet dataset = null;         // Null dataSet is default

        BuyerService.serBuyer orderdetails = new BuyerService.serBuyer();
        DataSet dataset = orderdetails.Buyer_GetPurchase(orderNumber);
        // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewPurchases.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewPurchases.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewPurchases.DataBind();
            // Set control visible

            GridViewPurchases.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }

    private void populateMerchant()
    {
        MerchantService.serMerchant businessname = new MerchantService.serMerchant();
        DataSet dataset = businessname.Merchant_GetBusinessname();
       

        ListBoxMerchant.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["businessname"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["businessname"].ToString();
            ListBoxMerchant.Items.Add(listItem);
        }
    }

    private void populateCategory()
    {
        ProductCategoryService.serProductCategory category = new ProductCategoryService.serProductCategory();
        DataSet dataset = category.ProductCategory_GetAll();
  

        ListBoxCategory.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ListBoxCategory.Items.Add(listItem);
        }
    }
    protected void ListBoxCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string categoryname;

        // Take customNumber from screen
        try
        {
            categoryname = ListBoxCategory.Text;
        }
        catch
        {
            categoryname = "";
        }
        // Load the productbacklog according to productbacklogid
        lbPurchaseErr.Text = "";                          // Empty error text
        //System.Data.DataSet dataset = null;         // Null dataSet is default

        BuyerService.serBuyer category = new BuyerService.serBuyer();
        DataSet dataset = category.Buyer_GetPurchaseByCatname(categoryname);
                // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewPurchases.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewPurchases.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewPurchases.DataBind();
            // Set control visible

            GridViewPurchases.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }
    protected void ListBoxMerchant_SelectedIndexChanged(object sender, EventArgs e)
    {

        string bizname;

        // Take customNumber from screen
        try
        {
            bizname = ListBoxMerchant.Text;
        }
        catch
        {
            bizname = "";
        }
        // Load the productbacklog according to productbacklogid
        lbPurchaseErr.Text = "";                          // Empty error text
        //System.Data.DataSet dataset = null;         // Null dataSet is default

        BuyerService.serBuyer merchant = new BuyerService.serBuyer();
        DataSet dataset = merchant.Buyer_GetPurchaseByMerchantbname(bizname);

        // Create a DataSet from Database

        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewPurchases.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewPurchases.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewPurchases.DataBind();
            // Set control visible

            GridViewPurchases.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }
}