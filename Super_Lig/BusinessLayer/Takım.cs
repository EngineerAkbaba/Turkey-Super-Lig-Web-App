using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class Takım
    {
        private int teamNo;

        public int TeamNo
        {
            get { return teamNo; }
            set { teamNo = value; }
        }
        private string teamName;

        public string TeamName
        {
            get { return teamName; }
            set { teamName = value; }
        }
        private string foundationyear;

        public string Foundationyear
        {
            get { return foundationyear; }
            set { foundationyear = value; }
        }
        private string color;

        public string Color
        {
            get { return color; }
            set { color = value; }
        }
        private int numberChamp;
        public int NumberChamp
        {
            get { return numberChamp; }
            set { numberChamp = value; }
        }
    }
}
