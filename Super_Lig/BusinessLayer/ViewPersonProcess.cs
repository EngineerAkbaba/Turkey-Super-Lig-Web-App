using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Data;
namespace BusinessLayer
{
    public  class ViewPersonProcess
    {
        public static DataSet ViewPerson()
        {
            DataSet data = DBClass.SelectCommand("exec spView");
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
