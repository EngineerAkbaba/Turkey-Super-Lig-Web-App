using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class Stat
    {
        private int statNo;

        public int StatNo
        {
            get { return statNo; }
            set { statNo = value; }
        }
        private string statname;

        public string Statname
        {
            get { return statname; }
            set { statname = value; }
        }
        private int capacity;

        public int Capacity
        {
            get { return capacity; }
            set { capacity = value; }
        }
        private string location;

        public string Location
        {
            get { return location; }
            set { location = value; }
        }
        private int teamNo;

        public int TeamNo
        {
            get { return teamNo; }
            set { teamNo = value; }
        } 
    }
}
