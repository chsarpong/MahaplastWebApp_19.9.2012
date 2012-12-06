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
/// Summary description for serProduct
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class serProduct : System.Web.Services.WebService {

    public serProduct () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    

    [WebMethod]
    public DataSet Product_GetProdIdToFindImage(string description)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Product_GetProdIdToFindImage";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@discription", SqlDbType.VarChar).Value = description;
        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public DataSet Product_GetStock()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Product_GetStock";
        sqlCommand.CommandType = CommandType.StoredProcedure;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public DataSet Product_CreateProductId()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Product_CreateProductId";
        sqlCommand.CommandType = CommandType.StoredProcedure;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public  DataSet Product_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Product_SelectAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet Product_GetMechantComment(int productid)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Product_GetMechantComment";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@productid", SqlDbType.Int).Value = productid;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public bool UpdateProduct(DataSet dataSet)
    {
        SqlConnection sqlConnection = null;
        SqlTransaction transaction = null;
        try
        {
            // 1. Create an SqlCommand object for SELECT
            SqlCommand sqlCommandSelect = new SqlCommand();

            // 2. Configure the SqlCommand to be executed
            sqlCommandSelect.CommandText = "Product_GetAll";
            sqlCommandSelect.CommandType = CommandType.StoredProcedure;

            // 3. Create an SqlCommand object for INSERT
            SqlCommand sqlCommandInsert = new SqlCommand();

            // 3.1  Configure the SqlCommand to be executed
            sqlCommandInsert.CommandText = "Product_Insert";
            sqlCommandInsert.CommandType = CommandType.StoredProcedure;

            SqlParameter paramInsert_1 = sqlCommandInsert.Parameters.Add("@productid", SqlDbType.Int);
            paramInsert_1.SourceColumn = "productid";
            paramInsert_1.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_2 = sqlCommandInsert.Parameters.Add("@productcategoryId", SqlDbType.Int);
            paramInsert_2.SourceColumn = "productcategoryId";
            paramInsert_2.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_4 = sqlCommandInsert.Parameters.Add("@merchantId", SqlDbType.Int);
            paramInsert_4.SourceColumn = "merchantId";
            paramInsert_4.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_6 = sqlCommandInsert.Parameters.Add("@discription", SqlDbType.VarChar);
            paramInsert_6.SourceColumn = "discription";
            paramInsert_6.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_7 = sqlCommandInsert.Parameters.Add("@price", SqlDbType.Int);
            paramInsert_7.SourceColumn = "price";
            paramInsert_7.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_8 = sqlCommandInsert.Parameters.Add("@quantity", SqlDbType.Int);
            paramInsert_8.SourceColumn = "quantity";
            paramInsert_8.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_77 = sqlCommandInsert.Parameters.Add("@sellingleadId", SqlDbType.Int);
            paramInsert_77.SourceColumn = "sellingleadId";
            paramInsert_77.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_66 = sqlCommandInsert.Parameters.Add("@comment", SqlDbType.VarChar);
            paramInsert_66.SourceColumn = "comment";
            paramInsert_66.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_9 = sqlCommandInsert.Parameters.Add("@productoptionone", SqlDbType.VarChar);
            paramInsert_9.SourceColumn = "productoptionone";
            paramInsert_9.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_10 = sqlCommandInsert.Parameters.Add("@productoptiontwo", SqlDbType.VarChar);
            paramInsert_10.SourceColumn = "productoptiontwo";
            paramInsert_10.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_11 = sqlCommandInsert.Parameters.Add("@productoptionthree", SqlDbType.VarChar);
            paramInsert_11.SourceColumn = "productoptionthree";
            paramInsert_11.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_12 = sqlCommandInsert.Parameters.Add("@productoptionfour", SqlDbType.VarChar);
            paramInsert_12.SourceColumn = "productoptionfour";
            paramInsert_12.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_13 = sqlCommandInsert.Parameters.Add("@productoptionfive", SqlDbType.VarChar);
            paramInsert_13.SourceColumn = "productoptionfive";
            paramInsert_13.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_14 = sqlCommandInsert.Parameters.Add("@productoptionsix", SqlDbType.VarChar);
            paramInsert_14.SourceColumn = "productoptionsix";
            paramInsert_14.SourceVersion = DataRowVersion.Current;


            // 4. Create an SqlCommand object for UPDATE
            SqlCommand sqlCommandUpdate = new SqlCommand();

            // 4.1  Configure the SqlCommand to be executed
            sqlCommandUpdate.CommandText = "Product_Update";
            sqlCommandUpdate.CommandType = CommandType.StoredProcedure;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_1 = sqlCommandUpdate.Parameters.Add("@productid", SqlDbType.Int);
            paramUpdate_1.SourceColumn = "productid";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_2 = sqlCommandUpdate.Parameters.Add("@productcategoryId", SqlDbType.Int);
            paramUpdate_2.SourceColumn = "productcategoryId";
            paramUpdate_2.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_4 = sqlCommandUpdate.Parameters.Add("@merchantId", SqlDbType.Int);
            paramUpdate_4.SourceColumn = "merchantId";
            paramUpdate_4.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_6 = sqlCommandUpdate.Parameters.Add("@discription", SqlDbType.VarChar);
            paramUpdate_6.SourceColumn = "discription";
            paramUpdate_6.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_7 = sqlCommandUpdate.Parameters.Add("@price", SqlDbType.Int);
            paramUpdate_7.SourceColumn = "price";
            paramUpdate_7.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_8 = sqlCommandUpdate.Parameters.Add("@quantity", SqlDbType.Int);
            paramUpdate_8.SourceColumn = "quantity";
            paramUpdate_8.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_44 = sqlCommandUpdate.Parameters.Add("@sellingleadId", SqlDbType.Int);
            paramUpdate_44.SourceColumn = "sellingleadId";
            paramUpdate_44.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_99 = sqlCommandUpdate.Parameters.Add("@comment", SqlDbType.VarChar);
            paramUpdate_99.SourceColumn = "comment";
            paramUpdate_99.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_9 = sqlCommandUpdate.Parameters.Add("@productoptionone", SqlDbType.VarChar);
            paramUpdate_9.SourceColumn = "productoptionone";
            paramUpdate_9.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_10 = sqlCommandUpdate.Parameters.Add("@productoptiontwo", SqlDbType.VarChar);
            paramUpdate_10.SourceColumn = "productoptiontwo";
            paramUpdate_10.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_11 = sqlCommandUpdate.Parameters.Add("@productoptionthree", SqlDbType.VarChar);
            paramUpdate_11.SourceColumn = "productoptionthree";
            paramUpdate_11.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_12 = sqlCommandUpdate.Parameters.Add("@productoptionfour", SqlDbType.VarChar);
            paramUpdate_12.SourceColumn = "productoptionfour";
            paramUpdate_12.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_13 = sqlCommandUpdate.Parameters.Add("@productoptionfive", SqlDbType.VarChar);
            paramUpdate_13.SourceColumn = "productoptionfive";
            paramUpdate_13.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_14 = sqlCommandUpdate.Parameters.Add("@productoptionsix", SqlDbType.VarChar);
            paramUpdate_14.SourceColumn = "productoptionsix";
            paramUpdate_14.SourceVersion = DataRowVersion.Current;

            // 5. Create an SqlCommand object for DELETE
            SqlCommand sqlCommandDelete = new SqlCommand();

            // 5.1  Configure the SqlCommand to be executed
            sqlCommandDelete.CommandText = "Product_Delete";
            sqlCommandDelete.CommandType = CommandType.StoredProcedure;

            // 5.2 Add first delete parameter
            SqlParameter paramDelete_1 = sqlCommandDelete.Parameters.Add("@productid ", SqlDbType.Int);
            paramDelete_1.SourceColumn = "productid";
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
