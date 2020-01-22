using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication2
{
    public partial class Form1 : Form
    {
        public int i = 0;
        Book[] arr = new Book[5];
        Book b;
        public Form1(Book obj)
        {
            InitializeComponent();
            b = obj;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            b.ISBN = textBox1.Text;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            b.title = textBox2.Text;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            b.publisher = textBox3.Text;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedItem.Equals("India"))
            {
                listBox1.Items.Clear();
                listBox1.Items.Add("Durjoy Dutta");
                listBox1.Items.Add("Sudha Murthy");
            }
            if (comboBox1.SelectedItem.Equals("USA"))
            {
                listBox1.Items.Clear();
                listBox1.Items.Add("Jefferey Archer");
                listBox1.Items.Add("Dan Brown");
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            b.author = listBox1.Text;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            arr[i++] = b;
            MessageBox.Show("Added book with ISBN: "+ arr[i-1].ISBN);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form2 F = new Form2(arr,i);
            F.Show();
        }
    }
}
