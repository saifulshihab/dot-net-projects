﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CSMS.Models;

namespace CSMS.Controllers
{
    public class OfficersController : Controller
    {
        private readonly AppDBContext _context;

        public OfficersController(AppDBContext context)
        {
            _context = context;
        }

        // GET: Officers
        public async Task<IActionResult> Index()
        {
            return View(await _context.Officers.ToListAsync());
        }

        // GET: Officers/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var officer = await _context.Officers
                .FirstOrDefaultAsync(m => m.officer_id == id);
            if (officer == null)
            {
                return NotFound();
            }

            return View(officer);
        }

        // GET: Officers/Create
        public IActionResult officer_reg()
        {
            return View();
        }

        // POST: Officers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> officer_reg([Bind("officer_id,officer_name,officer_email,officer_emp_id,officer_password,officer_workplace")] Officer officer)
        {
            if (ModelState.IsValid)
            {
                _context.Add(officer);
                await _context.SaveChangesAsync();
                
            }
            return View(officer);
        }

        // GET: Officers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var officer = await _context.Officers.FindAsync(id);
            if (officer == null)
            {
                return NotFound();
            }
            return View(officer);
        }

        // POST: Officers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("officer_id,officer_name,officer_email,officer_emp_id,officer_password,officer_workplace")] Officer officer)
        {
            if (id != officer.officer_id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(officer);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OfficerExists(officer.officer_id))
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
            return View(officer);
        }

        // GET: Officers/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var officer = await _context.Officers
                .FirstOrDefaultAsync(m => m.officer_id == id);
            if (officer == null)
            {
                return NotFound();
            }

            return View(officer);
        }

        // POST: Officers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var officer = await _context.Officers.FindAsync(id);
            _context.Officers.Remove(officer);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool OfficerExists(int id)
        {
            return _context.Officers.Any(e => e.officer_id == id);
        }
    }
}