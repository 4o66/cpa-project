using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace cpa.Models
{
    public class Company
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Market { get; set; }
        public string Symbol { get; set; }
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
