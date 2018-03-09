using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace cpamvc.Models
{
    public class Predicate
    {
        private static SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

        [JsonProperty("object-a")]
        public string ObjectA {get; set;}
        [JsonProperty("object-b")]
        public string ObjectB { get; set; }
        [JsonProperty("type")]
        public string Type { get; set; }

        public Predicate() { }

        public static int AddPredicate(Predicate newObject)
        {
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            try
            {
                sqlConn.Open();
                string commandText = "";
                switch (newObject.Type)
                {
                    case "isc":
                        commandText = "INSERT INTO isc (obj_a, obj_b) " +
                    "VALUES (@objA, @objB)";
                        break;
                    case "isa":
                        commandText = "INSERT INTO isa (obj_a, obj_b) " +
                    "VALUES (@objA, @objB)";
                        break;
                    case "isp":
                        commandText = "INSERT INTO isp (obj_a, obj_b) " +
                    "VALUES (@objA, @objB)";
                        break;

                }
                
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@objA", newObject.ObjectA);
                sqlCmd.Parameters.AddWithValue("@objB", newObject.ObjectB);
                rows = sqlCmd.ExecuteNonQuery();
                sqlConn.Close();
            }
            catch (Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }
            return rows;
        }

        public static List<Predicate> FindIsA(RelationObject obj)
        {
            List<Predicate> predicates = new List<Predicate>();
            try
            {
                sqlConn.Open();
                SqlCommand sqlCommand = new SqlCommand("SELECT obj_a, obj_b FROM isa WHERE obj_a = @obj", sqlConn);
                sqlCommand.Parameters.AddWithValue("@obj", obj.Name);
                SqlDataReader myReader = sqlCommand.ExecuteReader();
                while(myReader.Read())
                {
                    Predicate predicate = new Predicate
                    {
                        ObjectA = myReader["obj_a"].ToString(),
                        ObjectB = myReader["obj_b"].ToString()
                    };

                    predicates.Add(predicate);
                }
                sqlConn.Close();
            }
            catch (Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }
            


            return predicates;
        }
        public static List<Predicate> FindIsC(RelationObject obj)
        {
            List<Predicate> predicates = new List<Predicate>();
            try
            {
                sqlConn.Open();
                SqlCommand sqlCommand = new SqlCommand("SELECT obj_a, obj_b FROM isc WHERE obj_a = @obj", sqlConn);
                sqlCommand.Parameters.AddWithValue("@obj", obj.Name);
                SqlDataReader myReader = sqlCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Predicate predicate = new Predicate
                    {
                        ObjectA = myReader["obj_a"].ToString(),
                        ObjectB = myReader["obj_b"].ToString()
                    };

                    predicates.Add(predicate);
                }
                sqlConn.Close();
            }
            catch (Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }



            return predicates;
        }
        public static List<Predicate> FindIsP(RelationObject obj)
        {
            List<Predicate> predicates = new List<Predicate>();
            try
            {
                sqlConn.Open();
                SqlCommand sqlCommand = new SqlCommand("SELECT obj_a, obj_b FROM isp WHERE obj_a = @obj", sqlConn);
                sqlCommand.Parameters.AddWithValue("@obj", obj.Name);
                SqlDataReader myReader = sqlCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Predicate predicate = new Predicate
                    {
                        ObjectA = myReader["obj_a"].ToString(),
                        ObjectB = myReader["obj_b"].ToString()
                    };

                    predicates.Add(predicate);
                }
                sqlConn.Close();
            }
            catch (Exception e) { System.Diagnostics.Trace.WriteLine(e.ToString()); }



            return predicates;
        }
    }
}
