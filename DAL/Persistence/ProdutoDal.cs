using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    public class ProdutoDal : Conexao
    {
        //Método Insert:
        public void Insert(Produto p)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("uspInserirProduto", Con);
                Cmd.CommandType = CommandType.StoredProcedure;

                Cmd.Parameters.AddWithValue("@Nome", p.Nome);
                Cmd.Parameters.AddWithValue("@Preco", p.Preco);
                Cmd.Parameters.AddWithValue("@DataCompra", p.DataCompra);
                Cmd.Parameters.AddWithValue("@Garantia", p.Garantia);
                Cmd.Parameters.AddWithValue("@Caracteristicas", p.Caracteristicas);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao inserir dados!" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método SelectAll:
        public List<Produto> SelectAll()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Produto", Con);
                Dr = Cmd.ExecuteReader();

                var lista = new List<Produto>();

                while (Dr.Read())
                {
                    var p = new Produto()
                    {
                        Codigo          = Convert.ToInt32(Dr["Codigo"]),
                        Nome            = Convert.ToString(Dr["Nome"]),
                        Preco           = Convert.ToDecimal(Dr["Preco"]),
                        DataCompra      = Convert.ToDateTime(Dr["DataCompra"]),
                        Garantia        = Convert.ToString(Dr["Garantia"]),
                        Caracteristicas = Convert.ToString(Dr["Caracteristicas"])
                    };
                    lista.Add(p);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao listar todos os produtos!" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
