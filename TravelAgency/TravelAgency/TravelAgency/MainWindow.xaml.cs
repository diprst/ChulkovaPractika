using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TravelAgency.Models;
using TravelAgency.Windows;

namespace TravelAgency
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<Client> registere;
        public MainWindow()
        {
            InitializeComponent();
        }
        private void btnEnter_Click(object sender, RoutedEventArgs e)
        {
            string email = txtEmailTextBox.Text;
            string password = txtPasswordTextBox.Text;

            var aaaa = AuthenticateClient(email, password);

            if (aaaa != null)
            {

                WindowReservation windowReservation = new WindowReservation();
                windowReservation.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Неправильная почта или пароль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            WindowRegistration windowRegistration = new WindowRegistration();   
            windowRegistration.Show();
            this.Close();
        }        
        private bool AuthenticateClient(string email, string password)
        {
            using (TurAgenstvooContext context = new TurAgenstvooContext())
            {
                var client = context.Clients.FirstOrDefault(e => e.Email == email && e.Password == password);
                return client != null;
            }
        }
    }
}
