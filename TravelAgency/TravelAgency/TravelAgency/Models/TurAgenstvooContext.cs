using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace TravelAgency.Models;

public partial class TurAgenstvooContext : DbContext
{
    public TurAgenstvooContext()
    {
    }

    public TurAgenstvooContext(DbContextOptions<TurAgenstvooContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AirTicket> AirTickets { get; set; }

    public virtual DbSet<Client> Clients { get; set; }

    public virtual DbSet<HotelName> HotelNames { get; set; }

    public virtual DbSet<Payment> Payments { get; set; }

    public virtual DbSet<Reservation> Reservations { get; set; }

    public virtual DbSet<Tour> Tours { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
=> optionsBuilder.UseSqlServer("Server=44-1\\SQLEXPRESS;Database=TurAgenstvoo;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AirTicket>(entity =>
        {
            entity.HasKey(e => e.IdAirTicket);

            entity.ToTable("Air_Ticket");

            entity.Property(e => e.IdAirTicket).HasColumnName("id_air_ticket");
            entity.Property(e => e.AircraftType)
                .IsUnicode(false)
                .HasColumnName("aircraft_type");
            entity.Property(e => e.Airline)
                .IsUnicode(false)
                .HasColumnName("airline");
            entity.Property(e => e.ArrivalDate).HasColumnName("arrival_date");
            entity.Property(e => e.ClassOfService)
                .IsUnicode(false)
                .HasColumnName("class_of_service");
            entity.Property(e => e.DepartureDate).HasColumnName("departure_date");
            entity.Property(e => e.FromCity)
                .IsUnicode(false)
                .HasColumnName("from_city");
            entity.Property(e => e.Price).HasColumnName("price");
            entity.Property(e => e.ToCity)
                .IsUnicode(false)
                .HasColumnName("to_city");
        });

        modelBuilder.Entity<Client>(entity =>
        {
            entity.HasKey(e => e.IdClient);

            entity.ToTable("Client");

            entity.Property(e => e.IdClient).HasColumnName("id_client");
            entity.Property(e => e.Email).HasColumnName("email");
            entity.Property(e => e.History).HasColumnName("history");
            entity.Property(e => e.Password).HasColumnName("password");
            entity.Property(e => e.PhoneNumber).HasColumnName("phone_number");
        });

        modelBuilder.Entity<HotelName>(entity =>
        {
            entity.HasKey(e => e.IdHotelRoom);

            entity.ToTable("Hotel_Name");

            entity.Property(e => e.IdHotelRoom).HasColumnName("id_hotel_room");
            entity.Property(e => e.HotelName1)
                .IsUnicode(false)
                .HasColumnName("hotel_name");
            entity.Property(e => e.LocationRating)
                .IsUnicode(false)
                .HasColumnName("location_rating");
            entity.Property(e => e.Price).HasColumnName("price");
            entity.Property(e => e.RoomType)
                .IsUnicode(false)
                .HasColumnName("room_type");
        });

        modelBuilder.Entity<Payment>(entity =>
        {
            entity.HasKey(e => e.IdPayment);

            entity.ToTable("Payment");

            entity.Property(e => e.IdPayment).HasColumnName("id_payment");
            entity.Property(e => e.PaymentMethod)
                .IsUnicode(false)
                .HasColumnName("payment_method");
            entity.Property(e => e.TransationStatus)
                .IsUnicode(false)
                .HasColumnName("transation_status");
        });

        modelBuilder.Entity<Reservation>(entity =>
        {
            entity.HasKey(e => e.IdReservation).HasName("PK_Order");

            entity.ToTable("Reservation");

            entity.Property(e => e.IdReservation).HasColumnName("id_reservation");
            entity.Property(e => e.IdAirTicket).HasColumnName("id_air_ticket");
            entity.Property(e => e.IdClient).HasColumnName("id_client");
            entity.Property(e => e.IdHotelRoom).HasColumnName("id_hotel_room");
            entity.Property(e => e.IdPayment).HasColumnName("id_payment");
            entity.Property(e => e.IdTour).HasColumnName("id_tour");
            entity.Property(e => e.OrderComposition)
                .IsUnicode(false)
                .HasColumnName("order_composition");
            entity.Property(e => e.Price).HasColumnName("price");
            entity.Property(e => e.ReservationStatus)
                .IsUnicode(false)
                .HasColumnName("reservation_status");

            entity.HasOne(d => d.IdAirTicketNavigation).WithMany(p => p.Reservations)
                .HasForeignKey(d => d.IdAirTicket)
                .HasConstraintName("FK_Reservation_Air_Ticket");

            entity.HasOne(d => d.IdClientNavigation).WithMany(p => p.Reservations)
                .HasForeignKey(d => d.IdClient)
                .HasConstraintName("FK_Reservation_Client");

            entity.HasOne(d => d.IdHotelRoomNavigation).WithMany(p => p.Reservations)
                .HasForeignKey(d => d.IdHotelRoom)
                .HasConstraintName("FK_Reservation_Hotel_Name");

            entity.HasOne(d => d.IdPaymentNavigation).WithMany(p => p.Reservations)
                .HasForeignKey(d => d.IdPayment)
                .HasConstraintName("FK_Reservation_Payment");

            entity.HasOne(d => d.IdTourNavigation).WithMany(p => p.Reservations)
                .HasForeignKey(d => d.IdTour)
                .HasConstraintName("FK_Reservation_Tour");
        });

        modelBuilder.Entity<Tour>(entity =>
        {
            entity.HasKey(e => e.IdTour);

            entity.ToTable("Tour");

            entity.Property(e => e.IdTour).HasColumnName("id_tour");
            entity.Property(e => e.AvailablePlaces).HasColumnName("available_places");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.EndDate).HasColumnName("end_date");
            entity.Property(e => e.Price).HasColumnName("price");
            entity.Property(e => e.StartDate).HasColumnName("start_date");
            entity.Property(e => e.Title).HasColumnName("title");
            entity.Property(e => e.TourId).HasColumnName("tour_id");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
