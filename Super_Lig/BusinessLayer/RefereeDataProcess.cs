using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Data;

namespace BusinessLayer
{
    public class RefereeDataProcess
    {
        //Add new referee into the database
        public static void AddReferee(Referee reff)
        {
            DBClass.InsertCommand("exec spInsertReferee " + reff.LicenceNo + ",'" + reff.LicenceName + "','" + reff.RefereeName + "','" + reff.RefereSurname + "','" + reff.BirthDate + "','" + reff.Area + "'");
        }

        //List the referee from the database
        public static DataSet ListReferee()
        {
            DataSet data = DBClass.SelectCommand("exec spListReferee");
            if (data.Tables[0].Rows.Count == 0) //If the table is empty
            {
                return null;
            }
            else //If the table is NOT empty
            {
                return data;
            }
        }
        public static DataSet Sorgula(int licensNo, string surname)
        {
            DataSet data = DBClass.SelectCommand("exec spSelect '"+licensNo+"','"+surname+"'");
            if (data.Tables[0].Rows.Count == 0) //table is empty
            {
                return null;
            }
            else //table is NOT empty
            {
                return data;
            }
        }
        //Delete referee from the database
        public static void Delete(int licensNo,string surname)
        {

            DBClass.DeleteCommand("exec spDeleteReferee '" + licensNo + "','" + surname + "'");
        }
        public static void update(Referee reff)
        {
            DBClass.InsertCommand("exec spRefUpdate '" + reff.LicenceNo + "','" + reff.LicenceName + "','" + reff.RefereeName + "','" + reff.RefereSurname + "','" + reff.Area + "'");
        }
    }
}
