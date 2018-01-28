using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace cpa.Models
{
    public class CalculatedRatio
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public int UserID { get; set; }
        public List<RatioConstruct> Numerator {get; set;}
        public List<RatioConstruct> Denominator {get; set;}

        public Company Company {get; set;}

        public long Value {get; set;}

        //public RatioLines<RatioLine> {get; set;}
        

        public CalculatedRatio(Ratio ratio, Company company)
        {   
            this.Numerator = ratio.Numerator;
            this.Denominator = ratio.Denominator;
            this.Company = company;
            //this.Value = calculated ratio 
        }
    }
}
