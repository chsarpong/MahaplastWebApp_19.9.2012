using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Xml.Xsl;
using System.Xml;
using System.Xml.XPath;

public partial class HomeXSLT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Images();
        }
    }

  
    private void Images()
    {
         // Dataset containing 
        string catname ="Electricals";
        ProductImageService.serProdctImage prodimage = new ProductImageService.serProdctImage();
        DataSet dataset = prodimage.ProductImage_GetFashImgtwoForHandler(catname);
        //string x = dataset.GetXml();
        string xmlfile = dataset.GetXml();

        XslTransform xslt = new XslTransform();
        xslt.Load(Server.MapPath("~/xslt/HomeXSLTFile.xslt"));
        XPathDocument xpathdocument = new
        XPathDocument(xmlfile);
        XmlTextWriter writer = new XmlTextWriter(Console.Out);
        writer.Formatting = Formatting.Indented;

        xslt.Transform(xpathdocument, null, writer, null);
        


        //strstudentDetails = GetHtml(Server.MapPath("~/xsl/studentDetails.xsl"), strXML);

        //XPathDocument myXPathDoc = new XPathDocument(myXmlFile);
        //XslCompiledTransform myXslTrans = new XslCompiledTransform();
        //myXslTrans.Load(myStyleSheet);
        //XmlTextWriter myWriter = new XmlTextWriter("result.html", null);
        //myXslTrans.Transform(myXPathDoc, null, myWriter);
     }


}