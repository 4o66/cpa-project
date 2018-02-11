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

        public CalculatedRatio(Ratio ratio, Company company, int year)
        {
            this.Ratio = ratio;
            this.Company = company;
            this.Year = year;

            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

            try
            {
                sqlConn.Open();

                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("exec getRatio", sqlConn);
                sqlCmd.Parameters.AddWithValue("@companyID", this.Company.ID);
                sqlCmd.Parameters.AddWithValue("@ratioID", this.Ratio.ID);
                sqlCmd.Parameters.AddWithValue("@year", this.Year);
                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    this.Value = Decimal.Parse(myReader["value"].ToString());
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            
            //this.Value = calculated ratio 
        }

        public static List<CalculatedRatio> GetCalculatedRatios(Ratio ratio, Company company)
        {
            //given ratio, company return calculated ratio for every year (4) )

            //get the most recent years, up to 4

            List<int> years = null;

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
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }

            List<CalculatedRatio> ratios = null;

            foreach (int year in years)
            {
                ratios.Add(new CalculatedRatio(ratio, company, year));
            }

            return ratios;
        }
    }
}
