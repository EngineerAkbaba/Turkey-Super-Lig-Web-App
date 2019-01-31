using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataLayer;
namespace BusinessLayer
{
    public class PuanTableProcess
    {
        //List the footbal teams from the database
        public static DataSet ListTeam()
        {
            DataSet data = DBClass.SelectCommand("exec sp_PuanTable");
            if (data.Tables[0].Rows.Count == 0) //If the table is empty
            {
                return null;
            }
            else //If the table is NOT empty
            {
                return data;
            }
        }
        public static void deleteTeam(int takımno)
        {
            DBClass.DeleteCommand("exec sp_DeletePuan'" + takımno + "'");
        }
        public static void UpdatePuanTable(PuanTable puan)
        {
            DBClass.InsertCommand("exec spUpdateTeam '" + puan.Takımno + "','" + puan.NumMatch + "','" + puan.Galibiyet+ "','" +puan.Beraberlik+ "','"+puan.Maglubiyet+"','"+puan.Atılangol+"','"+puan.Yenilengol+"','"+puan.Averaj+"','"+puan.Puan+"'");
        }
    }
}
