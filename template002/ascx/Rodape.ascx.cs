using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace CiaShop.Loja.Assets.Templates._1.ascx
{
    /// <summary>
    /// Classe que representa Rodape
    /// </summary>
    public partial class Rodape : Ciashop.Privada.Componente.ModeloControleLoja
    {
        /// <summary>
        /// Método para carregar o controle
        /// </summary>
        /// <param name="sender">Objeto do tipo object</param>
        /// <param name="e">Objeto do tipo EventArgs</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
    }
}