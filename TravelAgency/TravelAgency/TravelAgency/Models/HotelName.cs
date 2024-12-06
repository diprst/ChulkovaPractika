using System;
using System.Collections.Generic;

namespace TravelAgency.Models;

public partial class HotelName
{
    public int IdHotelRoom { get; set; }

    public string? HotelName1 { get; set; }

    public string? LocationRating { get; set; }

    public string? RoomType { get; set; }

    public double? Price { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();
}
