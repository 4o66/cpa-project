using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpa.Models
{
    public class StatementLine
    {
        [JsonProperty("name")]
        public string Name {get; set;}
        [JsonProperty("value")]
        public long Value {get; set;}
        [JsonProperty("isPositive")]
        public bool isPositive {get; set;}
        public StatementLine(string Name, long Value, bool isPositive )
        {
            this.Name = Name;
            this.Value = Value;
            this.isPositive = isPositive;
        }
        public StatementLine(string Name, bool isPositive )
        {
            this.Name = Name;
            this.isPositive = isPositive;
        }
    }
    
}