using System;
using System.Collections.Generic;

namespace TravelAgency.Models;

public partial class Client
{
    public int IdClient { get; set; }

    public string? Fio { get; set; }

    public string? Email { get; set; }

    public string? PhoneNumber { get; set; }

    public string? History { get; set; }

    public string? Password { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();
}
