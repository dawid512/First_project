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


        public static SqlConnection connection = new SqlConnection(Context.sqlconnection);


        private void edytuj_usun_klienta_Load(object sender, EventArgs e)
        {
            
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            connection.Open();

            fill_grid();
        }

        public void fill_grid()
        {
            
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select* From[simple_order_processing].[dbo].[Klient]" ;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataGridView1.DataSource = dt;

        }
}
}
