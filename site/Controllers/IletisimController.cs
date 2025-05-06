using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;

namespace BlogProje_AEmir.Controllers
{
	public class IletisimController : Controller
	{
		private readonly AppDbContext _context;

		public IletisimController(AppDbContext context)
		{
			_context = context;
		}

        [HttpGet]
		public IActionResult Index()
		{
			return View();
		}

		[HttpPost] 
		public async Task<IActionResult> Index(Mesaj mesaj) //Mesaj gönderme metodu
		{
            if (string.IsNullOrEmpty(mesaj.Mail) || mesaj.Mail.Length > 250 || mesaj.Mail.Length < 3)
                ModelState.AddModelError("Mail", "E-posta adresi boş olamaz, 3-250 karakter arasında olmalıdır.");

            if (string.IsNullOrEmpty(mesaj.Konu) || mesaj.Konu.Length > 250 || mesaj.Konu.Length < 3)
                ModelState.AddModelError("Konu", "Konu boş olamaz, 3-250 karakter arasında olmalıdır.");

            if (string.IsNullOrEmpty(mesaj.Icerik) || mesaj.Icerik.Length < 3)
                ModelState.AddModelError("Icerik", "Mesaj içeriği boş olamaz ve en az 3 karakter olmalıdır.");


            if (!ModelState.IsValid)
            {
                return View();
            }

            await _context.AddAsync(mesaj);
            await _context.SaveChangesAsync();

            ViewBag.SuccessMessage = "Mesajınız başarıyla gönderildi.";
            return View();
        }
	}
}
