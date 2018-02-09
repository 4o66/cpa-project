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

        public static List<Ratio> GetRatios()
        {
            List<Ratio> ratioList = new List<Ratio>();
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                //Get Ratio ID, Name, Type
                string query = "SELECT id, name, type FROM ratio";
                SqlCommand cmd = new SqlCommand(query, sqlConn);
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();
                while (myReader.Read())
                {
                    Ratio newRatio = new Ratio
                    {
                        ID = Int32.Parse(myReader["id"].ToString()),
                        Name = myReader["name"].ToString(),
                        Type = Int32.Parse(myReader["type"].ToString())
                    };
                    newRatio = GetRatioDetails(newRatio);
                    ratioList.Add(newRatio);
                }

                sqlConn.Close();
                
            }
            catch(Exception e)
            {
                System.Diagnostics.Trace.Write(e.ToString());
            }
            return ratioList;

        }
        public static Ratio GetRatio(int id)
        {
            Ratio ratio = new Ratio();
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                //Get Ratio ID, Name, Type
                string query = "SELECT id, name, type FROM ratio WHERE id = @id";
                SqlCommand cmd = new SqlCommand(query, sqlConn);
                cmd.Parameters.AddWithValue("@id", id);
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();
                while (myReader.Read())
                {
                    Ratio newRatio = new Ratio
                    {
                        ID = Int32.Parse(myReader["id"].ToString()),
                        Name = myReader["name"].ToString(),
                        Type = Int32.Parse(myReader["type"].ToString())
                    };
                    ratio = newRatio;
                }

                sqlConn.Close();
                
            }
            catch (Exception e)
            {
                System.Diagnostics.Trace.Write(e.ToString());
            }
            System.Diagnostics.Trace.WriteLine("............About to call get details, ratio name is: " + ratio.Name + "..id: " + ratio.ID);
            ratio = GetRatioDetails(ratio);
            return ratio;

        }

        public static Ratio GetRatioDetails(Ratio ratio)
        {
            
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                ratio.Denominator = new List<RatioConstruct>();
                ratio.Numerator = new List<RatioConstruct>();
                string queryNum = "SELECT ratio_id, position, equation_order, ratio_construct_id, operator FROM ratio_detail" +
                                        " WHERE ratio_id = @rID";
                SqlCommand cmd2 = new SqlCommand(queryNum, sqlConn);
                cmd2.Parameters.AddWithValue("@rID", ratio.ID);
                System.Diagnostics.Trace.WriteLine(".... inside get details id is: " + ratio.ID);
                SqlDataReader myReader = null;
                myReader = cmd2.ExecuteReader();
                while (myReader.Read())
                {
                    System.Diagnostics.Trace.WriteLine("... has rows, getting details");
                    int id_temp = Int32.Parse(myReader["ratio_construct_id"].ToString());

                    RatioConstruct construct = new RatioConstruct
                    {
                        ID = id_temp,
                        Operator = myReader["operator"].ToString(),
                        Position = myReader["position"].ToString(),
                        Name = RatioConstruct.GetRatioConstructName(id_temp)
                    };
                    System.Diagnostics.Trace.WriteLine(".....Position is: " + construct.Operator);
                    if (construct.Position == "n")
                    {
                        System.Diagnostics.Trace.WriteLine("..... Position is n");
                        ratio.Numerator.Add(construct);
                    }
                    else if (construct.Position == "d")
                    {
                        System.Diagnostics.Trace.WriteLine("..... Position is d");

                        ratio.Denominator.Add(construct);
                    }

                }

                sqlConn.Close();
            }
            catch(Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }
            return ratio;
                
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
            System.Diagnostics.Trace.WriteLine("........Order: " + construct.Order);
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
                sqlCmd.Parameters.AddWithValue("@order", construct.Order);
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
