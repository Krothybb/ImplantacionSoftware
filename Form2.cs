using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PetesBD
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Cliente c1 = new Cliente();
            renta r1 = new renta();

            

            
                r1.ellote = int.Parse(txtCosto.Text);
                //r1.lazona = Double.Parse(txtZona.Text);

                String q = r1.ellote.ToString();
                txtTotal.Text = ("$")+q;

                rtRecibo.AppendText("\t\t Pete's Camp " + "\n" + "-------------------------------------------------------------------------" + "\n");
                rtRecibo.AppendText("Nombre" + "\t\t\t" + txtNombre.Text + "\n");
                rtRecibo.AppendText("Apellido" + "\t\t\t" + txtApellido.Text + "\n");
                rtRecibo.AppendText("Domiclio" + "\t\t\t" + txtDomicilio.Text + "\n");
                rtRecibo.AppendText("Codigo Postal" + "\t\t\t" + txtCp.Text + "\n");
                rtRecibo.AppendText("Ciudad" + "\t\t\t" + txtCiudad.Text + "\n");
                rtRecibo.AppendText("Lote" + "\t\t\t" + txtlote2.Text + "\n");
                rtRecibo.AppendText("Zona" + "\t\t\t" + cbZona.Text + "\n");
                rtRecibo.AppendText("-------------------------------------------------------------------------" + "\n");
                rtRecibo.AppendText("Costo" + "\t\t\t" + txtTotal.Text + "\n");

            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ClearTextBoxes();
            rtRecibo.Clear();
            cbZona.Text = "";

        }

        private void Form2_Load(object sender, EventArgs e)
        {
            cbZona.Items.Add("A");
            cbZona.Items.Add("B");
            cbZona.Items.Add("C");
            cbZona.Items.Add("D");
            cbZona.Items.Add("E");
        }

        private void ClearTextBoxes()
        {
            Action<Control.ControlCollection> func = null;

            func = (controls) =>
            {
                foreach (Control control in controls)
                    if (control is TextBox)
                        (control as TextBox).Text = "";
                    else
                        func(control.Controls);

            };
            func(Controls);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog sfd = new SaveFileDialog() { Filter = "PDF File|*.pdf", ValidateNames = true })
            {
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    iTextSharp.text.Document doc = new iTextSharp.text.Document(PageSize.LETTER, 10, 10, 42, 35);
                    try
                    {
                        PdfWriter.GetInstance(doc, new FileStream(sfd.FileName, FileMode.Create));
                        doc.Open();
                        iTextSharp.text.Image JPG = iTextSharp.text.Image.GetInstance("12046919_1726331607595049_7849083510719349652_n.jpg");
                        JPG.SetAbsolutePosition((PageSize.LETTER.Width - JPG.ScaledWidth), (JPG.ScaledHeight));

                        JPG.ScalePercent(30f);
                        //JPG.SetAbsolutePosition(0, doc.PageSize.Height - JPG.ScaledHeight);
                        doc.Add(JPG);
                        rtRecibo.SelectAll();
                        rtRecibo.SelectionHangingIndent = 20;
                        doc.Add(new iTextSharp.text.Paragraph(rtRecibo.Text.PadLeft(20)));
                         
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    finally
                    {
                        doc.Close();
                    }
                }
            }
        }

        private void llenarcampos()
        {
            if (txtLote.Text == "1")
            {
                txtNombre.Text = "Alvaro";
                txtApellido.Text = "Calderon";
                txtCiudad.Text = "Ensenada";
                txtDomicilio.Text = "Lago Texcoco";
                txtCp.Text = "22890";
                txtCosto.Text = "500";
                cbZona.Text = "A";
                txtlote2.Text = "1";
            }
            else if (txtLote.Text == "2")
            {
                txtNombre.Text = "Yohali";
                txtApellido.Text = "Murillo";
                txtCiudad.Text = "Bahia Tortugas";
                txtDomicilio.Text = "Noc";
                txtCp.Text = "34234";
                txtCosto.Text = "250";
                cbZona.Text = "C";
                txtlote2.Text = "2";
            }
            else if (txtLote.Text == "3")
            {
                txtNombre.Text = "Probando";
                txtApellido.Text = "Prueba";
                txtCiudad.Text = "Juejue";
                txtDomicilio.Text = "Noc";
                txtCp.Text = "12345";
                txtCosto.Text = "1000";
                cbZona.Text = "B";
                txtlote2.Text = "3";
            }


        }

        private void txtLote_TextChanged(object sender, EventArgs e)
        {
            llenarcampos();
        }
    }
}

