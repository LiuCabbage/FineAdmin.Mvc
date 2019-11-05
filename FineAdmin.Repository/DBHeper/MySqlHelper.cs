using MySql.Data.MySqlClient;

namespace FineAdmin.Repository
{
    public class MySqlHelper
    {
        public static string mysqlconnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mysqlconn"].ConnectionString;

        public static System.Data.IDbConnection GetConnection()
        {
            var connection = new MySqlConnection(mysqlconnectionString);
            connection.Open();
            return connection;
        }
    }
}
