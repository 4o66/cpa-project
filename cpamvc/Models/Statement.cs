using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace cpamvc.Models
{
    public class Statement
    {
        [JsonProperty("name")]
        public string Name {get; set;}
        [JsonProperty("year")]
        public int Year {get; set;}
        [JsonProperty("quarter")]
        public int Quarter {
            get; set;
        }
        [JsonProperty("company")]
        public Company Company {get; set;}

        [JsonProperty("statement-details")]
        public List<RatioConstruct> Details {get; set;}

        public Statement(string Name, int Year, int Quarter, Company Company, List<RatioConstruct> Details)
        {
            this.Name = Name;
            this.Year = Year;
            this.Quarter = Quarter;
            this.Company = Company;
            this.Details = Details;
        }

        public static Statement GetStatement(int companyID, int year, int type)
        {
            //Get statement for given company, year, and type (balance sheet or income(1 or 2) )
            return null;
        }
        public static List<Statement> GetStatements(int companyID)
        {
            //Get all statements related to a company
            return null;
        }
    
   
            
       
    }
}
