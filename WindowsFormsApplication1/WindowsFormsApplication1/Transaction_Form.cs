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
    public partial class Transaction_Form : Form
    {
        Customer obj1 = new Customer();
        public Transaction_Form(Customer ob)
        {
            obj1 = ob;
            InitializeComponent();
        }

        private void Transaction_Form_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Trans_form_creditdebit f1 = new Trans_form_creditdebit(obj1);
            f1.Show();
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "Date    C/D    A/c   Ammount \n";
            for (int j = 0; j <= obj1.i; j++) {
                obj1.trans[j] = new transactions();
                richTextBox1.Text = obj1.trans[j].date.ToString() + "  " + obj1.trans[j].type.ToString() + "  " + obj1.trans[j].ac.ToString() + "  " + obj1.trans[j].amt.ToString() + "\n";
            }

        }
    }
}
