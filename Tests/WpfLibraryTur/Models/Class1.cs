using WpfLibraryTur.Models;
namespace WpfLibraryTur.Models
{
    public class Class1
    {
        private readonly TurAgenstvooContext _context;

        public Class1(TurAgenstvooContext context)
        {
            _context = context;
        }
        public string Signin(string Email, string Password)
        {
            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Password))
            {
                return "Введите почту и пароль!";
            }

            var clients = _context.Clients.FirstOrDefault(u => u.Email == Email && u.Password == Password);

            if (clients != null)
            {
                return "Вход в систему";
            }

            else
            {
                return "Неверная почта или пароль!";
            }
        }
    }

}
