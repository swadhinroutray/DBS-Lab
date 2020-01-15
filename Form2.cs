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
    public partial class Form2 : Form
    {
        
        string input = string.Empty; 
        string Op1 = string.Empty;
        string Op2 = string.Empty;
        char Operator;
        double res = 0.0;
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button10_Click(object sender, EventArgs e)
        {
            Op2 = input;
            double m, n;
            
            double.TryParse(Op1,out m);
            double.TryParse(Op2, out n);
            if (Operator == '+')
            {
                res = m + n;
                textBox1.Text = res.ToString();
            }
            if (Operator == '/')
            {
                res = m / n;
                textBox1.Text = res.ToString();
            }
            if (Operator == '*')
            {
                res = m * n;
                textBox1.Text = res.ToString();
            }
            if (Operator == '-')
            {
                res = m - n;
                textBox1.Text = res.ToString();
            }

        }

        private void button12_Click(object sender, EventArgs e)
        {
            
            Op1 = input;
            Operator = '+';
            input = string.Empty;

        }

        private void button14_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "0"; this.textBox1.Text += input;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "2"; this.textBox1.Text += input;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "4"; this.textBox1.Text += input;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "7"; this.textBox1.Text += input;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "3"; this.textBox1.Text += input;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
  

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "1"; this.textBox1.Text += input;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "5"; this.textBox1.Text += input;
        }

        private void button9_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "6"; this.textBox1.Text += input;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "8"; this.textBox1.Text += input;
        }

        private void button17_Click(object sender, EventArgs e)
        {
            this.textBox1.Text = string.Empty; input = input + "9"; this.textBox1.Text += input;
        }

        private void button11_Click(object sender, EventArgs e)
        {
            Op1 = input;
            Operator = '-';
            input = string.Empty;
        }

        private void button13_Click(object sender, EventArgs e)
        {
            Op1 = input;
            Operator = '*';
            input = string.Empty;
        }

        private void button14_Click_1(object sender, EventArgs e)
        {
            Op1 = input;
            Operator = '/';
            input = string.Empty;
        }

       
    }
}
