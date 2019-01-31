using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class PuanTable
    {
        private int takımno;

        public int Takımno
        {
            get { return takımno; }
            set { takımno = value; }
        }
        private int numMatch;

        public int NumMatch
        {
            get { return numMatch; }
            set { numMatch = value; }
        }
        private int galibiyet;

        public int Galibiyet
        {
            get { return galibiyet; }
            set { galibiyet = value; }
        }
        private int beraberlik;

        public int Beraberlik
        {
            get { return beraberlik; }
            set { beraberlik = value; }
        }
        private int maglubiyet;

        public int Maglubiyet
        {
            get { return maglubiyet; }
            set { maglubiyet = value; }
        }
        private int atılangol;

        public int Atılangol
        {
            get { return atılangol; }
            set { atılangol = value; }
        }
        private int yenilengol;

        public int Yenilengol
        {
            get { return yenilengol; }
            set { yenilengol = value; }
        }
        private int averaj;

        public int Averaj
        {
            get { return averaj; }
            set { averaj = value; }
        }
        private int puan;

        public int Puan
        {
            get { return puan; }
            set { puan = value; }
        }
    }
}
