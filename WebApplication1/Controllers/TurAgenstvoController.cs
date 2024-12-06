using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TurAgenstvoController : Controller
    {
            private readonly TurAgenstvoContext _context;

            public TurAgenstvoController(TurAgenstvoContext context)
            {
                _context = context;
            }

            // GET: api/products
            [HttpGet]
            public async Task<ActionResult<IEnumerable<Client>>> GetAll()
            {
                return await _context.Clients.ToListAsync();
            }

            // GET: api/products/{id}
            [HttpGet("{IdClient}")]
            public async Task<ActionResult<Client>> GetById(int IdClient)
            {
                var Clients = await _context.Clients.FindAsync(IdClient);
                if (Clients is null)
                    return NotFound();

                return Clients;
            }

            // POST: api/products
            [HttpPost]
            public async Task<IActionResult> Create(Client Client)
            {
                _context.Clients.Add(Client);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetById), new { idClient = Client.IdClient }, Client);
            }
             

            // PUT: api/products/5
            // The method below will handle the PUT requests
            [HttpPut("{Id}")]
            public async Task<IActionResult> PutIdClient(int Id, Client Client)
            {
                if (Id != Client.IdClient)
                {
                    return BadRequest();
                }

                _context.Entry(Client).State = EntityState.Modified;

                try
                {
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ClientExists(Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return NoContent();
            }

            private bool ClientExists(int IdClient)
            {
                return _context.Clients.Any(e => e.IdClient == IdClient);
            }
            // DELETE: api/products/{id}
            [HttpDelete("{IdClient}")]
            public async Task<IActionResult> DeleteClient(int IdClient)
            {
                var Client = await _context.Clients.FindAsync(IdClient);
                if (Client == null)
                {
                    return NotFound();
                }

                _context.Clients.Remove(Client);
                await _context.SaveChangesAsync();

                return NoContent();
            }
        }
}
