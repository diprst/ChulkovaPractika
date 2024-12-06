using System;
using System.Collections.Generic;
using WpfLibraryTur.Models;

namespace WpfLibraryTur;

public partial class Payment
{
    public int IdPayment { get; set; }

    public string? PaymentMethod { get; set; }

    public string? TransationStatus { get; set; }

    public virtual ICollection<Reservation> Reservations { get; set; } = new List<Reservation>();
}
