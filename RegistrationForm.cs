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
    public partial class RegistrationForm : Form
    {
        String regno, name;
        String res;
        Object choice;
        String date;
        public RegistrationForm()
        {
            InitializeComponent();
        }

        private void RegistrationForm_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
            {
                res += radioButton2.Text + '\n';

            }
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            listBox1.SelectionMode = SelectionMode.MultiSimple;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            String[] arr = new String[5];
           int i =0;
           foreach (Object selecteditem in listBox1.Items)
            {
                sb.Append(selecteditem.ToString());
                sb.Append(" ");
                 
            }
            res += sb;
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            regno = textBox1.Text;
   
        }


        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                res += radioButton1.Text +'\n';

            }


        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
                      
            if(comboBox1.SelectedItem.Equals("IT")){
                listBox1.Items.Clear();
                res += comboBox1.Text + '\n';
                listBox1.Items.Add("DS");
                listBox1.Items.Add("Algo");
                listBox1.Items.Add("DBS");
                 
            }
            if (comboBox1.SelectedItem.Equals("CCE"))
            {
                listBox1.Items.Clear();
                res += comboBox1.Text + '\n';
                listBox1.Items.Add("DS");
                listBox1.Items.Add("Algo");
                listBox1.Items.Add("DBS");
            }
            if (comboBox1.SelectedItem.Equals("CSE"))
            {
                listBox1.Items.Clear();
                res += comboBox1.Text + '\n';
                listBox1.Items.Add("DS");
                listBox1.Items.Add("Algo");
                listBox1.Items.Add("DBS");
                
            }
            if (comboBox1.SelectedItem.Equals("EEE"))
            {
                listBox1.Items.Clear();
                res += comboBox1.Text + '\n';
                listBox1.Items.Add("EMW");
                listBox1.Items.Add("EM");
                listBox1.Items.Add("EE");

            }


        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked == true)
            {
                res += radioButton3.Text + '\n';

            }
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            date = dateTimePicker1.Text;
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
            
            res += regno + '\n';
            res += name + '\n';
            res += date + '\n';
            richTextBox1.Text = res;
           
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            name = textBox2.Text;
            
        }
    }
}
