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

public partial class CreateBusAcct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateMerchantType();
        }
    }

    private void populateMerchantType()
    {
        MerchantTypeService.serMerchantType merchanttype = new MerchantTypeService.serMerchantType();
        DataSet dataset = merchanttype.MerchantType_GetTypename();

             ddlMerchantType.Items.Clear();

        foreach (DataRow dr in dataset.Tables[0].Rows)
        {
            string s = dr["merchanttypename"].ToString();
            ListItem listItem = new ListItem();
            listItem.Text = s;
            listItem.Value = dr["merchanttypename"].ToString();
            ddlMerchantType.Items.Add(listItem);
        }
    }
}