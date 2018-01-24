using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpa.Models
{
    public class Ratio
    {   
        [JsonProperty("id")]
        public int ID { get; set; }
         
        [JsonProperty("name")]
        public string Name { get; set; }
        
        [JsonProperty("type")]
        public string Type { get; set; }

        [JsonProperty("userID")]
        public int UserID { get; set; }
        [JsonProperty("numerator")]
        public List<StatementLine> Numerator {get; set;}
        [JsonProperty("denominator")]
        public List<StatementLine> Denominator {get; set;}

        //public RatioLines<RatioLine> {get; set;}
        

        public Ratio(int ID, string Name, List<StatementLine> Numerator, List<StatementLine> Denominator )
        {
            this.ID = ID;
            this.Name = Name;
            this.Numerator = Numerator;
            this.Denominator = Denominator;

        }
    }
}
