using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class CreatePersCustAcct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateGender();
            populateDay();
            populateMonth();
            populateYear();
            createBuyerId();
        }
    }

    private void populateGender()
    {
        GenderService.serGender gender = new GenderService.serGender();
        DataSet dataset = gender.Gender_GetAll();

        ddlgender.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["gender"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["gender"].ToString();
            ddlgender.Items.Add(listItem);
        }
    }

    private void populateDay()
    {
        DayService.serDay day = new DayService.serDay();
        DataSet dataset = day.Day_GetAll();

        ddldob_dayBuyer.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["dob_day"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["dob_day"].ToString();
            ddldob_dayBuyer.Items.Add(listItem);
        }
    }

    private void populateMonth()
    {
        MonthService.serMonth month = new MonthService.serMonth();
        DataSet dataset = month.Month_GetAll();

        ddldob_monthBuyer.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["dob_month"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["dob_month"].ToString();
            ddldob_monthBuyer.Items.Add(listItem);
        }
    }

    private void populateYear()
    {
        YearService.serYear year = new YearService.serYear();
        DataSet dataset = year.Year_GetAll();

        ddldob_yearBuyer.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["dob_year"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["dob_year"].ToString();
            ddldob_yearBuyer.Items.Add(listItem);
        }
    
    }

    protected void btIaccept_Click(object sender, EventArgs e)
    {

        BuyerService.serBuyer buyer = new BuyerService.serBuyer();
        DataSet dataset = buyer.Buyer_GetAll();
        DataRow dr = dataset.Tables[0].NewRow();

        bool successfull = false;

        if (fromScreenToEntity(dr))
        {
            dataset.Tables[0].Rows.Add(dr);
            successfull = buyer.UpdateBuyer(dataset);
        }
        if (successfull)
        {
            lbBuyerErrors.Text = "Registration was accepted";
            //Session["customerNumber"] = tbCustomerNumber.Text;
            //Response.Redirect("CustomerAddress.aspx");
           
        }
        else
        {
            lbBuyerErrors.Text = "Transaction rolled back";
        }
    }

    private bool fromScreenToEntity(DataRow dr)
    {
        try
        {
            dr["buyerId"] = Convert.ToInt32(lbBuyerId.Text);
            dr["firstname"] = tbfirstnameBuyer.Text;
            dr["lastname"] = tblastnameBuyer.Text;
            dr["gender"] = ddlgender.SelectedValue;
            dr["dob_month"] = ddldob_monthBuyer.SelectedValue;
            dr["dob_day"] = ddldob_dayBuyer.SelectedValue;
            dr["dob_year"] = ddldob_yearBuyer.SelectedValue;
            dr["emailAddress"] = tbEmailOfBuyer.Text;
            dr["phonenumber"] = tbPhoneOfBuyer.Text;
            dr["buyeruserId"] = tbUserId.Text;
            dr["password"] = tbPassword.Text; 
            dr["reenterpassword"] = tbRePassword.Text; 
            dr["notrobot"] = tbEnterNonRobotCharacter.Text; 

            return true;
        }
        catch
        {
            lbBuyerErrors.Text = "Kindly check input values.";
        }
        return false;
    }

    private void createBuyerId()
    {
        bool successful = false;
        // Call service
        BuyerService.serBuyer createbuyerId = new BuyerService.serBuyer();
        DataSet dataset = createbuyerId.Buyer_CreateBuyerId();

        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                successful = true;
                string s = dr["CreateBuyerId"].ToString();

                lbBuyerId.Text = dr["CreateBuyerId"].ToString();
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
            lbBuyerErrors.Text = "Problem with customer number";
        }
    }
}