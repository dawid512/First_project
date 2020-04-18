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
    public partial class edytuj_usun_klienta : Form
    {
        public edytuj_usun_klienta()
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

        void PopulatePositionComboBox()
        {
            var sqlcon = Context.sqlconnection;

            using (var connection = new SqlConnection(sqlcon))
            {
                connection.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From [simple_order_processing].[dbo].[Klient]", connection);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                cbxNazwisko.DataSource
            }

        }
    }
}
