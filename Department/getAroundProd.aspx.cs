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
using Facebook;
using Facebook.Reflection;


public partial class Department_getAroundProd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productid"] != null)
                lbSesProductId.Text = Session["productid"].ToString();
            getGateroryId(); 
            get();
        }
    }

    private void getGateroryId()
    {

        int proidforimage = Convert.ToInt32(lbSesProductId.Text);
        Image1.ImageUrl = "~/Handler/GetAroundHandler.ashx?productimageId=" + proidforimage;
       
    }

    private void get()
    {
        FacebookClient dr = new FacebookClient();
        var accessToken = "AAAIJL8P4hM0BAPqeAJT65AmnM60LUP34oaDo0IRZCibMWQZAk8OOhLQmeyZCTbZCOPPxAVl4iqXkyaG8665IUHigjz3ZCoJowiTLFYZBlTz6lZAa60aoAZBZC";
        var client = new FacebookClient(accessToken);
        dynamic me = client.Get("me");
        string aboutMe = me.about;
    }


    
   
}