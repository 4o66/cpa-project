using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;
namespace cpa.Models
{
    public class Company
    {
        [JsonProperty("id")]
        public int ID { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("market")]
        public string Market { get; set; }
        [JsonProperty("symbol")]
        public string Symbol { get; set; }
        [JsonProperty("description")]
        public string Description { get; set; }

        public Company(int ID, string Name)
        {
            this.ID = ID;
            this.Name = Name;
        }

        public Company(int ID, string Name, string Description)
        {
            this.ID = ID;
            this.Name = Name;
            this.Description = Description;
        }

        public Company(int ID, string Name, string Description, string Market, string Symbol)
        {
            this.ID = ID;
            this.Name = Name;
            this.Description = Description;
            this.Market = Market;
            this.Symbol = Symbol;
        }
    }

    
}
