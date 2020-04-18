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

        string id;
        int id1;
        int delete_id;
















        private void dataGridView1_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {

            id = dataGridView1.Rows[e.RowIndex].Cells["id_klienta"].Value.ToString();

            if (id == "") 
            {
                id1 = 0;
            }
            else
            {
                id1 = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells["id_klienta"].Value.ToString());
            }

            if (id1 == 0) { 
            }else
            {
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Update [simple_order_processing].[dbo].[Klient] set Imie='" + dataGridView1.Rows[e.RowIndex].Cells["Imie"].Value.ToString() + "',Nazwisko='" + dataGridView1.Rows[e.RowIndex].Cells["Nazwisko"].Value.ToString() + "',telefon='" + dataGridView1.Rows[e.RowIndex].Cells["telefon"].Value.ToString() + "',[e-mail]='" + dataGridView1.Rows[e.RowIndex].Cells["e-mail"].Value.ToString() + "',adres='" + dataGridView1.Rows[e.RowIndex].Cells["adres"].Value.ToString() + "' Where id_klienta=" + id+";";
                cmd.ExecuteNonQuery();
                fill_grid();
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
          
        }

        private void button4_Click(object sender, EventArgs e)
        {
            
        }

        private void usuńToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Delete from [simple_order_processing].[dbo].[Klient] where id_klienta=" + delete_id + ";";
            cmd.ExecuteNonQuery();
            fill_grid();
        }

        private void dataGridView1_CellMouseUp(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                delete_id = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells["id_klienta"].Value.ToString());
                this.contextMenuStrip1.Show(this.dataGridView1, e.Location);
                contextMenuStrip1.Show(Cursor.Position);
            }
        }
    }
}
