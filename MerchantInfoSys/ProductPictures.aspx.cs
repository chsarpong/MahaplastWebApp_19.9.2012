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

public partial class MerchantInfoSys_ProductPictures : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["productid"] != null)
                lbSessionProdId.Text = Session["productid"].ToString();

            CreateProductImageId();
        }
    }
    protected void btUpload1_Click(object sender, EventArgs e)
    {
        ProductImageService.serProdctImage productimages = new ProductImageService.serProdctImage();
        DataSet dataset2 = productimages.ProductImage_GetAll();


        DataRow dr2 = dataset2.Tables[0].NewRow();

        bool successfull2 = false;

        if (fromScreenToEntityProductImageTest1(dr2))
        {
            dataset2.Tables[0].Rows.Add(dr2);
            successfull2 = productimages.UpdateProdctImage(dataset2);
        }
        if (successfull2)
        {
            LabelErr.Text = "ProductImageService details was added";
            Session["productid"] = lbSessionProdId.Text;
            //Response.Redirect("ShippingDetails.aspx");

        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
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


    protected void btUpload2_Click(object sender, EventArgs e)
    {

        bool successful = false;
        // Dataset containing accounts
        ProductImageService.serProdctImage productimages = new ProductImageService.serProdctImage();
        DataSet dataset = productimages.ProductImage_GetAll();
        // Find the account to update
        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                if (dr["productimageId"].ToString() == tbProductImageId.Text.Trim())
                {
                    // Account found. Move values from screen to row
                    fromScreenToEntityProductImageTest2(dr);
                    successful = true;
                }
            }
            if (successful)
                // Update the database
                successful = productimages.UpdateProdctImage(dataset); 
        }
        catch
        {


        }

        if (successful)
        {
            LabelErr.Text = "ProductImageService details was added";
            Session["productid"] = lbSessionProdId.Text;
        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
        }

    }

    protected void btUpload3_Click(object sender, EventArgs e)
    {
        bool successful = false;
        // Dataset containing accounts
        ProductImageService.serProdctImage productimages = new ProductImageService.serProdctImage();
        DataSet dataset = productimages.ProductImage_GetAll();
        // Find the account to update
        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                if (dr["productimageId"].ToString() == tbProductImageId.Text.Trim())
                {
                    // Account found. Move values from screen to row
                    fromScreenToEntityProductImageTest3(dr);
                    successful = true;
                }
            }
            if (successful)
                // Update the database
                successful = productimages.UpdateProdctImage(dataset);
        }
        catch
        {


        }

        if (successful)
        {
            LabelErr.Text = "ProductImageService details was added";
            Session["productid"] = lbSessionProdId.Text;
        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
        }

    }

    protected void btUpload4_Click(object sender, EventArgs e)
    {
        bool successful = false;
        // Dataset containing accounts
        ProductImageService.serProdctImage productimages = new ProductImageService.serProdctImage();
        DataSet dataset = productimages.ProductImage_GetAll();
        // Find the account to update
        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                if (dr["productimageId"].ToString() == tbProductImageId.Text.Trim())
                {
                    // Account found. Move values from screen to row
                    fromScreenToEntityProductImageTest4(dr);
                    successful = true;
                }
            }
            if (successful)
                // Update the database
                successful = productimages.UpdateProdctImage(dataset);
        }
        catch
        {


        }

        if (successful)
        {
            LabelErr.Text = "ProductImageService details was added";
            Session["productid"] = lbSessionProdId.Text;
        }
        else
        {
            LabelErr.Text = "Transaction rolled back";
        }
    }
    protected void btSaveImage_Click(object sender, EventArgs e)
    {
            Response.Redirect("ShippingDetails.aspx");
    }

    //private bool fromScreenToEntityProductImageService(DataRow dr)
    //{
    //    try
    //    {
    //        byte[] img1 = new byte[FileUpload1.PostedFile.ContentLength];
    //        byte[] img2 = new byte[FileUpload2.PostedFile.ContentLength];
    //        byte[] img3 = new byte[FileUpload3.PostedFile.ContentLength];
    //        byte[] img4 = new byte[FileUpload4.PostedFile.ContentLength];


    //        dr["productimageId"] = Int32.Parse(tbProductImageId.Text);
    //        dr["productid"] = lbSessionProdId.Text;
    //        dr["imageone"] = img1;
    //        dr["imagetwo"] = img2;
    //        dr["imagethree"] = img3;
    //        dr["imagefour"] = img4;


    //        return true;
    //    }
    //    catch
    //    {
    //        LabelErr.Text = "Values are not correct.";
    //    }
    //    return false;
    //}

    private void CreateProductImageId()
    {
        bool successful = false;
        // Dataset containing 


        ProductImageService.serProdctImage prodImageId = new ProductImageService.serProdctImage();
        DataSet dataset = prodImageId.ProductImage_CreateProductImgId();

        try
        {
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                successful = true;
                string s = dr["productimageId"].ToString();

                tbProductImageId.Text = dr["productimageId"].ToString();
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


    private bool fromScreenToEntityProductImageTest1(DataRow dr)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {
                        string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("/MahaplastWebApp_19.9.2012/Images") + filename);
                        LabelErr.Text = "Upload status: File uploaded!";
                    }
                    else
                        LabelErr.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    LabelErr.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                LabelErr.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }

        if (FileUpload1.PostedFile != null)
        {

            HttpPostedFile myimage = FileUpload1.PostedFile;

            int nFileLen = myimage.ContentLength;

            byte[] img = new byte[FileUpload1.PostedFile.ContentLength];

            if (nFileLen > 0)
            {
                // Allocate a buffer for reading of the file
                byte[] myData = new byte[nFileLen];

                // Read uploaded file from the Stream
                myimage.InputStream.Read(myData, 0, nFileLen);

                dr["productimageId"] = Int32.Parse(tbProductImageId.Text);
                dr["productid"] = lbSessionProdId.Text;
                dr["imageone"] = myData;
                //dr["imagetwo"] = myData;
                //dr["imagethree"] = myData;
                //dr["imagefour"] = myData;



                // Create a name for the file to store
                string strFilename = Path.GetFileName(myimage.FileName);

                // Write data into a file
                WriteToFile(Server.MapPath(strFilename), ref myData);

                // Set label's text
                LabelErr.Text =
                    "Filename: " + strFilename + "<br>" +
                    "Size: " + nFileLen.ToString() + "<p>";


                // Set URL of the the object to point to the file we've just saved
                imgDB.ImageUrl = strFilename;
                imgDB.ToolTip = "This file was stored to as file.";
                LabelErr.Text = imgDB.ImageUrl;


                imgDB.ToolTip = "This file was stored in database.";

                // show the images and text
                imgDB.Visible = true;
                imgDB.Visible = true;
                //lblText1.Visible = true;
                //lblText2.Visible = true;


            }
        }
        return true;
    }  

    private bool fromScreenToEntityProductImageTest2(DataRow dr)
    {
        if (FileUpload2.HasFile)
        {
            try
            {
                if (FileUpload2.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload2.PostedFile.ContentLength < 1024000)
                    {
                        string filename = System.IO.Path.GetFileName(FileUpload2.FileName);
                        FileUpload2.SaveAs(Server.MapPath("/MahaplastWebApp_19.9.2012/Images") + filename);
                        LabelErr.Text = "Upload status: File uploaded!";
                    }
                    else
                        LabelErr.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    LabelErr.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                LabelErr.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }

        if (FileUpload2.PostedFile != null)
        {

            HttpPostedFile myimage = FileUpload2.PostedFile;

            int nFileLen = myimage.ContentLength;

            byte[] img = new byte[FileUpload2.PostedFile.ContentLength];

            if (nFileLen > 0)
            {
                // Allocate a buffer for reading of the file
                byte[] myData = new byte[nFileLen];

                // Read uploaded file from the Stream
                myimage.InputStream.Read(myData, 0, nFileLen);

                    dr["productimageId"] = Int32.Parse(tbProductImageId.Text);
                    dr["productid"] = lbSessionProdId.Text;
                    //dr["imageone"] = myData;
                    dr["imagetwo"] = myData;
                    //dr["imagethree"] = myData;
                    //dr["imagefour"] = myData;

                
              
                // Create a name for the file to store
                string strFilename = Path.GetFileName(myimage.FileName);

                // Write data into a file
                WriteToFile(Server.MapPath(strFilename), ref myData);

                // Set label's text
                LabelErr.Text =
                    "Filename: " + strFilename + "<br>" +
                    "Size: " + nFileLen.ToString() + "<p>";


                // Set URL of the the object to point to the file we've just saved
                imgDB2.ImageUrl = strFilename;
                imgDB2.ToolTip = "This file was stored to as file.";
                LabelErr.Text = imgDB2.ImageUrl;


                imgDB2.ToolTip = "This file was stored in database.";

                // show the images and text
                imgDB2.Visible = true;
                imgDB2.Visible = true;
                //lblText1.Visible = true;
                //lblText2.Visible = true;

                
            }
        }
        return true;
    }

    private bool fromScreenToEntityProductImageTest3(DataRow dr)
    {
        if (FileUpload3.HasFile)
        {
            try
            {
                if (FileUpload3.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload3.PostedFile.ContentLength < 1024000)
                    {
                        string filename = System.IO.Path.GetFileName(FileUpload3.FileName);
                        FileUpload3.SaveAs(Server.MapPath("/MahaplastWebApp_19.9.2012/Images") + filename);
                        LabelErr.Text = "Upload status: File uploaded!";
                    }
                    else
                        LabelErr.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    LabelErr.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                LabelErr.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }

        if (FileUpload3.PostedFile != null)
        {

            HttpPostedFile myimage = FileUpload3.PostedFile;

            int nFileLen = myimage.ContentLength;

            byte[] img = new byte[FileUpload3.PostedFile.ContentLength];

            if (nFileLen > 0)
            {
                // Allocate a buffer for reading of the file
                byte[] myData = new byte[nFileLen];

                // Read uploaded file from the Stream
                myimage.InputStream.Read(myData, 0, nFileLen);

                dr["productimageId"] = Int32.Parse(tbProductImageId.Text);
                dr["productid"] = lbSessionProdId.Text;
                //dr["imageone"] = myData;
                //dr["imagetwo"] = myData;
                dr["imagethree"] = myData;
                //dr["imagefour"] = myData;



                // Create a name for the file to store
                string strFilename = Path.GetFileName(myimage.FileName);

                // Write data into a file
                WriteToFile(Server.MapPath(strFilename), ref myData);

                // Set label's text
                LabelErr.Text =
                    "Filename: " + strFilename + "<br>" +
                    "Size: " + nFileLen.ToString() + "<p>";


                // Set URL of the the object to point to the file we've just saved
                imgDB3.ImageUrl = strFilename;
                imgDB3.ToolTip = "This file was stored to as file.";
                LabelErr.Text = imgDB3.ImageUrl;
                

                imgDB2.ToolTip = "This file was stored in database.";

                // show the images and text
                imgDB3.Visible = true;
                imgDB3.Visible = true;
                //lblText1.Visible = true;
                //lblText2.Visible = true;


            }
        }
        return true;
    }

    private bool fromScreenToEntityProductImageTest4(DataRow dr)
    {
        if (FileUpload4.HasFile)
        {
            try
            {
                if (FileUpload4.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload4.PostedFile.ContentLength < 1024000)
                    {
                        string filename = System.IO.Path.GetFileName(FileUpload4.FileName);
                        FileUpload4.SaveAs(Server.MapPath("/MahaplastWebApp_19.9.2012/Images") + filename);
                        LabelErr.Text = "Upload status: File uploaded!";
                    }
                    else
                        LabelErr.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    LabelErr.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                LabelErr.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }

        if (FileUpload4.PostedFile != null)
        {

            HttpPostedFile myimage = FileUpload4.PostedFile;

            int nFileLen = myimage.ContentLength;

            byte[] img = new byte[FileUpload4.PostedFile.ContentLength];

            if (nFileLen > 0)
            {
                // Allocate a buffer for reading of the file
                byte[] myData = new byte[nFileLen];

                // Read uploaded file from the Stream
                myimage.InputStream.Read(myData, 0, nFileLen);

                dr["productimageId"] = Int32.Parse(tbProductImageId.Text);
                dr["productid"] = lbSessionProdId.Text;
                //dr["imageone"] = myData;
                //dr["imagetwo"] = myData;
                //dr["imagethree"] = myData;
                dr["imagefour"] = myData;



                // Create a name for the file to store
                string strFilename = Path.GetFileName(myimage.FileName);

                // Write data into a file
                WriteToFile(Server.MapPath(strFilename), ref myData);

                // Set label's text
                LabelErr.Text =
                    "Filename: " + strFilename + "<br>" +
                    "Size: " + nFileLen.ToString() + "<p>";


                // Set URL of the the object to point to the file we've just saved
                imgDB4.ImageUrl = strFilename;
                imgDB4.ToolTip = "This file was stored to as file.";
                LabelErr.Text = imgDB4.ImageUrl;


                imgDB4.ToolTip = "This file was stored in database.";

                // show the images and text
                imgDB4.Visible = true;
                imgDB4.Visible = true;
                //lblText1.Visible = true;
                //lblText2.Visible = true;


            }
        }
        return true;
    }
}