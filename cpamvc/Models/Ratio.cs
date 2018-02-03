using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpamvc.Models
{
    public class Ratio
    {   
        [JsonProperty("id")]
        public int ID { get; set; }
         
        [JsonProperty("name")]
        public string Name { get; set; }
        
        [JsonProperty("type")]
        public int Type { get; set; }

        [JsonProperty("userID")]
        public int UserID { get; set; }
        [JsonProperty("numerator")]
        public List<RatioConstruct> Numerator {get; set;}
        [JsonProperty("denominator")]
        public List<RatioConstruct> Denominator {get; set;}

        //public RatioLines<RatioLine> {get; set;}

            public Ratio() { }
        

        public Ratio(int ID, string Name, List<RatioConstruct> Numerator, List<RatioConstruct> Denominator )
        {
            this.ID = ID;
            this.Name = Name;
            this.Numerator = Numerator;
            this.Denominator = Denominator;

        }

        public static Ratio getRatio(int id)
        {
            //given ratio id return a ratio
            return null;
        }

        public static int AddRatio(Ratio newRatio)
        {

            //Add a ratio. So far only adds the ratio part,
            //still needs to add the denominator and numerator so
            //feel free to scrap it or build off of it
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO ratio (name, type, user_id) " +
                    "VALUES (@name, @type, 0)";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@name", newRatio.Name);
                sqlCmd.Parameters.AddWithValue("@type", newRatio.Type);
                rows = sqlCmd.ExecuteNonQuery();
                Console.WriteLine("rows affected: {0}", rows);

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return rows;
        }
    }
}
