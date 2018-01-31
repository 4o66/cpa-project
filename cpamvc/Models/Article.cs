using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpamvc.Models
{
    public class Article
    {
        private static SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

        [JsonProperty("id")]
        public int ID { get; set; }
        [JsonProperty("company_id")]
        public int CompanyID { get; set; }
        
        [JsonProperty("text")]
        public string Body {get; set;}

        [JsonProperty("source")]
        public string Source {get; set;}

        [JsonProperty("date")]
        public DateTime Date {get; set;}

        [JsonProperty("title")]
        public string Title {get; set;}
        
        public Article() { }

        public static Article getArticleById(int id)
        {
            Article article = new Article { Body = "Select Article to View" };
                try
                {
                    sqlConn.Open();
                    SqlDataReader myReader = null;
                    SqlCommand cmd = new SqlCommand("SELECT id, company_id, source, date, url, text, " +
                            "title FROM article WHERE id = " + id, sqlConn);
                    myReader = cmd.ExecuteReader();

                    while (myReader.Read())
                    {
                        article = new Article
                        {
                            ID = (Int32.Parse(myReader["id"].ToString())),
                            Title = myReader["title"].ToString(),
                            Body = myReader["text"].ToString(),
                            Source = myReader["source"].ToString(),
                            CompanyID = Int32.Parse(myReader["company_id"].ToString()),
                            Date = DateTime.Parse(myReader["date"].ToString())
                        };
                    }
                    sqlConn.Close();
                }

                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }
            return article;
         }

        public static List<Article> getArticles()
        {
            List<Article> articles = new List<Article>();
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id, company_id, source, date, url, text, " +
                    "title FROM article", sqlConn);

                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    articles.Add(new Article
                    {
                        ID = (Int32.Parse(myReader["id"].ToString())),
                        Title = myReader["title"].ToString(),
                        Body = myReader["text"].ToString(),
                        Source = myReader["source"].ToString(),
                        CompanyID = Int32.Parse(myReader["company_id"].ToString()),
                        Date = DateTime.Parse(myReader["date"].ToString())
                    });
                }

                sqlConn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            return articles;
        }
        
       

           
           

       
    }
}
