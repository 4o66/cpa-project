using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace cpa.Models
{
    public class Ratio
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public int UserID { get; set; }
        //public RatioLines<RatioLine> {get; set;}

        public Ratio(int ID, string Name)
        {
            this.ID = ID;
            this.Name = Name;
        }
    }
}
