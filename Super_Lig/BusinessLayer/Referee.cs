using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
namespace BusinessLayer
{
    public class Referee
    {
        //Define attributes and properties of the Referee object
        private int licenceNo;
        public int LicenceNo
        {
            get { return licenceNo; }
            set { licenceNo = value; }
        }

        private string licenceName;
        public string LicenceName
        {
            get { return licenceName; }
            set { licenceName = value; }
        }

        private string refereeName;
        public string RefereeName
        {
            get { return refereeName; }
            set { refereeName = value; }
        }

        private string refereSurname;
        public string RefereSurname
        {
            get { return refereSurname; }
            set { refereSurname = value; }
        }

        private string birthDate;
        public string BirthDate
        {
            get { return birthDate; }
            set { birthDate = value; }
        }

        private string area;
        public string Area
        {
            get { return area; }
            set { area = value; }
        }
    }
}
