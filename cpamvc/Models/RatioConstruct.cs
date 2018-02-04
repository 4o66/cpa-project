using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpamvc.Models
{
    public class RatioConstruct
    {
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("id")]
        public int ID { get; set; }

        [JsonProperty("tag")]

        public string Tag { get; set; }
        [JsonProperty("value")]
        public decimal Value { get; set; }

        [JsonProperty("operator")]
        public string Operator { get; set; }
        [JsonProperty("position")]
        public string Position { get; set; }

        [JsonProperty("line")]
        public int Line { get; set; }

        public RatioConstruct() { }

        public RatioConstruct(string Name, decimal Value, string Position)
        {
            this.Name = Name;
            this.Value = Value;
            this.Operator = Operator;
            this.Position = Position;
        }

        public static List<RatioConstruct> getRatioConstructs() {
            //Gets all ratio constructs
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            List<RatioConstruct> list = new List<RatioConstruct>();

            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id, name FROM ratio_construct", sqlConn);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    list.Add(new RatioConstruct
                    {
                        ID = Int32.Parse(myReader["id"].ToString()),
                        Name = myReader["name"].ToString()
                    });
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return list;
        }

        public static string GetRatioConstructName(int id)
        {
            //Gets all ratio constructs
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            string name = "not found";
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT name FROM ratio_construct WHERE id = @id", sqlConn);
                sqlCmd.Parameters.AddWithValue("@id", id);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    name = myReader["name"].ToString();
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return name;
        }
        public static string GetRatioConstructTag(int id)
        {
            //Gets all ratio constructs
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            string tag = "not found";
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT tag FROM ratio_construct WHERE id = @id", sqlConn);
                sqlCmd.Parameters.AddWithValue("@id", id);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    tag = myReader["tag"].ToString();
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return tag;
        }

        public static int GetRatioConstructID(RatioConstruct construct)
        {
            
            int id = -1;
            string tag = construct.Tag;
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id FROM ratio_construct WHERE " +
                    "tag = @tag", sqlConn);
               
                sqlCmd.Parameters.AddWithValue("@tag", tag);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    id = Int32.Parse(myReader["id"].ToString());
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return id;
        }

        

        public static int AddRatioConstruct(RatioConstruct construct)
        {
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            try
            {
                sqlConn.Open();
                string commandText = "IF NOT EXISTS (" +
                    " SELECT id FROM ratio_construct WHERE tag = @tag )" +
                    " BEGIN INSERT INTO ratio_construct (name, tag) " +
                    "VALUES (@name, @tag) END";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@name", construct.Name);
                sqlCmd.Parameters.AddWithValue("@tag", construct.Tag);
                rows = sqlCmd.ExecuteNonQuery();
                Debug.WriteLine("rows affected: " + rows);
                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return rows;
        }
    }
}
