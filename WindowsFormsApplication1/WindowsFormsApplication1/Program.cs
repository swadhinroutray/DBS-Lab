using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public class Customer
    {
        public int i = 0;
        public String name, pwd, cust_name, ac_no;
        public String[] arr = new String[100];
        public transactions[] trans = new transactions[100];
       public Customer() {
            name = "abc";
            pwd = "abc";
            ac_no = "12345";
           
        }
    }
    public class transactions
    {
        public String date;
        public String type;
        public String amt;
        public String ac;
        public transactions() {
            date = type = amt = ac = "";
        }
        public transactions(String d, String t, String a, String account)
        {
            date = d; type = t; amt = a; ac = account;

        }

    }
    static class Program
    {
              
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Bank_Application());
        }
    }
}
