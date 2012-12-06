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
/// Summary description for serProductCategory
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class serProductCategory : System.Web.Services.WebService {

    public serProductCategory () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    
    [WebMethod]
    public DataSet ProductCategorytwo_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategorytwo_GetAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        //sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = name;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public DataSet ProductCategoryOne_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategoryOne_GetAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        //sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = name;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductCategory_GetCatIdForImages(string name)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategory_GetCatIdForImages";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = name;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }

    [WebMethod]
    public DataSet ProductCategory_GetProdOneFilterNumber(string name)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategory_GetProdOneFilterNumber";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = name;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductCategory_GetProdFilteronename(string name)
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategory_GetProdFilteronename";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@name", SqlDbType.VarChar).Value = name;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet ProductCategory_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "ProductCategory_GetAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public bool UpdateProductCategory(DataSet dataSet)
    {
        SqlConnection sqlConnection = null;
        SqlTransaction transaction = null;
        try
        {
            // 1. Create an SqlCommand object for SELECT
            SqlCommand sqlCommandSelect = new SqlCommand();

            // 2. Configure the SqlCommand to be executed
            sqlCommandSelect.CommandText = "ProductCategory_GetAll";
            sqlCommandSelect.CommandType = CommandType.StoredProcedure;

            // 3. Create an SqlCommand object for INSERT
            SqlCommand sqlCommandInsert = new SqlCommand();

            // 3.1  Configure the SqlCommand to be executed
            sqlCommandInsert.CommandText = "ProductCategory_Insert";
            sqlCommandInsert.CommandType = CommandType.StoredProcedure;

            SqlParameter paramInsert_1 = sqlCommandInsert.Parameters.Add("@productcategoryId", SqlDbType.Int);
            paramInsert_1.SourceColumn = "productcategoryId";
            paramInsert_1.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_2 = sqlCommandInsert.Parameters.Add("@name", SqlDbType.Char);
            paramInsert_2.SourceColumn = "name";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_3 = sqlCommandInsert.Parameters.Add("@description", SqlDbType.VarChar);
            paramInsert_2.SourceColumn = "description";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_4 = sqlCommandInsert.Parameters.Add("@createdon", SqlDbType.DateTime);
            paramInsert_2.SourceColumn = "createdon";
            paramInsert_2.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_5 = sqlCommandInsert.Parameters.Add("@updatedon", SqlDbType.DateTime);
            paramInsert_5.SourceColumn = "updatedon";
            paramInsert_5.SourceVersion = DataRowVersion.Current;


            // 4. Create an SqlCommand object for UPDATE
            SqlCommand sqlCommandUpdate = new SqlCommand();

            // 4.1  Configure the SqlCommand to be executed
            sqlCommandUpdate.CommandText = "ProductCategory_Update";
            sqlCommandUpdate.CommandType = CommandType.StoredProcedure;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_1 = sqlCommandUpdate.Parameters.Add("@productcategoryId", SqlDbType.Int);
            paramUpdate_1.SourceColumn = "productcategoryId";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_2 = sqlCommandUpdate.Parameters.Add("@name", SqlDbType.Char);
            paramUpdate_2.SourceColumn = "name";
            paramUpdate_2.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_3 = sqlCommandUpdate.Parameters.Add("@description", SqlDbType.VarChar);
            paramUpdate_3.SourceColumn = "description";
            paramUpdate_3.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_4 = sqlCommandUpdate.Parameters.Add("@createdon", SqlDbType.DateTime);
            paramUpdate_4.SourceColumn = "createdon";
            paramUpdate_4.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_5 = sqlCommandUpdate.Parameters.Add("@updatedon", SqlDbType.DateTime);
            paramUpdate_5.SourceColumn = "updatedon";
            paramUpdate_5.SourceVersion = DataRowVersion.Current;


            // 5. Create an SqlCommand object for DELETE
            SqlCommand sqlCommandDelete = new SqlCommand();

            // 5.1  Configure the SqlCommand to be executed
            sqlCommandDelete.CommandText = "ProductCategory_Delete";
            sqlCommandDelete.CommandType = CommandType.StoredProcedure;

            // 5.2 Add first delete parameter
            SqlParameter paramDelete_1 = sqlCommandDelete.Parameters.Add("@productcategoryId ", SqlDbType.Int);
            paramDelete_1.SourceColumn = "productcategoryId";
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
