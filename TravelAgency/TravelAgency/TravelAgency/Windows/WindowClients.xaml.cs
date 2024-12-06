using Microsoft.Data.SqlClient;
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
    /// Логика взаимодействия для WindowClients.xaml
    /// </summary>
    public partial class WindowClients : Window
    {
        public WindowClients()
        {
            InitializeComponent();
        }
        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                Client newClient = new Client
                {
                    Fio = txtFio.Text,
                    Email = txtemail.Text,
                    PhoneNumber = txtPhone.Text,
                    Password = txtPassword.Text,
                };
                try
                {
                    context.Clients.Add(newClient);
                    context.SaveChanges();
                    MessageBox.Show("Клиент добавлен");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка");
                }


            }
        }
        
        }
    }

