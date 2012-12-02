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

public partial class MerchantInfoSys_PaymentDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //if (Session["productid"] != null)
            //    lbSessionProdId.Text = Session["productid"].ToString();

            populat_ePayPaymentMenthod();
        }
    }


    private void populat_ePayPaymentMenthod()
    {

        PaymentTypeService.serPaymentType ePaymentType = new PaymentTypeService.serPaymentType();
        DataSet dataset = ePaymentType.PaymentType_GetPaymentType();
        

        ddlPaymentMeth.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["paymenttypecode"].ToString() + " : " +
                       dr["name"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["name"].ToString();
            ddlPaymentMeth.Items.Add(listItem);
        }
    }   
}