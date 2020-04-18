using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace First_project
{
    public partial class Admin_panel : Form
    {
        public Admin_panel()
        {
            InitializeComponent();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            var logowanie = new Form1();

            logowanie.Closed += (s, args) => this.Close();
            logowanie.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var klient = new Klient();

            klient.Closed += (s, args) => this.Close();
            klient.Show();
        }
    }
}
