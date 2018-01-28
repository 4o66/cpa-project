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
        public List<RatioConstruct> Numerator {get; set;}
        [JsonProperty("denominator")]
        public List<RatioConstruct> Denominator {get; set;}

        //public RatioLines<RatioLine> {get; set;}
        

        public Ratio(int ID, string Name, List<RatioConstruct> Numerator, List<RatioConstruct> Denominator )
        {
            this.ID = ID;
            this.Name = Name;
            this.Numerator = Numerator;
            this.Denominator = Denominator;

        }
    }
}
