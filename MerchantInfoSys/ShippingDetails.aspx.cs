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

public partial class MerchantInfoSys_ShippingDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productid"] != null)
                lbSessionProdId.Text = Session["productid"].ToString();

            populateShippinCompany();
            CreateShippinDetailId();
        }

    }
    protected void btSaveShippinDetail_Click(object sender, EventArgs e)
    {
        //ShippingType deatils 
        ShippingType.serShippingType inboundshippingdetail = new ShippingType.serShippingType();
        DataSet dataset = inboundshippingdetail.ShippingType_GetAll();

        DataRow dr = dataset.Tables[0].NewRow();

        bool successfull = false;

        if (fromScreenToEntityShippingType(dr))
        {
            dataset.Tables[0].Rows.Add(dr);
            successfull = inboundshippingdetail.UpdateShippingType(dataset);
        }
        if (successfull)
        {
            LabelErr.Text = "Shipping details was added";

        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
        }
    }

    private bool fromScreenToEntityShippingType(DataRow dr)
    {
        try
        {
            dr["shippingtypeId"] = tbShippingId.Text;
            dr["productid"] = lbSessionProdId.Text;
            dr["shippingcompanyname"] = ddlshippingcompanyname.SelectedValue;
            dr["shippingcost"] = Int32.Parse(tbShippingcost.Text);
            dr["handlingtimeindays"] = Int32.Parse(tbHandlingtimeindays.Text);
            dr["returnpolicy"] = tbReturnpolicy.Text;
            dr["createdon"] =Convert.ToDateTime(tbCreatedon.Text);


            return true;
        }
        catch
        {
            LabelErr.Text = "Values are not correct.";
        }
        return false;
    }

    private void CreateShippinDetailId()
    {
        bool successful = false;
        // Dataset containing 



        ShippingType.serShippingType shippingdetail_id = new ShippingType.serShippingType();
        DataSet dataset = shippingdetail_id.ShippingType_CreateShippingtypeId();


        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                successful = true;
                string s = dr["ShippingId"].ToString();

                tbShippingId.Text = dr["ShippingId"].ToString();
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

    private void populateShippinCompany()
    {

        ShippingCompanyService.serShippingCompany theshippingcompany = new ShippingCompanyService.serShippingCompany();
        DataSet dataset = theshippingcompany.ShippingCompany_GetAll();

        ddlshippingcompanyname.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["shippingcompanyid"].ToString() + " : " +
                       dr["shippingcompanyname"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["shippingcompanyname"].ToString();
            ddlshippingcompanyname.Items.Add(listItem);
        }
    }

    
}