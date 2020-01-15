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
    public partial class Trans_form_creditdebit : Form
    {
        Customer obj3;
        public Trans_form_creditdebit(Customer obj2)
        {
            obj3 = obj2;
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            obj3.trans[obj3.i] = new transactions(DateTime.Now.ToString(),textBox4.Text,textBox3.Text,textBox2.Text);
            obj3.i++;
        }
    }
}
