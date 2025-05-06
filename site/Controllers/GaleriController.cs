using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BlogProje_AEmir.Controllers
{
	public class GaleriController : Controller
	{
		private readonly AppDbContext _context;

        public GaleriController(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
		{
			var galeriVerileri = await _context.Galeri.ToListAsync();
			return View(galeriVerileri);
		}
	}
}
