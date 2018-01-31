using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpamvc.Models
{
    public class RatioConstruct
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        public int ID { get; set; }

        [JsonProperty("value")]
        public decimal Value { get; set; }

        [JsonProperty("operator")]
        public string Operator { get; set; }
        [JsonProperty("position")]
        public string Position { get; set; }

        public RatioConstruct() { }

        public RatioConstruct(string Name, decimal Value, string Position)
        {
            this.Name = Name;
            this.Value = Value;
            this.Operator = Operator;
            this.Position = Position;
        }

        public static List<RatioConstruct> getRatioConstructs() {
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
    }
}
