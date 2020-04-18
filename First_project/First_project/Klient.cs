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
    public partial class Klient : Form
    {
        public Klient()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.Hide();
            var dodaj = new dodaj_klienta();

            dodaj.Closed += (s, args) => this.Close();
            dodaj.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            var logowanie = new Form1();

            logowanie.Closed += (s, args) => this.Close();
            logowanie.Show();
        }
    }
}
