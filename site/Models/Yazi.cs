namespace BlogProje_AEmir.Models
{
    public class Yazi
    {
        public int Id { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public string ResimUrl { get; set; } 
        public DateTime Tarih { get; set; }
        public string OlusturanKisi { get; set; }
        public int Durum { get; set; } 
        public int KategoriId { get; set; } 
        public Kategori Kategori { get; set; }
    }
}
