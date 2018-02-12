using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace cpamvc.Models
{
    public class CalculatedRatio
    {
        public Company Company { get; set; }
        public Ratio Ratio { get; set; }
        public decimal Value { get; set; }
        public int Year { get; set; }
        public CalculatedRatio() { }

        public CalculatedRatio(Ratio ratio, Company company, int year)
        {
            this.Ratio = ratio;
            this.Company = company;
            this.Year = year;

            
            
            //this.Value = calculated ratio 
        }

        public static CalculatedRatio GetCalculatedRatio(Ratio ratio, Company company, int year)
        {
            CalculatedRatio calculated = new CalculatedRatio
            {
                Ratio = ratio,
                Company = company,
                Year = year
            };
            System.Diagnostics.Trace.WriteLine(".... Ratio ID = " + calculated.Ratio.ID);
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

            try
            {
                sqlConn.Open();

                SqlCommand sqlCmd = new SqlCommand("getRatio", sqlConn);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@companyID", calculated.Company.ID);
                sqlCmd.Parameters.AddWithValue("@ratioID", calculated.Ratio.ID);
                sqlCmd.Parameters.AddWithValue("@year", year);
                object result = sqlCmd.ExecuteScalar();
                if(result !=  null)
                {
                    calculated.Value = Convert.ToDecimal(result);
                    System.Diagnostics.Trace.WriteLine("........ratio value" + calculated.Value);
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return calculated;
        }

        public static List<CalculatedRatio> GetCalculatedRatios(Ratio ratio, Company company)
        {
            //given ratio, company return calculated ratio for every year (4) )

            //get the most recent years, up to 4

            List<int> years = new List<int>();

            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

            try
            {
                sqlConn.Open();

                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("select distinct top 4 year from statement where company_id = @companyID order by year desc", sqlConn);
                sqlCmd.Parameters.AddWithValue("@companyID", company.ID);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    years.Add(Int32.Parse(myReader["year"].ToString()));
                    System.Diagnostics.Trace.WriteLine("......Year for " + company.ID + " " + Int32.Parse(myReader["year"].ToString()));
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }

            List<CalculatedRatio> ratios = new List<CalculatedRatio>();

            foreach (int year in years)
            {
                ratios.Add(GetCalculatedRatio(ratio, company, year));
            }

            return ratios;
        }
    }
}
