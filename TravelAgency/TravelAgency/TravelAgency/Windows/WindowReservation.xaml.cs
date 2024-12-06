using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using TravelAgency.Models;
using Microsoft.EntityFrameworkCore;

namespace TravelAgency.Windows
{
    /// <summary>
    /// Логика взаимодействия для WindowReservation.xaml
    /// </summary>
    public partial class WindowReservation : Window
    {
        public WindowReservation()
        {
            InitializeComponent();
            LoadData();
        }
        public void LoadData()
        {
            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                var data = context.Reservations.Include(o => o.IdClientNavigation).Include(o => o.IdAirTicketNavigation).
                    Include(o => o.IdTourNavigation).Include(o => o.IdPaymentNavigation).Include(o => o.IdHotelRoomNavigation).ToList();
                dtgreserv.ItemsSource = data;
                DataContext = data;
            }
        }
        private void End_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Tour_Click(object sender, RoutedEventArgs e)
        {
            WindowTour mainWindow = new WindowTour();
            mainWindow.Show();
        }

        private void Hotels_Click(object sender, RoutedEventArgs e)
        {
            WindowHotelName windowHotelName = new WindowHotelName();
            windowHotelName.Show();

        }

        private void Flights_Click(object sender, RoutedEventArgs e)
        {
            WindowAirTicket windowAirTicket = new WindowAirTicket();
            windowAirTicket.Show();
            this.Close();

        }

        private void Clients_Click(object sender, RoutedEventArgs e)
        {
            WindowClients windowClients = new WindowClients();
            windowClients.Show();

        }
    }
}

    

