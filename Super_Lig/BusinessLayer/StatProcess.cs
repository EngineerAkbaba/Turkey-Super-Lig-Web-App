using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Data;
namespace BusinessLayer
{
    public  class StatProcess
    {
        public static DataSet ListStadium()
        {
            DataSet data = DBClass.SelectCommand("exec sp_listStadiums");
            if (data.Tables[0].Rows.Count == 0) //If the table is empty
            {
                return null;
            }
            else //If the table is NOT empty
            {
                return data;
            }
        }
    }
}
