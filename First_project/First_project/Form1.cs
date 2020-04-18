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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var login = textBox1.Text;
            var haslo = textBox2.Text;
            
            
            string rules = "SELECT * FROM[simple_order_processing].[dbo].[Pracownik] Where login = '" + login + "' AND password = '"+haslo+"'";

            

            var sqlcon = Context.sqlconnection;

            var connection = new SqlConnection(sqlcon);

            connection.Open();

            SqlCommand sqlcmd = new SqlCommand(rules, connection);

            SqlDataReader dr = sqlcmd.ExecuteReader();

            if (dr.Read())
            {

                var valueRules = (dr["rules"].ToString());
                





                var admin = "1";
                admin.ToString();
                var pracownik = "2";
                //jan123 haslo512


                //wywala błędy gdy zamiast przycisku da się enter 

                if (valueRules == admin)
                {
                    this.Hide();
                    var Admin_Panel = new Admin_panel();
                   
                    Admin_Panel.Closed += (s, args) => this.Close();
                    Admin_Panel.Show();
                }
                else if (valueRules == pracownik)
                {

                    this.Hide();
                    var FormAdmin = new FormAdmin();
                    FormAdmin.Closed += (s, args) => this.Close();
                    FormAdmin.Show();
                }
            }else
                {
                    MessageBox.Show("Error");
                }
            dr.Close();
            
        }
    }
}
