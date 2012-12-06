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
/// Summary description for GeneralService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class GeneralService : System.Web.Services.WebService {

    public GeneralService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    

    [WebMethod]
    public bool UpdateImage(DataSet dataSet)
    {
        SqlConnection sqlConnection = null;
        SqlTransaction transaction = null;
        try
        {
            // 1. Create an SqlCommand object for SELECT
            SqlCommand sqlCommandSelect = new SqlCommand();

            // 2. Configure the SqlCommand to be executed
            sqlCommandSelect.CommandText = "Buyer_GetAll";
            sqlCommandSelect.CommandType = CommandType.StoredProcedure;

            // 3. Create an SqlCommand object for INSERT
            SqlCommand sqlCommandInsert = new SqlCommand();

            // 3.1  Configure the SqlCommand to be executed
            sqlCommandInsert.CommandText = "Buyer_Insert";
            sqlCommandInsert.CommandType = CommandType.StoredProcedure;

            
            // 3.3 Add second insert parameter
            SqlParameter paramInsert_0 = sqlCommandInsert.Parameters.Add("@buyerId", SqlDbType.Int);
            paramInsert_0.SourceColumn = "buyerId";
            paramInsert_0.SourceVersion = DataRowVersion.Current;

            SqlParameter paramInsert_1 = sqlCommandInsert.Parameters.Add("@firstname", SqlDbType.VarChar);
            paramInsert_1.SourceColumn = "firstname";
            paramInsert_1.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_2 = sqlCommandInsert.Parameters.Add("@lastname", SqlDbType.VarChar);
            paramInsert_2.SourceColumn = "lastname";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_3 = sqlCommandInsert.Parameters.Add("@gender", SqlDbType.Char);
            paramInsert_2.SourceColumn = "gender";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_4 = sqlCommandInsert.Parameters.Add("@dob_month", SqlDbType.Char);
            paramInsert_2.SourceColumn = "dob_month";
            paramInsert_2.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_5 = sqlCommandInsert.Parameters.Add("@dob_day", SqlDbType.NChar);
            paramInsert_5.SourceColumn = "dob_day";
            paramInsert_5.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_6 = sqlCommandInsert.Parameters.Add("@dob_year", SqlDbType.Char);
            paramInsert_6.SourceColumn = "dob_year";
            paramInsert_6.SourceVersion = DataRowVersion.Current;

      
                // 3.3 Add second insert parameter
            SqlParameter paramInsert_55 = sqlCommandInsert.Parameters.Add("@language", SqlDbType.Char);
            paramInsert_55.SourceColumn = "language";
            paramInsert_55.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_7 = sqlCommandInsert.Parameters.Add("@emailAddress", SqlDbType.VarChar);
            paramInsert_7.SourceColumn = "emailAddress";
            paramInsert_7.SourceVersion = DataRowVersion.Current;



            // 3.3 Add second insert parameter
            SqlParameter paramInsert_8 = sqlCommandInsert.Parameters.Add("@phonenumber", SqlDbType.Char);
            paramInsert_8.SourceColumn = "phonenumber";
            paramInsert_8.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_9 = sqlCommandInsert.Parameters.Add("@buyeruserId", SqlDbType.Char);
            paramInsert_9.SourceColumn = "buyeruserId";
            paramInsert_9.SourceVersion = DataRowVersion.Current;



            // 3.3 Add second insert parameter
            SqlParameter paramInsert_11 = sqlCommandInsert.Parameters.Add("@password", SqlDbType.Char);
            paramInsert_11.SourceColumn = "password";
            paramInsert_11.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_12 = sqlCommandInsert.Parameters.Add("@reenterpassword", SqlDbType.Char);
            paramInsert_12.SourceColumn = "reenterpassword";
            paramInsert_12.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_13 = sqlCommandInsert.Parameters.Add("@secretquestion", SqlDbType.VarChar);
            paramInsert_13.SourceColumn = "secretquestion";
            paramInsert_13.SourceVersion = DataRowVersion.Current;


            // 3.3 Add second insert parameter
            SqlParameter paramInsert_14 = sqlCommandInsert.Parameters.Add("@secretanswer", SqlDbType.VarChar);
            paramInsert_14.SourceColumn = "secretanswer";
            paramInsert_14.SourceVersion = DataRowVersion.Current;

            // 3.3 Add second insert parameter
            SqlParameter paramInsert_15 = sqlCommandInsert.Parameters.Add("@notrobot", SqlDbType.VarChar);
            paramInsert_15.SourceColumn = "notrobot";
            paramInsert_15.SourceVersion = DataRowVersion.Current;




            //*** 4. Create an SqlCommand object for UPDATE**/
            SqlCommand sqlCommandUpdate = new SqlCommand();

            // 4.1  Configure the SqlCommand to be executed
            sqlCommandUpdate.CommandText = "buyer_update";
            sqlCommandUpdate.CommandType = CommandType.StoredProcedure;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_0 = sqlCommandUpdate.Parameters.Add("@buyerId", SqlDbType.Int);
            paramUpdate_0.SourceColumn = "buyerId";
            paramUpdate_0.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_1 = sqlCommandUpdate.Parameters.Add("@firstname", SqlDbType.VarChar);
            paramUpdate_1.SourceColumn = "firstname";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_2 = sqlCommandUpdate.Parameters.Add("@lastname", SqlDbType.VarChar);
            paramUpdate_1.SourceColumn = "lastname";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_3 = sqlCommandUpdate.Parameters.Add("@gender", SqlDbType.Char);
            paramUpdate_1.SourceColumn = "gender";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_4 = sqlCommandUpdate.Parameters.Add("@dob_month", SqlDbType.Char);
            paramUpdate_1.SourceColumn = "dob_month";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;



            // 4.2 Add first update parameter
            SqlParameter paramUpdate_5 = sqlCommandUpdate.Parameters.Add("@dob_day", SqlDbType.NChar);
            paramUpdate_5.SourceColumn = "dob_day";
            paramUpdate_5.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_6 = sqlCommandUpdate.Parameters.Add("@dob_year", SqlDbType.Char);
            paramUpdate_6.SourceColumn = "dob_year";
            paramUpdate_1.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_33 = sqlCommandUpdate.Parameters.Add("@language", SqlDbType.VarChar);
            paramUpdate_33.SourceColumn = "language";
            paramUpdate_33.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_7 = sqlCommandUpdate.Parameters.Add("@phonenumber", SqlDbType.Decimal);
            paramUpdate_7.SourceColumn = "phonenumber";
            paramUpdate_7.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_8 = sqlCommandUpdate.Parameters.Add("@buyeruserId", SqlDbType.Decimal);
            paramUpdate_8.SourceColumn = "buyeruserId";
            paramUpdate_8.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_9 = sqlCommandUpdate.Parameters.Add("@password", SqlDbType.Decimal);
            paramUpdate_9.SourceColumn = "password";
            paramUpdate_9.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_10 = sqlCommandUpdate.Parameters.Add("@reenterpassword", SqlDbType.Decimal);
            paramUpdate_10.SourceColumn = "reenterpassword";
            paramUpdate_10.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_11 = sqlCommandUpdate.Parameters.Add("@secretquestion", SqlDbType.Decimal);
            paramUpdate_11.SourceColumn = "secretquestion";
            paramUpdate_11.SourceVersion = DataRowVersion.Current;


            // 4.2 Add first update parameter
            SqlParameter paramUpdate_12 = sqlCommandUpdate.Parameters.Add("@secretanswer", SqlDbType.Decimal);
            paramUpdate_12.SourceColumn = "secretanswer";
            paramUpdate_12.SourceVersion = DataRowVersion.Current;

            // 4.2 Add first update parameter
            SqlParameter paramUpdate_13 = sqlCommandUpdate.Parameters.Add("@notrobot", SqlDbType.Decimal);
            paramUpdate_13.SourceColumn = "notrobot";
            paramUpdate_13.SourceVersion = DataRowVersion.Current;



            // 5. Create an SqlCommand object for DELETE
            SqlCommand sqlCommandDelete = new SqlCommand();

            // 5.1  Configure the SqlCommand to be executed
            sqlCommandDelete.CommandText = "buyer_delete";
            sqlCommandDelete.CommandType = CommandType.StoredProcedure;

            // 5.2 Add first delete parameter
            SqlParameter paramDelete_1 = sqlCommandDelete.Parameters.Add("@buyerId ", SqlDbType.Int);
            paramDelete_1.SourceColumn = "buyerId";
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
