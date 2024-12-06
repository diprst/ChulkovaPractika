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
    /// Логика взаимодействия для WindowRegistration.xaml
    /// </summary>
    public partial class WindowRegistration : Window
    {
        Client newClient = new Client();
        public WindowRegistration()
        {
            InitializeComponent();
        }
        private void ButtonRegister_Click(object sender, RoutedEventArgs e)
        {
            string email = EmailTextBox.Text;
            string password = PasswordTextBox.Password;

            if (email == null)
            {
                MessageBox.Show("Введите почту!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else
            {
                if (password == null)
                {
                    MessageBox.Show("Введите пароль!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                else
                {
                    using (TurAgenstvooContext db = new TurAgenstvooContext())
                    {
                        var aunt = db.Clients.FirstOrDefault(u => u.Email == email);
                        if (aunt != null)
                        {
                            MessageBox.Show("Пользователь с такой почтой уже существует!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                            return;
                        }
                        else
                        {
                            newClient.Email = email;
                            newClient.Password = password;
                            db.Clients.Add(newClient);
                            db.SaveChanges();
                            MainWindow mainWindow = new MainWindow();
                            mainWindow.Show();
                            this.Close();
                        }
                    }
                }
            }
        }
    }
}
