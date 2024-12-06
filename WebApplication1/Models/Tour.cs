using System;
using System.Collections.Generic;

namespace WebApplication1.Models;

public partial class Tour
{
    public int IdTour { get; set; }

    public string? Title { get; set; }

    public string? Description { get; set; }

    public double? Price { get; set; }

    public int? AvailablePlaces { get; set; }

    public int? TourId { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();

    public virtual ICollection<TourSchedule> TourSchedules { get; set; } = new List<TourSchedule>();
}
