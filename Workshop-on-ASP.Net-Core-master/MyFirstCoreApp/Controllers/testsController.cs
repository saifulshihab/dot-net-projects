using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MyFirstCoreApp.Models;

namespace MyFirstCoreApp.Controllers
{
    public class testsController : Controller
    {
        private readonly AppDbContext _context;

        public testsController(AppDbContext context)
        {
            _context = context;
        }

        // GET: tests
        public async Task<IActionResult> Index()
        {
            var appDbContext = _context.test.Include(t => t.Student);
            return View(await appDbContext.ToListAsync());
        }

        // GET: tests/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var test = await _context.test
                .Include(t => t.Student)
                .FirstOrDefaultAsync(m => m.hid == id);
            if (test == null)
            {
                return NotFound();
            }

            return View(test);
        }

        // GET: tests/Create
        public IActionResult Create()
        {
            ViewData["StudentId"] = new SelectList(_context.Students, "Id", "StudentId");
            return View();
        }

        // POST: tests/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("hid,StudentId")] test test)
        {
            if (ModelState.IsValid)
            {
                _context.Add(test);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["StudentId"] = new SelectList(_context.Students, "Id", "StudentId", test.StudentId);
            return View(test);
        }

        // GET: tests/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var test = await _context.test.FindAsync(id);
            if (test == null)
            {
                return NotFound();
            }
            ViewData["StudentId"] = new SelectList(_context.Students, "Id", "StudentId", test.StudentId);
            return View(test);
        }

        // POST: tests/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("hid,StudentId")] test test)
        {
            if (id != test.hid)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(test);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!testExists(test.hid))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["StudentId"] = new SelectList(_context.Students, "Id", "StudentId", test.StudentId);
            return View(test);
        }

        // GET: tests/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var test = await _context.test
                .Include(t => t.Student)
                .FirstOrDefaultAsync(m => m.hid == id);
            if (test == null)
            {
                return NotFound();
            }

            return View(test);
        }

        // POST: tests/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var test = await _context.test.FindAsync(id);
            _context.test.Remove(test);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool testExists(int id)
        {
            return _context.test.Any(e => e.hid == id);
        }
    }
}
