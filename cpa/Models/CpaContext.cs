using Microsoft.EntityFrameworkCore;

namespace cpa.Models
{
    public class CpaContext : DbContext
    {
        public CpaContext(DbContextOptions<CpaContext> options)
        : base(options)
        {

        }
        public DbSet<Article> Articles {get; set;}
        public DbSet<Company> Companys {get; set;}
        public DbSet<Ratio> Ratios {get; set;}
        public DbSet<Statement> Statements {get; set;}


    }
}