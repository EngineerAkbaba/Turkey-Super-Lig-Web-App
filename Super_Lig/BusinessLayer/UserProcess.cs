using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Data;
namespace BusinessLayer
{
    public class UserProcess
    {
        public static void InsertUser(User user)
        {
            DBClass.InsertCommand("exec spUserInsert '" + user.Username+ "','" +user.UserSurname +
                "','" + user.Mail+ "','" + user.Password+ "'," + user.IsUserAdmin);
        }
        public static User GetUser(string mailAdress, string password)
        {
            DataSet data = DBClass.SelectCommand("exec spUserSelect '" + mailAdress + "','" + password + "'");
            if (data.Tables[0].Rows.Count == 0)
            {
                return null;
            }
            else
            {
                DataRow usr = data.Tables[0].Rows[0];
                return new User
                {
                    UserId = Convert.ToInt32(usr[0]),
                    Username= usr[1].ToString(),
                    UserSurname = usr[2].ToString(),
                    Mail = usr[3].ToString(),
                    Password = usr[4].ToString(),
                    IsUserAdmin = Convert.ToBoolean(usr[5])
                };

            }
        }
    }
}
