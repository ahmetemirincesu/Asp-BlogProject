namespace BlogProje_AEmir.Models
{
	public class Mesaj
	{
        public int Id { get; set; }
        public string Mail { get; set; }
        public string Konu { get; set; }
        public string Icerik { get; set; }
        public DateTime Tarih { get; set; } = DateTime.Now;
    }
}
