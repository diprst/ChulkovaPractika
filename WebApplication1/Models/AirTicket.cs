using System;
using System.Collections.Generic;

namespace WebApplication1.Models;

public partial class AirTicket
{
    public int IdAirTicket { get; set; }

    public DateOnly? DepartureDate { get; set; }

    public DateOnly? ArrivalDate { get; set; }

    public string? FromCity { get; set; }

    public string? ToCity { get; set; }

    public string? ClassOfService { get; set; }

    public double? Price { get; set; }

    public string? Airline { get; set; }

    public string? AircraftType { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();
}
