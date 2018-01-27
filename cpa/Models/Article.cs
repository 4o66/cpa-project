using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpa.Models
{
    public class Article
    {
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
        

        public Article(int ID, int CompanyID, string Title, string Body, DateTime Date, string Source)
        {
            this.ID = ID;
            this.Title = Title;
            this.Body = Body;
            this.Date = Date;
            this.CompanyID = CompanyID;
            this.Source = Source;
        }
    }
}
