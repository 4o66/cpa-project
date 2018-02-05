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
            //Works well
            
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            int id = -1;
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
                string query = "SELECT id FROM ratio WHERE name = @name AND type = @type";
                SqlCommand cmd = new SqlCommand(query, sqlConn);
                cmd.Parameters.AddWithValue("@name", newRatio.Name);
                cmd.Parameters.AddWithValue("@type", newRatio.Type);
                id = (int)cmd.ExecuteScalar();
                System.Diagnostics.Trace.WriteLine("id is: " + id);

                //SqlDataReader myReader = null;
                //myReader = cmd.ExecuteReader();
                //while (myReader.Read())
                //{
                //    id = Int32.Parse(myReader["id"].ToString());
                //}

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            if (id == -1)
            {
                System.Diagnostics.Trace.WriteLine("...........id == -1 triggered");

                return id;
            }

            System.Diagnostics.Trace.WriteLine("..........id is not -1, moving on...");

            //insert ratio details for each row
            foreach (RatioConstruct construct in newRatio.Denominator)
            {
                System.Diagnostics.Trace.WriteLine("..........insterting rows....");

                rows = AddRatioDetail(construct, id, "d");
            }
            foreach (RatioConstruct construct in newRatio.Numerator)
            {
                rows = AddRatioDetail(construct, id, "n");
            }
            return rows;
        }

        public static int AddRatioDetail(RatioConstruct construct, int ratioID, string position)
        {
            //Works well
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            System.Diagnostics.Trace.WriteLine("...........inside addratiodetial" );
            System.Diagnostics.Trace.WriteLine("......Ratio ID: " + ratioID);
            System.Diagnostics.Trace.WriteLine(".......Position: " + position);
            System.Diagnostics.Trace.WriteLine("........Order: " + construct.Position);
            System.Diagnostics.Trace.WriteLine("........Construct ID: " + construct.ID);
            System.Diagnostics.Trace.WriteLine("........Operator: " + construct.Operator);

            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO ratio_detail (ratio_id, position, equation_order, ratio_construct_id, operator) " +
                    "VALUES (@rID, @pos, @order, @cID, @operator)";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@rID", ratioID);
                sqlCmd.Parameters.AddWithValue("@pos", position);
                sqlCmd.Parameters.AddWithValue("@order", construct.Position);
                sqlCmd.Parameters.AddWithValue("@cID", construct.ID);
                sqlCmd.Parameters.AddWithValue("@operator", construct.Operator);

                rows = sqlCmd.ExecuteNonQuery();
               



                System.Diagnostics.Trace.WriteLine("..........rows affected: "+ rows);
                

                sqlConn.Close();
            }
            catch (Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }
            return rows;
        }
    }
}
