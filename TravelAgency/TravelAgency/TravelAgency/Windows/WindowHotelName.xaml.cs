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
    /// Логика взаимодействия для WindowHotelName.xaml
    /// </summary>
    public partial class WindowHotelName : Window
    {
        private HotelName HotelName = new HotelName();
        public WindowHotelName()
        {
            InitializeComponent();
        }
        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                HotelName.HotelName1 = txtLocation.Text;
                HotelName.LocationRating = txtLocationRating.Text;
                HotelName.RoomType = txtRoomType.Text;
                HotelName.Price = Convert.ToDouble(txtPrice.Text);
                try
                {
                    context.HotelNames.Add(HotelName);
                    context.SaveChanges();
                    MessageBox.Show("Гостиничный номер забронирован!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка");
                }
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
