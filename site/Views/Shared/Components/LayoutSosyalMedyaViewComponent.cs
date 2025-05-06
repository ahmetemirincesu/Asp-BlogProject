using BlogProje_AEmir.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BlogProje_AEmir.Views.Shared.Components
{
    public class LayoutSosyalMedyaViewComponent : ViewComponent
    {
        private readonly AppDbContext _context;

        public LayoutSosyalMedyaViewComponent(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var bilgiler = await _context.SosyalMedya.ToListAsync();

            return View(bilgiler);
        }
    }
}
