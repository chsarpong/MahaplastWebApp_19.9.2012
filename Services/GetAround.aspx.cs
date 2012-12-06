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

public partial class Services_GetAround : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            getGateroryId();
            getImage1Fashion();
            populateFashionCategory1();
            populateFashionCategory2();
        }
    }

    private void getGateroryId()
    {
   
        string description = "";

        // Dataset containing 
        ProductService.serProduct prodidtofindimage = new ProductService.serProduct();
        DataSet dataset = prodidtofindimage.Product_GetProdIdToFindImage(description);
        

        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                //DataRow dr = dataset.Tables[0].Rows[0];
               
                int proidforimage = 0;

                lbproidforimage.Text = dr["productid"].ToString();
                proidforimage = Convert.ToInt32(lbproidforimage.Text);
                Session["productid"] = proidforimage;

                Image5.ImageUrl = "~/Handler/GetAroundHandler.ashx?productimageId=" + proidforimage;

            }
        }
        catch
        {



        }

    }

    private void getImage1Fashion()
    {
        string productcatname = "Fashion";

        Image1.ImageUrl = "~/Handler/FashionHomeHandler.ashx?name=" + productcatname;
        Image4.ImageUrl = "~/Handler/FashImg2Handler.ashx?name=" + productcatname;
        Image3.ImageUrl = "~/Handler/Fashionbigbanner.ashx?name=" + productcatname;
        Image2.ImageUrl = "~/Handler/FashMidImHandler.ashx?name=" + productcatname;

    }

   
    protected void btSearchOrderNum_Click(object sender, EventArgs e)
    {
        int productcategoryId = 0;

        productcategoryId = Convert.ToInt32(tbSearchOrderNum.Text);
        Session["productcategoryId"] = tbSearchOrderNum.Text;
        Response.Redirect("Sales.aspx");

        
    }

    private void populateFashionCategory1()
    {

        
        ProductCategoryService.serProductCategory getfascategoryone = new ProductCategoryService.serProductCategory();
        DataSet dataset = getfascategoryone.ProductCategoryOne_GetAll();
       

        ListBoxF1.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ListBoxF1.Items.Add(listItem);
        }
    }

    private void populateFashionCategory2()
    {


        ProductCategoryService.serProductCategory getfascategorytwo = new ProductCategoryService.serProductCategory();
        DataSet dataset = getfascategorytwo.ProductCategorytwo_GetAll();



        ListBoxF2.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ListBoxF2.Items.Add(listItem);
        }
    }
}
