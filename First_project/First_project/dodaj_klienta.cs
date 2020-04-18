using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace First_project
{
    public partial class dodaj_klienta : Form
    {
        public dodaj_klienta()
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

        private void button6_Click(object sender, EventArgs e)
        {

            var imie = textBox1.Text;
            var nazwisko = textBox2.Text;
            var telefon = textBox3.Text;
            var email = textBox4.Text;
            var adres = textBox5.Text;

            string rules = "INSERT INTO [simple_order_processing].[dbo].[Klient]  values('" + imie+"', '"+nazwisko+"', '"+telefon+"', '"+email+"', '"+adres+"');";



            var sqlcon = Context.sqlconnection;

            var connection = new SqlConnection(sqlcon);


            connection.Open();

            SqlCommand sqlcmd = new SqlCommand(rules, connection);

            sqlcmd.ExecuteNonQuery();

           
                MessageBox.Show("Dodano");

            connection.Close();
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
