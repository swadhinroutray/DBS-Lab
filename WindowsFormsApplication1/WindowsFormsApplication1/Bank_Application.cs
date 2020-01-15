using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
   
    public partial class Bank_Application : Form
    {
        Customer obj = new Customer();
        
        public Bank_Application()
        {
            
            InitializeComponent();
        }

        private void Bank_Application_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox2.Text == obj.name && textBox1.Text == obj.pwd)
            {
                Transaction_Form f = new Transaction_Form(obj);
                f.Show();
            }
        }
    }
}
