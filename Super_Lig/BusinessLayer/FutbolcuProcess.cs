using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Data;
namespace BusinessLayer
{
    public class FutbolcuProcess
    {
        public static void AddFutbolcu(Futbolcu foot)
        {
            DBClass.InsertCommand("exec spInsertFootballer " + foot.FootballerLicenceNo + ",'" + foot.FootballerName + "','" + foot.FootballerSurname + "','" + foot.FootballerBirthPlace + "','" + foot.FootballerBirthDate + "'," + foot.FootballerTeamNo + ",'" + foot.FootballerContractStartDate + "','" + foot.FootballerContractEndDate + "'");
        }

        //List the footballler from the database
        public static DataSet ListFootballer()
        {
            DataSet data = DBClass.SelectCommand("exec spListFootballer");
            if (data.Tables[0].Rows.Count == 0) //If the table is empty
            {
                return null;
            }
            else //If the table is NOT empty
            {
                return data;
            }
        }

        //Delete footballer from the database
        public static void DeleteFootballer(int licenceNo, string name, string surname)
        {

            DBClass.DeleteCommand("exec spDeleteFootballer " + licenceNo + ",'" + surname + "','" + name + "'");
        }

        //Search for a footballer
        public static DataSet SearchFootballer(int liceneNo, string name, string surname)
        {
            DataSet data = DBClass.SelectCommand("exec spSelectFootballer " + liceneNo + ",'" + name + "','" + surname + "'");
            if (data.Tables[0].Rows.Count == 0) //table is empty
            {
                return null;
            }
            else //table is NOT empty
            {
                return data;
            }
        }

        //Update footballer
        public static void UpdateFootballer(Futbolcu foot)
        {
            DBClass.InsertCommand("exec spUpdateFootballer " + foot.FootballerLicenceNo + ",'" + foot.FootballerName + "','" + foot.FootballerSurname + "','" + foot.FootballerBirthPlace + "','" + foot.FootballerBirthDate + "'," + foot.FootballerTeamNo + ",'" + foot.FootballerContractStartDate + "','" + foot.FootballerContractEndDate + "'");
        }
    }
}
