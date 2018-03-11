using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
        public Statement() { }
        public Statement(string Name, int Year, int Quarter, Company Company, List<RatioConstruct> Details)
        {
            this.Name = Name;
            this.Year = Year;
            this.Quarter = Quarter;
            this.Company = Company;
            this.Details = Details;
        }

        public static Statement GetStatement(int companyID, int year, string type)
        {
            //Get statement for given company, year, and type balance_sheet or income_statement)
            List<RatioConstruct> details = new List<RatioConstruct>();
            //First find statement id
            Company company = new Company { ID = companyID };
            Statement statement = new Statement
            {
                Company = company,
                Year = year,
                Quarter = 0,
                Name = type

            };

            statement = GetStatementDetails(statement);

            return statement;
        }
        public static Statement GetStatementDetails(Statement statement)
        {
            List<RatioConstruct> details = new List<RatioConstruct>();
            int statementID = GetStatementID(statement);
            if (statementID != -1)
            {

                SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
                try
                {
                    sqlConn.Open();
                    SqlDataReader myReader = null;
                    SqlCommand sqlCmd = new SqlCommand("SELECT line, ratio_construct_id, value FROM statement_detail WHERE " +
                        "statement_id = @sID", sqlConn);
                    sqlCmd.Parameters.AddWithValue("@sID", statementID);
                    myReader = sqlCmd.ExecuteReader();
                    while (myReader.Read())
                    {
                        details.Add(new RatioConstruct
                        {
                            Line = Int32.Parse(myReader["line"].ToString()),
                            Value = Decimal.Parse(myReader["value"].ToString()),
                            ID = Int32.Parse(myReader["ratio_construct_id"].ToString())
                        });
                    }

                    sqlConn.Close();
                }
                catch (Exception e) { Console.WriteLine(e.ToString()); }
                foreach(RatioConstruct construct in details)
                {
                    construct.Tag = RatioConstruct.GetRatioConstructTag(construct.ID);
                    construct.Name = RatioConstruct.GetRatioConstructName(construct.ID);
                }
                statement.Details = details;
            }
            else
            {
                System.Diagnostics.Trace.WriteLine("Error: no statement id found");
            }
            return statement;
        }
        public static List<Statement> GetStatements(int companyID, string type)
        {
            //Get all statements related to a company
            List<Statement> statements = new List<Statement>();
            for(int year = 2014; year <= 2017; year++)
            {
                Statement newS = GetStatement(companyID, year, type);
                statements.Add(newS);
            }
            return statements;
        }

        public static int AddStatement(Statement statement)
        {
            int rows = -1;
            //Get company id
            if(Company.GetCompanyID(statement) == -1)
            {
                //add company
                Company.AddCompany(statement.Company);
            }
            int cID = Company.GetCompanyID(statement);
            statement.Company.ID = cID;

            //Get statement id given company id and year
            int statementID = GetStatementID(statement);
            if (statementID == -1)
            {
                //addStatement
                AddStatementReference(statement.Name, cID, statement.Year);
                statementID = GetStatementID(statement);
            }
            int line = 0; //to set "line" value in details table
            //Start adding lines
            foreach (RatioConstruct c in statement.Details)
            {
                //still need construct ids
                c.ID = RatioConstruct.GetRatioConstructID(c);
                //set line
                c.Line = line;
                //add lines
                rows = AddStatementLine(c, statementID);
                if (rows == -1)
                {
                    System.Diagnostics.Trace.WriteLine("Erro occured inserting " + c.Tag
                        + "..." + c.Value);
                }

                line++;
            }
            return rows;
        }

        public static int AddStatementReference(String type, int companyID, int year)
        {
            //adds statement to statement table IE Apple's 2017 balance sheet. To add details use above method
            int rows = -1;
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO statement (name, year, quarter, company_id) " +
                    "VALUES (@name, @year, 0, @cID)";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@name", type);
                sqlCmd.Parameters.AddWithValue("@year", year );
                sqlCmd.Parameters.AddWithValue("@cID", companyID);
                rows = sqlCmd.ExecuteNonQuery();
                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return rows;
        }


        public static int AddStatementLine(RatioConstruct construct, int statementID)
        {
            int rows = -1;
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                string commandText = "INSERT INTO statement_detail (statement_id, line, ratio_construct_id, value) " +
                    "VALUES (@sID, @line, @cID, @value)";
                SqlCommand sqlCmd = new SqlCommand(commandText, sqlConn);
                sqlCmd.Parameters.AddWithValue("@sID", statementID);
                sqlCmd.Parameters.AddWithValue("@line", construct.Line);
                sqlCmd.Parameters.AddWithValue("@cID", construct.ID);
                sqlCmd.Parameters.AddWithValue("@value", construct.Value);
                rows = sqlCmd.ExecuteNonQuery();
                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            return rows;
        }

        public static int GetStatementID(Statement statement)
        {
            int statementYear = statement.Year;
            int companyID = statement.Company.ID;
            string statementType = statement.Name;
            int quarter =  statement.Quarter;
            int statementID = -1;
            SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id FROM statement WHERE " +
                    "company_id = @cID AND name = @type AND year = @year AND quarter = @q", sqlConn);
                sqlCmd.Parameters.AddWithValue("@cID", companyID);
                sqlCmd.Parameters.AddWithValue("@type", statementType);
                sqlCmd.Parameters.AddWithValue("@year", statementYear);
                sqlCmd.Parameters.AddWithValue("@q", quarter);
                System.Diagnostics.Trace.WriteLine("company id in getstatement: " + companyID);
                System.Diagnostics.Trace.WriteLine("statement year in getstatement: " + statementYear);
                System.Diagnostics.Trace.WriteLine("statement type in getstatement: " + statementType);
                System.Diagnostics.Trace.WriteLine("quarter in getstatement: " + quarter);


                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    statementID = Int32.Parse(myReader["id"].ToString());
                }

                sqlConn.Close();
            }
            catch (Exception e) { Console.WriteLine(e.ToString()); }
            System.Diagnostics.Trace.WriteLine("Statement id: " + statementID);
            return statementID;
        }
    
   
            
       
    }
}
