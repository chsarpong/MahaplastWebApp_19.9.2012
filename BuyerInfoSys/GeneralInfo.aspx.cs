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

public partial class BuyerInfoSys_GeneralInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            fromEntityToScreen();
        }
    }

    private void fromEntityToScreen()
    {
        int BuyerId = 0;
        if (Session["buyerId"] != null)
            BuyerId = Convert.ToInt32(Session["buyerId"].ToString());

        BuyerService.serBuyer general = new BuyerService.serBuyer();
        DataSet dataset = general.Buyer_GetGeneral(BuyerId);
        
        //dataset = DatasetCustomer.CustomerSelectOne(CustomerNumber);
        // Create a DataSet from Database

        if (dataset.Tables[0].Rows.Count > 0)
        {
            // Move data from data row to screen 
            DataRow dr = dataset.Tables[0].Rows[0];

            tbfirstnameBuyer.Text = dr["firstname"].ToString();
            tblastnameBuyer.Text = dr["lastname"].ToString();
            tbUserId.Text = dr["buyeruserId"].ToString();
            tbPassword.Text = dr["password"].ToString();
            tbCurrentPasword.Text = dr["password"].ToString();
            //tbNewPssword.Text = dr["discountRate"].ToString();
            //ddldob_monthBuyer.Text = dr["termsOfDeliveryCode"].ToString();
            tbEmail.Text = dr["emailAddress"].ToString();
            //tbAddAnEmail.Text = dr["lastNameOfContactPerson"].ToString();

        }
        else
        {
            setInitialValues();
            lbGneralError.Text = "No Customer selected";
        }
    }

    private void setInitialValues()
    {

        //ddlEmployeeId.SelectedValue = "";
        tbfirstnameBuyer.Text = "";
        tblastnameBuyer.Text = "";
        tbUserId.Text = "";
        tbPassword.Text = "";
        tbCurrentPasword.Text = "";
        tbNewPssword.Text = "";
        tbEmail.Text = "";
        tbAddAnEmail.Text = "";
       

        //lbSprintBacklogItemId.Items.Clear();
        //ListBoxTask.Items.Clear();
    }
}