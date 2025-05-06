using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace BlogProje_AEmir.Controllers
{
    public class YaziController : Controller
    {
        private readonly AppDbContext _context;

        public YaziController(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Detay(int id)
        {
            var yaziDetay = await _context.Yazilar.Include(x => x.Kategori).FirstOrDefaultAsync(x => x.Id == id);

            if (yaziDetay == null)
            {
                return RedirectToAction("Index");
            }

            return View(yaziDetay);
        }

        public async Task<IActionResult> Index(string kategori = null, string arama = null)
        {
            var yazilar = _context.Yazilar.Include(x => x.Kategori).AsQueryable();

            if (!string.IsNullOrEmpty(kategori))
            {
                yazilar = yazilar.Where(x => x.Kategori.Ad == kategori);
            }

            if (!string.IsNullOrEmpty(arama))
            {
                yazilar = yazilar.Where(x => x.Baslik.Contains(arama));
            }

            return View(await yazilar.ToListAsync());
        }
    }
}
