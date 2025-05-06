using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BlogProje_AEmir.Controllers
{
    public class HakkimdaController : Controller
    {
        private readonly AppDbContext _context;

		public HakkimdaController(AppDbContext context)
		{
			_context = context;
		}

		public async Task<IActionResult> Index()
        {
            var hakkimda = await _context.Hakkimda.FirstOrDefaultAsync();
            return View(hakkimda);
        }
    }
}
