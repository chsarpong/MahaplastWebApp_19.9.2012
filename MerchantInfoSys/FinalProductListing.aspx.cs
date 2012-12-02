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


public partial class MerchantInfoSys_FinalProductListing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productcategoryId"] != null)
                lbSesProdfiletOneId.Text = Session["productcategoryId"].ToString();

            if (Session["merchantId"] != null)
                lbMerchantId.Text = Session["merchantId"].ToString();
          
            CreateProductId();
            populateSellingLead();
            populateSellingLead();
        }
    }
    
    private void WriteToFile(string strPath, ref byte[] Buffer)
    {
        // Create a file
        FileStream newFile = new FileStream(strPath, FileMode.Create);

        // Write data to the file
        newFile.Write(Buffer, 0, Buffer.Length);

        // Close file
        newFile.Close();
    }

    private string GetMyName()
    {
        // Get the script name
        string strScript = Request.ServerVariables["SCRIPT_NAME"];

        // Get position of last slash
        int nPos = strScript.LastIndexOf("/");

        // Get everything after slash
        if (nPos > -1)
            strScript = strScript.Substring(nPos + 1);

        return strScript;
    }


    private bool fromScreenToEntityProducts(DataRow dr)
    {
        try
        {
            dr["productid"] = Int32.Parse(lbProductId.Text);
            dr["productcategoryId"] = lbSesProdfiletOneId.Text;
            dr["merchantId"] = lbMerchantId.Text;
            dr["discription"] = tbItemDescription.Text;
            dr["price"] =Int32.Parse(tbPrice.Text);
            dr["quantity"] = Int32.Parse(tbQuantity.Text);
            dr["sellingleadId"] = Int32.Parse(ddlSellinlead.SelectedValue);
            dr["comment"] = TextBoxComment.Text;
            dr["productoptionone"] = tbProductoptionone.Text;
            dr["productoptiontwo"] = tbProductoptiontwo.Text;
            dr["productoptionthree"] = tbProductoptionthree.Text;
            dr["productoptionfour"] = tbProductoptionfour.Text;
            dr["productoptionfive"] = tbProductoptionfive.Text;
            dr["productoptionsix"] = tbProductoptionsix.Text;
            

            return true;
        }
        catch
        {
            LabelErr.Text = "Values are not correct.";
        }
        return false;
    }


    private void CreateProductId()
    {
        bool successful = false;
        // Dataset containing 


        ProductService.serProduct productId = new ProductService.serProduct();
        DataSet dataset = productId.Product_CreateProductId();
       

        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                successful = true;
                string s = dr["productid"].ToString();

                lbProductId.Text = dr["productid"].ToString();
            }
        }
        catch
        {
        }
        if (successful)
        {
            //lbPBIErrorMessage.Text = "Task Id created";
            // New  list must be created
            //loadTask();
            // Initial values to screen
            //setInitialValues();
        }
        else
        {
            LabelErr.Text = "Problem with customer number";
        }
    }

    

    private void populateSellingLead()
    {
        SellingLead.serSellingLead sellinglead = new SellingLead.serSellingLead();
        DataSet dataset = sellinglead.SellingLead_GetAll();


        ddlSellinlead.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["sellingleadId"].ToString() + " : " +
                       dr["sellinglead"].ToString(); ;
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["sellingleadId"].ToString();
            ddlSellinlead.Items.Add(listItem);
        }
    }


    protected void btSaveAndContinue_Click(object sender, EventArgs e)
    {
        //Products

        ProductService.serProduct productInput = new ProductService.serProduct();
        DataSet dataset3 = productInput.Product_GetAll();
        

        DataRow dr3 = dataset3.Tables[0].NewRow();

        bool successfull3 = false;
        

        if (fromScreenToEntityProducts(dr3))
        {
            dataset3.Tables[0].Rows.Add(dr3);
            successfull3 = productInput.UpdateProduct(dataset3);
        }
        if (successfull3)
        {
            LabelErr.Text = "Products details was added";
            Session["productid"] = lbProductId.Text;
            Response.Redirect("ProductPictures.aspx");

        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
        }
    }
}