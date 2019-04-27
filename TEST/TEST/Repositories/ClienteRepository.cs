using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TEST.Models;

namespace TEST.Repositories
{
    public class ClienteRepository
    {

        public static bool addClienteToDB(Cliente cliente)
        {
            var connectionString = "Data Source=.;Initial Catalog=TECAirlines;Integrated Security=SSPI";
            
            var query = "INSERT INTO Cliente (NombreComp, Teléfono, Correo, Estudiante, InfoU, Carné, millasEstudiante) VALUES ('@NombreComp', @Telefono, '@Correo', @Estudiante, '@InfoU', @Carne, @millasEstudiante)";

            query = query.Replace("@NombreComp", cliente.NombreComp)
                    .Replace("@Telefono", cliente.Telefono.ToString())
                    .Replace("@Correo", cliente.Correo)
                    .Replace("@Estudiante", cliente.Estudiante.ToString())
                    //.Replace("@InfoU", cliente.InfoU)
                    .Replace("@Carne", cliente.Carne.ToString())
                    .Replace("@millasEstudiante", cliente.millasEstudiante.ToString());

          

            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();
                return true;
            }
            catch(Exception)
            {
                return false;
            }

        }

        public static Cliente getClienteFromDB(string correo)
        {

            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=.;Initial Catalog=TECAirlines;Integrated Security=SSPI";

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT * FROM Cliente WHERE Correo='@correo'";

            query =  query.Replace("@correo", correo);

            sqlCmd.CommandText = query; 

            sqlCmd.Connection = connection;
            connection.Open();
            reader = sqlCmd.ExecuteReader();
            Cliente cliente = null;
            while (reader.Read())
            {
                cliente = new Cliente();
                cliente.NombreComp = reader.GetValue(0).ToString();
                cliente.Telefono = Convert.ToInt32(reader.GetValue(1));
                cliente.Correo = reader.GetValue(2).ToString();
                cliente.Estudiante = Convert.ToInt32(reader.GetValue(3));
                //cliente.InfoU = reader.GetValue(4).ToString();
                cliente.Carne = Convert.ToInt32(reader.GetValue(5));
                cliente.millasEstudiante = Convert.ToInt32(reader.GetValue(6));
            }
            connection.Close();
            return cliente;
        }




        public static List<Cliente> getAllClientesFromDB()
        {

            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=.;Initial Catalog=TECAirlines;Integrated Security=SSPI";

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT * FROM Cliente ";

            

            sqlCmd.CommandText = query;

            sqlCmd.Connection = connection;
            connection.Open();
            reader = sqlCmd.ExecuteReader();
            List<Cliente> listaClientes = new List<Cliente>();
            
            while (reader.Read())
            {
                Cliente cliente = null;
                cliente = new Cliente();
                cliente.NombreComp = reader.GetValue(0).ToString();
                cliente.Telefono = Convert.ToInt32(reader.GetValue(1));
                cliente.Correo = reader.GetValue(2).ToString();
                cliente.Estudiante = Convert.ToInt32(reader.GetValue(3));
                //cliente.InfoU = reader.GetValue(4).ToString();
                cliente.Carne = Convert.ToInt32(reader.GetValue(5));
                cliente.millasEstudiante = Convert.ToInt32(reader.GetValue(6));
                listaClientes.Add(cliente);
            }
            connection.Close();
            return listaClientes;
        }



        public static bool deleteClienteFromDB(string correo)
        {
            var connectionString = "Data Source=.;Initial Catalog=TECAirlines;Integrated Security=SSPI";


            var query = "DELETE  FROM Cliente WHERE Correo='@correo'";

            query = query.Replace("@correo", correo);


            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

    }
            
    
}