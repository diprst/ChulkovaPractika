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

namespace TravelAgency.Windows
{
    /// <summary>
    /// Логика взаимодействия для WindowAirTicket.xaml
    /// </summary>
    public partial class WindowAirTicket : Window
    {
        private AirTicket airTicket = new AirTicket();
        public WindowAirTicket()
        {
            InitializeComponent();
        }
        private void BookingButton_Click(object sender, RoutedEventArgs e)
        {

            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                airTicket.Airline = txtAirline.Text;
                airTicket.AircraftType = txtAircraftType.Text;
                airTicket.DepartureDate = DateOnly.Parse(txtdpStartDate.Text);
                airTicket.ArrivalDate = DateOnly.Parse(txtdpEndDate.Text);
                airTicket.FromCity = txtDepartureCityFrom.Text;
                airTicket.ToCity = txtDestinationCityTo.Text;
                airTicket.ClassOfService = txtClassType.Text;
                airTicket.Price = Convert.ToDouble(txtPrice.Text);
                if (airTicket != null)
                {
                    try
                    {
                        context.AirTickets.Add(airTicket);
                        context.SaveChanges();
                        MessageBox.Show("Успешно");
                        WindowReservation windowReservation = new WindowReservation();
                        windowReservation.Show();
                        this.Close();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Ошибка");
                    }
                }
                else
                {
                    MessageBox.Show("Null");
                }
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {

            this.Close();
        }
    }
}
