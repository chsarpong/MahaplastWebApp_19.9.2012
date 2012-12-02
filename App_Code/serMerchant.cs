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
/// Summary description for serMerchant
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class serMerchant : System.Web.Services.WebService {

    public serMerchant () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public DataSet Merchant_GetMerchantId()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Merchant_GetMerchantId";
        sqlCommand.CommandType = CommandType.StoredProcedure;
       

        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet Merchant_GetBusinessname()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Merchant_GetBusinessname";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        //sqlCommand.Parameters.Add("@customerNumber", SqlDbType.Decimal).Value = customerId;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }


    [WebMethod]
    public DataSet Merchant_GetAll()
    {
        // 1. Create an SqlCommand object
        SqlCommand sqlCommand = new SqlCommand();

        // 2. Configure the SqlCommand to be executed
        sqlCommand.CommandText = "Merchant_GetAll";
        sqlCommand.CommandType = CommandType.StoredProcedure;
        //sqlCommand.Parameters.Add("@customerNumber", SqlDbType.Decimal).Value = customerId;

        // 3. Pass the SqlCommand to the local method createDataSet.
        //    The method executes the SqlCommand and returns a DataSet. 
        DataSet dataSet = createDataSet(sqlCommand);

        return dataSet;
    }



    [WebMethod]
    public bool UpdateMerchant(DataSet dataSet)
    {
        SqlConnection sqlConnection = null;
        SqlTransaction transaction = null;
        try
        {
            // 1. Create an SqlCommand object for SELECT
            SqlCommand sqlCommandSelect = new SqlCommand();

            // 2. Configure the SqlCommand to be executed
            sqlCommandSelect.CommandText = "Merchant_GetAll";
            sqlCommandSelect.CommandType = CommandType.StoredProcedure;

            // 3. Create an SqlCommand object for INSERT
            SqlCommand sqlCommandInsert = new SqlCommand();

            // 3.1  Configure the SqlCommand to be executed
            sqlCommandInsert.CommandText = "Merchant_Insert";
            sqlCommandInsert.CommandType = CommandType.StoredProcedure;

            SqlParameter paramInsert_1 = sqlCommandInsert.Parameters.Add("@merchantId", SqlDbType.Int);
            paramInsert_1.SourceColumn = "merchantId";
            paramInsert_1.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_2 = sqlCommandInsert.Parameters.Add("@businessname", SqlDbType.VarChar);
            paramInsert_2.SourceColumn = "businessname";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_3 = sqlCommandInsert.Parameters.Add("@firstnamecontactpersson", SqlDbType.VarChar);
            paramInsert_3.SourceColumn = "firstnamecontactpersson";
            paramInsert_3.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_4 = sqlCommandInsert.Parameters.Add("@lastnamecontactperson", SqlDbType.VarChar);
            paramInsert_4.SourceColumn = "lastnamecontactperson";
            paramInsert_4.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_5 = sqlCommandInsert.Parameters.Add("@merchanttypecode", SqlDbType.Int);
            paramInsert_5.SourceColumn = "merchanttypecode";
            paramInsert_5.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_6 = sqlCommandInsert.Parameters.Add("@emailAddress", SqlDbType.VarChar);
            paramInsert_6.SourceColumn = "emailAddress";
            paramInsert_6.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_7 = sqlCommandInsert.Parameters.Add("@phonenumber", SqlDbType.Char);
            paramInsert_7.SourceColumn = "phonenumber";
            paramInsert_7.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_8 = sqlCommandInsert.Parameters.Add("@merchantuserId", SqlDbType.VarChar);
            paramInsert_8.SourceColumn = "merchantuserId";
            paramInsert_8.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_9 = sqlCommandInsert.Parameters.Add("@password", SqlDbType.Char);
            paramInsert_9.SourceColumn = "password";
            paramInsert_9.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_10 = sqlCommandInsert.Parameters.Add("@reenterpassword", SqlDbType.Char);
            paramInsert_10.SourceColumn = "reenterpassword";
            paramInsert_10.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_11 = sqlCommandInsert.Parameters.Add("@secretquestion", SqlDbType.VarChar);
            paramInsert_11.SourceColumn = "secretquestion";
            paramInsert_11.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_12 = sqlCommandInsert.Parameters.Add("@secretanswer", SqlDbType.VarChar);
            paramInsert_12.SourceColumn = " secretanswer";
            paramInsert_12.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_13 = sqlCommandInsert.Parameters.Add("@notrobot", SqlDbType.NVarChar);
            paramInsert_13.SourceColumn = "notrobot";
            paramInsert_13.SourceVersion = DataRowVersion.Current;

            // 4. Create an SqlCommand object for UPDATE
            SqlCommand sqlCommandUpdate = new SqlCommand();

            // 4.1  Configure the SqlCommand to be executed
            sqlCommandUpdate.CommandText = "Merchant_Update";
            sqlCommandUpdate.CommandType = CommandType.StoredProcedure;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_1 = sqlCommandUpdate.Parameters.Add("@merchantId", SqlDbType.Int);
            paramUpdate_1.SourceColumn = "merchantId";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_2 = sqlCommandUpdate.Parameters.Add("@businessname", SqlDbType.VarChar);
            paramUpdate_1.SourceColumn = "businessname";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_3 = sqlCommandUpdate.Parameters.Add("@firstnamecontactpersson", SqlDbType.VarChar);
            paramUpdate_1.SourceColumn = "firstnamecontactpersson";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_4 = sqlCommandUpdate.Parameters.Add("@lastnamecontactperson", SqlDbType.VarChar);
            paramUpdate_1.SourceColumn = "lastnamecontactperson";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_5 = sqlCommandUpdate.Parameters.Add("@merchanttypecode", SqlDbType.Int);
            paramUpdate_5.SourceColumn = "merchanttypecode";
            paramUpdate_5.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_6 = sqlCommandUpdate.Parameters.Add("@emailAddress", SqlDbType.VarChar);
            paramUpdate_6.SourceColumn = "emailAddress";
            paramUpdate_6.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_7 = sqlCommandUpdate.Parameters.Add("@phonenumber", SqlDbType.Char);
            paramUpdate_7.SourceColumn = "phonenumber";
            paramUpdate_7.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_8 = sqlCommandUpdate.Parameters.Add("@merchantuserId", SqlDbType.VarChar);
            paramUpdate_8.SourceColumn = "merchantuserId";
            paramUpdate_8.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_9 = sqlCommandUpdate.Parameters.Add("@password", SqlDbType.Char);
            paramUpdate_9.SourceColumn = "password";
            paramUpdate_9.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_10 = sqlCommandUpdate.Parameters.Add("@reenterpassword", SqlDbType.Char);
            paramUpdate_10.SourceColumn = "reenterpassword";
            paramUpdate_10.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_11 = sqlCommandUpdate.Parameters.Add("@secretquestion", SqlDbType.VarChar);
            paramUpdate_11.SourceColumn = "secretquestion";
            paramUpdate_11.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_12 = sqlCommandUpdate.Parameters.Add("@secretanswer", SqlDbType.VarChar);
            paramUpdate_12.SourceColumn = "secretanswer";
            paramUpdate_12.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_13 = sqlCommandUpdate.Parameters.Add("@notrobot", SqlDbType.NVarChar);
            paramUpdate_13.SourceColumn = "notrobot";
            paramUpdate_13.SourceVersion = DataRowVersion.Current;


            // 5. Create an SqlCommand object for DELETE
            SqlCommand sqlCommandDelete = new SqlCommand();

            // 5.1  Configure the SqlCommand to be executed
            sqlCommandDelete.CommandText = "Merchant_Delete";
            sqlCommandDelete.CommandType = CommandType.StoredProcedure;

            // 5.2 Add first delete parameter
            SqlParameter paramDelete_1 = sqlCommandDelete.Parameters.Add("@merchantId ", SqlDbType.Int);
            paramDelete_1.SourceColumn = "merchantId";
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
