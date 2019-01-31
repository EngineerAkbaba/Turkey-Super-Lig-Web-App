using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class User
    {
        private int userId;

        public int UserId
        {
            get { return userId; }
            set { userId = value; }
        }
        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string userSurname;

        public string UserSurname
        {
            get { return userSurname; }
            set { userSurname = value; }
        }
        private string mail;

        public string Mail
        {
            get { return mail; }
            set { mail = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private bool isUserAdmin;

        public bool IsUserAdmin
        {
            get { return isUserAdmin; }
            set { isUserAdmin = value; }
        }

    }
}
