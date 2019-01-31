using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataLayer
{
    public class DBClass
    {
        //Constructor
        public DBClass()
        {

        }
        //Make connection with the database
        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SuperLigConnectionString"].ConnectionString);
        static SqlCommand cmd;
        //Insert into the database
        public static void InsertCommand(string query)
        {
            
            con.Open(); //Open the connection
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery(); //Returns that how many row was affected
            con.Close(); //Close the connection
        }
        //Select command from the database
        public static DataSet SelectCommand(string query)
        {
            con.Open(); //Open the connection
            DataSet tempSet = new DataSet(); //DataSet gets all the database
            SqlDataAdapter selectAdaptor = new SqlDataAdapter(query, con);
            selectAdaptor.Fill(tempSet); //Fills the tempSet by DataSet
            con.Close(); //Close the database
            return tempSet;
        }
        //Delete from the database
        public static void DeleteCommand(string query)
        {
            cmd = new SqlCommand(query, con);
            if (con.State == ConnectionState.Closed) //If the connection is closed
            {
                con.Open();
            }
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
