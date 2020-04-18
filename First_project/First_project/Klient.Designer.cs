namespace First_project
{
    partial class Klient
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button6 = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.button5 = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.button4 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(439, 346);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(404, 163);
            this.button6.TabIndex = 24;
            this.button6.Text = "Dodaj nowego Klienta";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel2.Controls.Add(this.button5);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(270, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1410, 100);
            this.panel2.TabIndex = 26;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(1159, 12);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(200, 69);
            this.button5.TabIndex = 0;
            this.button5.Text = "Wyloguj";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.button4);
            this.panel1.Controls.Add(this.button3);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.button1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(270, 1007);
            this.panel1.TabIndex = 25;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(0, 536);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(267, 93);
            this.button4.TabIndex = 3;
            this.button4.Text = "Zamówienia";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(0, 394);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(267, 93);
            this.button3.TabIndex = 2;
            this.button3.Text = "Produkty";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(0, 260);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(267, 93);
            this.button2.TabIndex = 1;
            this.button2.Text = "Pracownicy";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(3, 134);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(267, 93);
            this.button1.TabIndex = 0;
            this.button1.Text = "Klient";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(1016, 346);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(404, 163);
            this.button7.TabIndex = 27;
            this.button7.Text = "Edytuj lub usuń klienta";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // Klient
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1680, 1007);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "Klient";
            this.Text = "Klient";
            this.panel2.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button7;
    }
}