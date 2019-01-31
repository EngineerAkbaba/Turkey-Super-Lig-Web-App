using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataLayer;
namespace BusinessLayer
{
    public  class TeamProcess
    {
        //List the footbal teams from the database
        public static DataSet ListTeam()
        {
            DataSet data = DBClass.SelectCommand("exec sp_listTakım");
            if (data.Tables[0].Rows.Count == 0) //If the table is empty
            {
                return null;
            }
            else //If the table is NOT empty
            {
                return data;
            }
        }
        public static void AddTeam(Takım tk)
        {
            DBClass.InsertCommand("exec sp_insertTeam '" + tk.TeamName + "','" + tk.Foundationyear + "','" + tk.Color + "'," + tk.NumberChamp + "");
        }
        public static void Delete(int takimno, string takimname)
        {

            DBClass.DeleteCommand("exec sp_deleteTakım '" + takimno + "','" + takimname + "'");
        }
        public static void UpdateTeam(Takım tk)
        {
            DBClass.InsertCommand("exec sp_UpdateTeam'" + tk.TeamName + "','" + tk.Foundationyear + "','" + tk.Color + "'," + tk.NumberChamp + "");
        }
    }
}
