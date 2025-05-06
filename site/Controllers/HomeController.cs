using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using System.Linq;

namespace BlogProje_AEmir.Controllers
{
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;

        public HomeController(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            var yazilar = await _context.Yazilar
                .Include(x => x.Kategori) // Kategori varsa ilişkili getirilir
                .OrderByDescending(x => x.Tarih) // En yeni yazılar en üstte
                .ToListAsync();

            return View(yazilar);
        }
    }
}
