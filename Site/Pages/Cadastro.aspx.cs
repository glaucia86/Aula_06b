using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrar(object sender, EventArgs e)
        {
            try
            {
                var p = new Produto()
                {
                    Nome = txtNome.Text,
                    Preco = Convert.ToDecimal(txtPreco.Text),
                    DataCompra = calDataCompra.SelectedDate,
                    Garantia = rblGarantia.SelectedValue        
                };

                //Foreach para percorrer os checkbox
                foreach (ListItem item in chkCaracteristicas.Items)
                {
                    if (item.Selected)
                    {
                        p.Caracteristicas = p.Caracteristicas + item.Value + ",";
                    }
                }

                var d = new ProdutoDal();
                d.Insert(p);

                lblMensagem.Text = "Produto Cadastrado com Sucesso!";

                LimparCampos();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }

        private void LimparCampos()
        {
            txtNome.Text = String.Empty;
            txtPreco.Text = String.Empty;
            calDataCompra.SelectedDates.Clear();
            rblGarantia.SelectedIndex = -1;
            chkCaracteristicas.SelectedIndex = -1;
        }
    }
}