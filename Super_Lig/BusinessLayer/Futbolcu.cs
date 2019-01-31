using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
namespace BusinessLayer
{
    public class Futbolcu
    {
        private int footballerLicenceNo;
        public int FootballerLicenceNo
        {
            get { return footballerLicenceNo; }
            set { footballerLicenceNo = value; }
        }

        private string footballerName;
        public string FootballerName
        {
            get { return footballerName; }
            set { footballerName = value; }
        }

        private string footballerSurname;
        public string FootballerSurname
        {
            get { return footballerSurname; }
            set { footballerSurname = value; }
        }

        private string footballerBirthPlace;
        public string FootballerBirthPlace
        {
            get { return footballerBirthPlace; }
            set { footballerBirthPlace = value; }
        }

        private string footballerBirthDate;
        public string FootballerBirthDate
        {
            get { return footballerBirthDate; }
            set { footballerBirthDate = value; }
        }

        private int footballerTeamNo;
        public int FootballerTeamNo
        {
            get { return footballerTeamNo; }
            set { footballerTeamNo = value; }
        }

        private string footballerContractStartDate;
        public string FootballerContractStartDate
        {
            get { return footballerContractStartDate; }
            set { footballerContractStartDate = value; }
        }

        private string footballerContractEndDate;
        public string FootballerContractEndDate
        {
            get { return footballerContractEndDate; }
            set { footballerContractEndDate = value; }
        }
    }
}
