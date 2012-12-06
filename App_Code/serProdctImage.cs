using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

/// <summary>
/// Summary description for serProdctImage
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class serProdctImage : System.Web.Services.WebService {

    public serProdctImage () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    
    [WebMethod]
    public DataSet ProductImage_GetBoxoneImage(int proidforimage)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetBoxoneImage";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productid", SqlDbType.Int).Value = proidforimage;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductImage_GetFashMidImHandler(string categoryname)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashMidImHandler";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = categoryname;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }
    

    [WebMethod]
    public DataSet ProductImage_GetFashbigbannerForHandler(string categoryname)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashbigbannerForHandler";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = categoryname;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

      [WebMethod]
    public DataSet ProductImage_GetFashImgtwoForHandler(string categoryname)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashImgtwoForHandler";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = categoryname;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public DataSet ProductImage_GetFashImgOneForHandler(string categoryname)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashImgOneForHandler";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = categoryname;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public DataSet ProductImage_GetFashionCategoryForPage(int productcategoryId)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashionCategoryForPage";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productcategoryId", SqlDbType.Int).Value = productcategoryId;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public DataSet ProductImage_GetFashionCategoryForHandler(int productcategoryId)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetFashionCategoryForHandler";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productcategoryId", SqlDbType.Int).Value = productcategoryId;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductImage_Test2(int picId2)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "PICTURE_TEST2";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productimageId", SqlDbType.Int).Value = picId2;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public DataSet ProductImage_GetImageTest(int picId)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "PICTURE_TEST";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productimageId", SqlDbType.Int).Value = picId;


        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductImage_CreateProductImgId()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_CreateProductImgId";
        sqlCommand.CommandType = CommandType.StoredProcedure;


        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public DataSet ProductImage_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductImage_GetAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public bool UpdateProdctImage(DataSet dataSet)
    {
        SqlConnection sqlConnection = null;
        SqlTransaction transaction = null;
        try
        {
            // 1. Create an SqlCommand object for SELECT
            SqlCommand sqlCommandSelect = new SqlCommand();

            // 2. Configure the SqlCommand to be executed
            sqlCommandSelect.CommandText = "ProdctImage_GetAll";
            sqlCommandSelect.CommandType = CommandType.StoredProcedure;

            // 3. Create an SqlCommand object for INSERT
            SqlCommand sqlCommandInsert = new SqlCommand();

            // 3.1  Configure the SqlCommand to be executed
            sqlCommandInsert.CommandText = "ProductImage_Insert";
            sqlCommandInsert.CommandType = CommandType.StoredProcedure;

            SqlParameter paramInsert_1 = sqlCommandInsert.Parameters.Add("@productimageId", SqlDbType.Int);
            paramInsert_1.SourceColumn = "productimageId";
            paramInsert_1.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_7 = sqlCommandInsert.Parameters.Add("@productid", SqlDbType.Int);
            paramInsert_7.SourceColumn = "productid";
            paramInsert_7.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_3 = sqlCommandInsert.Parameters.Add("@imageone", SqlDbType.Image);
            paramInsert_3.SourceColumn = "imageone";
            paramInsert_3.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_55 = sqlCommandInsert.Parameters.Add("@imagetwo", SqlDbType.Image);
            paramInsert_55.SourceColumn = "imagetwo";
            paramInsert_55.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_77 = sqlCommandInsert.Parameters.Add("@imagethree", SqlDbType.Image);
            paramInsert_77.SourceColumn = "imagethree";
            paramInsert_77.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_99 = sqlCommandInsert.Parameters.Add("@imagefour", SqlDbType.Image);
            paramInsert_99.SourceColumn = "imagefour";
            paramInsert_99.SourceVersion = DataRowVersion.Current;

           
          

            // 4. Create an SqlCommand object for UPDATE
            SqlCommand sqlCommandUpdate = new SqlCommand();

            // 4.1  Configure the SqlCommand to be executed
            sqlCommandUpdate.CommandText = "ProductImage_Update";
            sqlCommandUpdate.CommandType = CommandType.StoredProcedure;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_1 = sqlCommandUpdate.Parameters.Add("@productimageId", SqlDbType.Int);
            paramUpdate_1.SourceColumn = "productimageId";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_2 = sqlCommandUpdate.Parameters.Add("@productid", SqlDbType.Int);
            paramUpdate_2.SourceColumn = "productid";
            paramUpdate_2.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_4 = sqlCommandUpdate.Parameters.Add("@imageone", SqlDbType.Image);
            paramUpdate_4.SourceColumn = "imageone";
            paramUpdate_4.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_41 = sqlCommandUpdate.Parameters.Add("@imagetwo", SqlDbType.Image);
            paramUpdate_41.SourceColumn = "imagetwo";
            paramUpdate_41.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_42 = sqlCommandUpdate.Parameters.Add("@imagethree", SqlDbType.Image);
            paramUpdate_42.SourceColumn = "imagethree";
            paramUpdate_42.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_43 = sqlCommandUpdate.Parameters.Add("@imagefour", SqlDbType.Image);
            paramUpdate_43.SourceColumn = "imagefour";
            paramUpdate_43.SourceVersion = DataRowVersion.Current;

           
            // 5. Create an SqlCommand object for DELETE
            SqlCommand sqlCommandDelete = new SqlCommand();

            // 5.1  Configure the SqlCommand to be executed
            sqlCommandDelete.CommandText = "ProdctImage_Delete";
            sqlCommandDelete.CommandType = CommandType.StoredProcedure;

            // 5.2 Add first delete parameter
            SqlParameter paramDelete_1 = sqlCommandDelete.Parameters.Add("@productimageId ", SqlDbType.Int);
            paramDelete_1.SourceColumn = "productimageId";
            paramDelete_1.SourceVersion = DataRowVersion.Current;

            //// 5.2 Add second delete parameter
            //SqlParameter paramDelete_2 = sqlCommandDelete.Parameters.Add("@version", SqlDbType.Int);
            //paramDelete_2.SourceColumn = "version";
            //paramDelete_2.SourceVersion = DataRowVersion.Current;

            // 6. Get the connection string for the database
            String connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

            // 7. Create an SqlConnection object
            sqlConnection = new SqlConnection(connectionString);

            // 8. Open a connection to the database
            sqlConnection.Open();

            // 9. Begin a transaction
            transaction = sqlConnection.BeginTransaction();

            // 10. Bind the SqlCommands to the SqlConnection
            sqlCommandSelect.Connection = sqlConnection;
            sqlCommandInsert.Connection = sqlConnection;
            sqlCommandUpdate.Connection = sqlConnection;
            sqlCommandDelete.Connection = sqlConnection;

            // 11. Bind the SqlCommands to the SqlTransaction  
            sqlCommandSelect.Transaction = transaction;
            sqlCommandInsert.Transaction = transaction;
            sqlCommandUpdate.Transaction = transaction;
            sqlCommandDelete.Transaction = transaction;

            // 12. Create an SqlDataAdapter for accessing the database 
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommandSelect);

            sqlDataAdapter.InsertCommand = sqlCommandInsert;
            sqlDataAdapter.UpdateCommand = sqlCommandUpdate;
            sqlDataAdapter.DeleteCommand = sqlCommandDelete;

            // 13. Update the DataSet using the SqlDataAdapter
            sqlDataAdapter.Update(dataSet);
            transaction.Commit();

            return true;
        }
        catch (Exception ex)
        {
            transaction.Rollback();
            return false;    // Demo version: no detailded error handling yet. 
        }
        finally
        {
            try
            {
                // If the database connection is open, close it.
                if (sqlConnection != null && sqlConnection.State == ConnectionState.Open)
                {
                    sqlConnection.Close();
                }
            }
            catch
            {
                // If the Close operation fails, discard the exception.
            }
        }
    }

    private static DataSet createDataSet(SqlCommand sqlCommand)
    {
        SqlConnection sqlConnection = null;

        try
        {
            // 0. Get the connection string for the database
            String connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

            // 1. Create an SqlConnection object
            sqlConnection = new SqlConnection(connectionString);

            // 2. Open a connection to the database
            sqlConnection.Open();

            // 3. Bind the SqlCommand to the SqlConnection
            sqlCommand.Connection = sqlConnection;

            // 4. Create an SqlDataAdapter for accessing the database 
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            // 5. Create a new DataSet 
            DataSet dataSet = new DataSet();
            dataSet.Tables.Clear();         // Delete the default table from the DataSet

            // 6. Fill the DataSet using the SqlDataAdapter (the SqlCommand is executed now)
            sqlDataAdapter.Fill(dataSet);

            return (dataSet);
        }
        catch
        {
            return null;    // Demo version: no detailded error handling yet. 
        }
        finally
        {
            try
            {
                // If the database connection is open, close it.
                if (sqlConnection != null && sqlConnection.State == ConnectionState.Open)
                {
                    sqlConnection.Close();
                }
            }
            catch
            {
                // If the Close operation fails, discard the exception.
            }
        }
    }
}
