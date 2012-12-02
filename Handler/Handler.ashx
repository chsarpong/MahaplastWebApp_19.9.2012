<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;

public class Handler : IHttpHandler
{
    //public void ProcessRequest(HttpContext context)
    //{

        
    //    int productimageId = 0;

        
        
    //    if (context.Request.QueryString["productimageId"] != null)
    //        productimageId = Convert.ToInt32(context.Request.QueryString["productimageId"]);
       

    //    context.Response.ContentType = "image/jpeg";
    //    Stream strm = ShowEmpImage(productimageId);
    //    byte[] buffer = new byte[4096];
    //    int byteSeq = strm.Read(buffer, 0, 4096);


    //    while (byteSeq > 0)
    //    {
    //        context.Response.OutputStream.Write(buffer, 0, byteSeq);
    //        byteSeq = strm.Read(buffer, 0, 4096);
    //    }

    //    context.Response.BinaryWrite(buffer);
    //}

    //public Stream ShowEmpImage(int productimageId)
    //{
       
    //    byte[] img = new byte[4096]; 
        
    //    try
    //    { 
    //        return new MemoryStream((byte[])img);
    //    }
    //    catch
    //    {
    //        return null;
    //    }
       
    //}

    //public bool IsReusable
    //{
    //    get
    //    {
    //        return false;
    //    }
    //}
    

    public void ProcessRequest(HttpContext context)
    {


        int productimageId = 1019;

        if (context.Request.QueryString["productimageId"] != null)
            productimageId = Convert.ToInt32(context.Request.QueryString["productimageId"]);
       

        ProductImageService.serProdctImage image = new ProductImageService.serProdctImage();
        DataSet dataset = image.ProductImage_Test2(productimageId);
        
  
            
        if (dataset.Tables[0].Rows.Count > 0)
        {
            // Move data from data row to screen 
            DataRow dr = dataset.Tables[0].Rows[0];
            byte[] img = (byte[])dr["imagetwo"];
            MemoryStream ms = new MemoryStream(img);
            Image.FromStream(ms);
            
            context.Response.ContentType = "image/jpeg";
            context.Response.BinaryWrite((byte[])dr["imagetwo"]);

            
            

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
            //string base64;
            //base64 = (string)dr["imagetwo"];

            //Base64ToImage(base64);
            //Convert from base64
            //base64 = Convert.ToString(img);
            //img = Convert.FromBase64String(base64);
            //DecodeWithString();
            //MemoryStream ms = new MemoryStream(img, 0, img.Length);
            //Image imagebytetoimage = Image.FromStream(ms, true);
            ////Convert byte to images
            //ms.Write(img, 0, img.Length);
           
            



            //System.IO.StreamReader inFile;
            //string base64String;
            ////byte[] base64;

            //try
            //{
            //    char[] base64CharArray;
            //    inFile = new System.IO.StreamReader(base64,
            //                                    System.Text.Encoding.ASCII);
            //    base64CharArray = new char[inFile.BaseStream.Length];
            //    inFile.Read(base64CharArray, 0, (int)inFile.BaseStream.Length);
            //    base64String = new string(base64CharArray);
            //}
            //catch (System.Exception exp)
            //{
            //    // Error creating stream or reading from it.
            //    System.Console.WriteLine("{0}", exp.Message);
            //    return;
            //}

            //// Convert the Base64 UUEncoded input into binary output.
            //byte[] binaryData;
            //try
            //{
            //    binaryData =
            //        System.Convert.FromBase64String(base64String);
            //}
            //catch (System.ArgumentNullException)
            //{
            //    System.Console.WriteLine("Base 64 string is null.");
            //    return;
            //}
            //catch (System.FormatException)
            //{
            //    System.Console.WriteLine("Base 64 string length is not " +
            //        "4 or is not an even multiple of 4.");
            //    return;
            //}

            // Write out the decoded data.
            //string outputFileName;
            //System.IO.FileStream outFile;
            //try
            //{
            //    outFile = new System.IO.FileStream(outputFileName,
            //                                       System.IO.FileMode.Create,
            //                                       System.IO.FileAccess.Write);
            //    outFile.Write(binaryData, 0, binaryData.Length);
            //    outFile.Close();
            //}
            //catch (System.Exception exp)
            //{
            //    // Error creating stream or writing to it.
            //    System.Console.WriteLine("{0}", exp.Message);
            //}       
                 
        }
       
    }
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }  
   
    //public void DecodeWithString()
    //{
    //    System.IO.StreamReader inFile;
    //    string base64String;


    //    try
    //    {
    //        char[] base64CharArray;
    //        inFile = new System.IO.StreamReader(inputFileName,
    //                                        System.Text.Encoding.ASCII);
    //        base64CharArray = new char[inFile.BaseStream.Length];
    //        inFile.Read(base64CharArray, 0, (int)inFile.BaseStream.Length);
    //        base64String = new string(base64CharArray);
    //    }
    //    catch (System.Exception exp)
    //    {
    //        // Error creating stream or reading from it.
    //        System.Console.WriteLine("{0}", exp.Message);
    //        return;
    //    }

    //    // Convert the Base64 UUEncoded input into binary output.
    //    byte[] binaryData;
    //    try
    //    {
    //        binaryData =
    //            System.Convert.FromBase64String(base64String);
    //    }
    //    catch (System.ArgumentNullException)
    //    {
    //        System.Console.WriteLine("Base 64 string is null.");
    //        return;
    //    }
    //    catch (System.FormatException)
    //    {
    //        System.Console.WriteLine("Base 64 string length is not " +
    //            "4 or is not an even multiple of 4.");
    //        return;
    //    }

    //    // Write out the decoded data.
    //    System.IO.FileStream outFile;
    //    try
    //    {
    //        outFile = new System.IO.FileStream(outputFileName,
    //                                           System.IO.FileMode.Create,
    //                                           System.IO.FileAccess.Write);
    //        outFile.Write(binaryData, 0, binaryData.Length);
    //        outFile.Close();
    //    }
    //    catch (System.Exception exp)
    //    {
    //        // Error creating stream or writing to it.
    //        System.Console.WriteLine("{0}", exp.Message);
    //    }
    //}

    public static Image Base64ToImage(string base64String)
    {
        // Convert Base64 String to byte[]
        byte[] imageBytes = Convert.FromBase64String(base64String);
        MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
        // Convert byte[] to Image
        ms.Write(imageBytes, 0, imageBytes.Length);
        Image image = Image.FromStream(ms, true);
        return image;
    }
}



