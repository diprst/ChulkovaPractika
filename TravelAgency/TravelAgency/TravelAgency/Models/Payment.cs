using System;
using System.Collections.Generic;

namespace TravelAgency.Models;

public partial class Payment
{
    public int IdPayment { get; set; }

    public string? PaymentMethod { get; set; }

    public string? TransationStatus { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();
}
