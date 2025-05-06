using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace BlogProje_AEmir.Models
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Yazi> Yazilar { get; set; }
        public DbSet<Kategori> Kategoriler { get; set; }
        public DbSet<SosyalMedya> SosyalMedya { get; set; }
        public DbSet<Galeri> Galeri { get; set; }
        public DbSet<Hakkimda> Hakkimda { get; set; }
        public DbSet<Mesaj> Mesajlar { get; set; }
    }
}
