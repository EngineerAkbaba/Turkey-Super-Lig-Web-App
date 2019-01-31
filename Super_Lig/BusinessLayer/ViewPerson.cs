using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
namespace BusinessLayer
{
    public class ViewPerson
    {
        private int formaNo;

        public int FormaNo
        {
            get { return formaNo; }
            set { formaNo = value; }
        }
        private string futbolcuAdı;

        public string FutbolcuAdı
        {
            get { return futbolcuAdı; }
            set { futbolcuAdı = value; }
        }
        private string futbolcuSoyadı;

        public string FutbolcuSoyadı
        {
            get { return futbolcuSoyadı; }
            set { futbolcuSoyadı = value; }
        }
        private string takımadı;

        public string Takımadı
        {
            get { return takımadı; }
            set { takımadı = value; }
        }
        private string takımrengi;

        public string Takımrengi
        {
            get { return takımrengi; }
            set { takımrengi = value; }
        }
    }
}
