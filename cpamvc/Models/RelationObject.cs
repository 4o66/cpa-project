using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace cpamvc.Models
{
    public class RelationObject
    {
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("plural")]
        public string Plural { get; set; }
        [JsonProperty("abreviation")]
        public string Abreviation { get; set; }

        [JsonProperty("type")]
        public int Type { get; set; }

        public RelationObject() { }

        public static List<RelationObject> GetObjects()
        {
            List<RelationObject> objectList = new List<RelationObject>();
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                
                string query = "SELECT name, plural, type FROM object";
                SqlCommand cmd = new SqlCommand(query, sqlConn);
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();
                while (myReader.Read())
                {
                    RelationObject newObject = new RelationObject
                    {
                        Type = Int32.Parse(myReader["id"].ToString()),
                        Name = myReader["name"].ToString(),
                        Plural = myReader["plural"].ToString(),
                        Abreviation = myReader["abreviation"].ToString()
                    };
                    objectList.Add(newObject);
                }

                sqlConn.Close();

            }
            catch (Exception e)
            {
                System.Diagnostics.Trace.Write(e.ToString());
            }
            return objectList.OrderBy(r => r.Name).ToList();
        }

        public static int AddObject(RelationObject newObject)
        {
            //Works well

            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO object (name, type, plural, abreviation) " +
                    "VALUES (@name, @type, @plural, @abreviation)";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@name", newObject.Name);
                sqlCmd.Parameters.AddWithValue("@plural", newObject.Plural);
                sqlCmd.Parameters.AddWithValue("@type", newObject.Type);
                sqlCmd.Parameters.AddWithValue("@abreviation", newObject.Abreviation);
                rows = sqlCmd.ExecuteNonQuery();
                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return rows;
        }
    }
}
