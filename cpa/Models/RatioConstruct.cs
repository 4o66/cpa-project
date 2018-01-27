using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpa.Models
{
    public class RatioConstruct
    {
        [JsonProperty("name")]
        public string Name {get; set;}

        [JsonProperty("value")]
        public decimal Value {get; set;}

        [JsonProperty("operator")]
        public string Operator {get; set;}

        public RatioConstruct(string Name, decimal Value, string Position)
        {
            this.Name = Name;
            this.Value = Value;
            this.Operator = Operator;
        }
    }
}
