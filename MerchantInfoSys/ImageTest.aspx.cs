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
//using System.Drawing.Imaging;
//using System.Drawing;
using System.Drawing;
using System.Drawing.Drawing2D;



public partial class MerchantInfoSys_ImageTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            populateGridViewCustomers();
        }

    }


    //public static Image bytetoimage(Byte[] byt)
    //{
    //    MemoryStream ms = new MemoryStream(byt);
    //    Image retuimage = Image.ReferenceEqual (ms);
    //}


    private void populateGridViewCustomers()
    {

        int productimageId = 0;

        try
        {
            productimageId = Convert.ToInt32(TextBox1mage.Text);
        }

        catch
        {
            productimageId = 0;

        }


        ProductImageService.serProdctImage image = new ProductImageService.serProdctImage();
        DataSet dataset = image.ProductImage_GetImageTest(productimageId);

        //Byte[] imageData = new Byte[0];
        ////imageData = (Byte[])(dataset.Tables[0].Rows[0]["imageone"]);
        //MemoryStream stream = new MemoryStream(imageData);



        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewTestImage.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewTestImage.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewTestImage.DataBind();
            // Set control visible

            GridViewTestImage.Visible = true;
        }
        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }
    }


    //public override void ProcessRequest(HttpContext context)
    //{

    //    context.Response.ContentType = "image/jpeg";
    //    Stream strm = ShowEmpImage();
    //    byte[] buffer = new byte[4096];
    //    int byteSeq = strm.Read(buffer, 0, 4096);


    //    while (byteSeq > 0)
    //    {
    //        context.Response.OutputStream.Write(buffer, 0, byteSeq);

    //        byteSeq = strm.Read(buffer, 0, 4096);
    //    }


    //    context.Response.BinaryWrite(buffer);
    //}


    //private Stream ShowEmpImage()
    //{


    //    ProductImageService.serProdctImage image = new ProductImageService.serProdctImage();
    //    DataSet dataset = image.ProductImage_GetImageTest();

    //    // Create a DataSet from Database
    //    bool successful = false;

    //    if (dataset.Tables[0].Rows.Count > 0)
    //    {
    //        // Move data from data row to screen 
    //        DataRow dr = dataset.Tables[0].Rows[0];

    //        byte[] img = (byte[])dr["imageone"];

    //        int byteSeq = strm.Read(buffer, 0, 4096);

    //        if(successful)
    //        {

    //        }

    //    }


    //    else
    //    {
    //        //setInitialValues();
    //        //lbErrorViewPBI.Text = "No cat numb not selected";
    //    }
    //}

    //public bool IsReusable
    //{
    //    get
    //    {
    //        return false;
    //    }
    //}



    protected void btAddImage_Click1(object sender, EventArgs e)
    {
        int productimageId = 0;

        try
        {
            productimageId = Convert.ToInt32(TextBox1mage.Text);
           
        }

        catch
        {
            productimageId = 0;

        }



        ProductImageService.serProdctImage image = new ProductImageService.serProdctImage();
        DataSet dataset = image.ProductImage_GetImageTest(productimageId);

        

        if (dataset != null)
        {
            // A user can select a person from the grid
            GridViewTestImage.AutoGenerateSelectButton = true;
            // Set the DataSet to cotrols DataSource
            GridViewTestImage.DataSource = dataset;
            // Bind values to controls rows and columns
            GridViewTestImage.DataBind();
            // Set control visible


            GridViewTestImage.Visible = true;

            Image1.ImageUrl = "~/Handler/Handler.ashx?productimageId=" + productimageId;
            Image3.ImageUrl = "~/Handler/Handler.ashx?productimageId=" + productimageId;
        }


        else
        {
            //lbErrorViewPBI.Text = "Sql sentence was not successful.";
        }

       

    }

    //public override void ProcessRequest(HttpContext context)
    //{


    //    int productimageId = 1020;


    //    ProductImageService.serProdctImage imageid = new ProductImageService.serProdctImage();
    //    DataSet datasetforid = imageid.ProductImage_GetImageTest(productimageId);

    //    if (context.Request.QueryString["productimageId"] != null)
    //        productimageId = Convert.ToInt32(context.Request.QueryString["productimageId"]);


    //    ProductImageService.serProdctImage image = new ProductImageService.serProdctImage();
    //    DataSet dataset = image.ProductImage_Test2(productimageId);



    //    if (dataset.Tables[0].Rows.Count > 0)
    //    {
    //        // Move data from data row to screen 
    //        DataRow dr = dataset.Tables[0].Rows[0];
    //        byte[] img = (byte[])dr["imagetwo"];
    //        MemoryStream ms = new MemoryStream(img);
    //        System.Drawing.Image.FromStream(ms);

    //        context.Response.ContentType = "image/jpeg";
    //        context.Response.BinaryWrite((byte[])dr["imagetwo"]);




    //        System.Drawing.Image b;
    //        //creating object of bitmap
    //        Bitmap bitMap = null;
    //        //checking byte[] 
    //        if (img != null && img.Length > 0)
    //        {
    //            //creating memoryStream object
    //            using (MemoryStream mm = new MemoryStream())
    //            {
    //                //wrting to memoryStream
    //                mm.Write(img, 0, img.Length);
    //                b = System.Drawing.Image.FromStream(mm);
    //                bitMap = new System.Drawing.Bitmap(b, b.Width, b.Height);
    //                //creating graphic object, to produce High Quality images.
    //                using (Graphics g = Graphics.FromImage(bitMap))
    //                {
    //                    g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
    //                    g.SmoothingMode = SmoothingMode.HighQuality;
    //                    g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
    //                    g.DrawImage(bitMap, 0, 0, b.Width, b.Height);
    //                    g.Dispose(); b.Dispose(); mm.Dispose();
    //                    //changing content type of handler page
    //                    context.Response.ContentType = "image/jpeg";
    //                    //saving bitmap image
    //                    bitMap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
    //                    bitMap.Dispose();

    //                }
    //            }
    //        }
    //    }
    //}
 
}