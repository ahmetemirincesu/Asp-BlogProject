namespace BlogProje_AEmir.Models
{
    public class Kategori
    {
        public int Id { get; set; }
        public string Ad { get; set; }

        public List<Yazi> Yazilar { get; set; } //İlişkili tablo
    }
}
