using Microsoft.EntityFrameworkCore;

namespace Sample
{
    public class AppDbContext : DbContext
    {
        public DbSet<Entity> Entities { get; set; }

        public AppDbContext(DbContextOptions<AppDbContext> options):base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Entity>()
                .HasKey(e => e.Id);
        }
    }
}