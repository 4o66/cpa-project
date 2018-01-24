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
        
        [JsonProperty("name")]
        public string Name { get; set; }
        
        [JsonProperty("body")]
        public string Body {get; set;}

        [JsonProperty("date")]
        public DateTime Date {get; set;}
        //public RatioLines<RatioLine> {get; set;}
        

        public Article(int ID, string Name, string Body, DateTime Date)
        {
            this.ID = ID;
            this.Name = Name;
            this.Body = Body;
            this.Date = Date;

        }
    }
}
