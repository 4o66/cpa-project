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
        
        [JsonProperty("body")]
        public string Body {get; set;}

        [JsonProperty("source")]
        public string Source {get; set;}

        [JsonProperty("date")]
        public DateTime Date {get; set;}

        [JsonProperty("title")]
        public string Title {get; set;}
        [JsonProperty("url")]
        public string URL { get; set; }
        
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

        public static List<Article> getArticles(int companyID)
        {
            //given company id, return all articles
            List<Article> articles = new List<Article>();
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id, company_id, source, date, url, text, " +
                    "title FROM article WHERE company_id = @id", sqlConn);
                sqlCmd.Parameters.AddWithValue("@id", companyID);
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
        public static List<Article> getArticles(int companyID, int ratioID)
        {
            //IMPORTANT
            //Using the semantic network, get articles related to given company and ratio
            return null;
        }
        
        public static int AddArticle(Article article)
        {
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            int rows = -1;
            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO article (company_id, source, date, url, " +
                    "text, title) " +
                    "VALUES (@company_id, @source, @date, @url, @text, @title) ";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@company_id", article.CompanyID);
                sqlCmd.Parameters.AddWithValue("@source", article.Source);
                sqlCmd.Parameters.AddWithValue("@date", article.Date);
                sqlCmd.Parameters.AddWithValue("@url", article.URL);
                sqlCmd.Parameters.AddWithValue("@text", article.Body);
                sqlCmd.Parameters.AddWithValue("@title", article.Title);
                rows = sqlCmd.ExecuteNonQuery();
                Console.WriteLine("rows affected: {0}", rows);
                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }

            return rows;
        }
       

           
           

       
    }
}
