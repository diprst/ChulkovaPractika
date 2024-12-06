using System;
using System.Collections.Generic;
using System.Globalization;
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
    /// Логика взаимодействия для WindowTour.xaml
    /// </summary>
    public partial class WindowTour : Window
    {
        public WindowTour()
        {
            InitializeComponent();
        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                if (string.IsNullOrEmpty(txtTitle.Text) ||
                    string.IsNullOrEmpty(txtDescription.Text) || string.IsNullOrEmpty(txtPrice.Text) ||
                    string.IsNullOrEmpty(txtSeats.Text))
                {
                    MessageBox.Show("Заполните все поля!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }
                else
                {
                    string title = txtTitle.Text;
                    string description = txtDescription.Text;
                    float price = float.Parse(txtPrice.Text, NumberStyles.Any, CultureInfo.InvariantCulture);
                    int AvailablePlaces = int.Parse(txtSeats.Text);
                    Tour tour = new Tour
                    {
                        Title = title,
                        Description = description,
                        Price = price,
                        AvailablePlaces = AvailablePlaces
                    };
                    try
                    {
                        context.Tours.Add(tour);
                        context.SaveChanges();
                        MessageBox.Show("Тур успешно сохранен!", "Успешная запись", MessageBoxButton.OK, MessageBoxImage.Information);
                        ClearFields();
                    }
                    catch (FormatException ex)
                    {
                        MessageBox.Show("Некорректный формат данных. Проверьте вводимые значения.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ClearFields()
        {
            txtTitle.Clear();
            txtDescription.Clear();
            txtPrice.Clear();
            txtSeats.Clear();
        }
    }
}
