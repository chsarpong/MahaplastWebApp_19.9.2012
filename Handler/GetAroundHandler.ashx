<%@ WebHandler Language="C#" Class="GetAroundHandler" %>

using System;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;

public class GetAroundHandler : IHttpHandler {
    
    //public void ProcessRequest (HttpContext context) {
    //    context.Response.ContentType = "text/plain";
    //    context.Response.Write("Hello World");
    //}
    

    public void ProcessRequest(HttpContext context)
    {

        int proidforimage = 0;

        if (context.Request.QueryString["productcategoryId"] != null)
            proidforimage = Convert.ToInt32(context.Request.QueryString["productcategoryId"]);


        ProductImageService.serProdctImage imagebox = new ProductImageService.serProdctImage();
        DataSet dataset = imagebox.ProductImage_GetBoxoneImage(proidforimage);

       
        foreach (DataRow dr in dataset.Tables[0].Rows)
        {

            byte[] img = (byte[])dr["imageone"];
       
            MemoryStream ms = new MemoryStream(img);
            Image.FromStream(ms);

            context.Response.ContentType = "image/jpeg";
            context.Response.BinaryWrite((byte[])dr["imageone"]);
            
            
            System.Drawing.Image b;
            //creating object of bitmap
            Bitmap bitMap = null;
            //checking byte[] 
            if (img != null && img.Length > 0)
            {
                //creating memoryStream object
                using (MemoryStream mm = new MemoryStream())
                {
                    //wrting to memoryStream
                    mm.Write(img, 0, img.Length);
                    b = System.Drawing.Image.FromStream(mm);
                    bitMap = new System.Drawing.Bitmap(b, b.Width, b.Height);
                    //creating graphic object, to produce High Quality images.
                    using (Graphics g = Graphics.FromImage(bitMap))
                    {
                        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                        g.SmoothingMode = SmoothingMode.HighQuality;
                        g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                        g.DrawImage(bitMap, 0, 0, b.Width, b.Height);
                        g.Dispose(); b.Dispose(); mm.Dispose();
                        //changing content type of handler page
                        context.Response.ContentType = "image/jpeg";
                        //saving bitmap image
                        bitMap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
                        bitMap.Dispose();
                    }
                }
            }
        }
    }
    
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}

