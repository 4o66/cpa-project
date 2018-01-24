using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace cpa.Models
{
    public class StatementLine
    {
        public string Name {get; set;}
        public long Value {get; set;}
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