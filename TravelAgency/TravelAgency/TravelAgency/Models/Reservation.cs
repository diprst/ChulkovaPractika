using System;
using System.Collections.Generic;

namespace TravelAgency.Models;

public partial class Reservation
{
    public int IdReservation { get; set; }

    public int? IdClient { get; set; }

    public string? OrderComposition { get; set; }

    public string? ReservationStatus { get; set; }

    public double? Price { get; set; }

    public int? IdAirTicket { get; set; }

    public int? IdTour { get; set; }

    public int? IdPayment { get; set; }

    public int? IdHotelRoom { get; set; }

    public virtual AirTicket? IdAirTicketNavigation { get; set; }

    public virtual Client? IdClientNavigation { get; set; }

    public virtual HotelName? IdHotelRoomNavigation { get; set; }

    public virtual Payment? IdPaymentNavigation { get; set; }

    public virtual Tour? IdTourNavigation { get; set; }
}
