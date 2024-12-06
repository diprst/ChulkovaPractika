using WpfLibraryTur;
using Microsoft.EntityFrameworkCore;
using WpfLibraryTur.Models;
namespace TestProjectTur
{
    [TestClass]
    public sealed class Test1
    {
        private TurAgenstvooContext _context;
        private Class1 _authorization;
        [TestMethod]

        public void Initialize()
        {
            var options = new DbContextOptionsBuilder<TurAgenstvooContext>()
                .UseSqlServer("Server=44-1\\SQLEXPRESS;Database=TurAgenstvoo;TrustServerCertificate=True;Trusted_Connection=True;")
                .Options;

            _context = new TurAgenstvooContext(options);

            _context.Database.EnsureCreated();

            _authorization = new Class1(_context);
        }

        [TestMethod]
        public void Login_ShouldReturnEnter_ForValidClientCredentials()
        {
            string email = "fedyaeva@gmail.com"; // Логин 
            string password = "pass2023!"; // Пароль 

            string result = _authorization.Signin(email, password);

            Assert.AreEqual("Вход в систему", result);
        }
        [TestMethod]
        public void Login_ShouldReturnError_ForValidClientCredentials()
        {
            string login = "12345678"; // Логин 
            string password = "12345678"; // Пароль 

            string result = _authorization.Signin(login, password);

            Assert.AreEqual("Вход в систему", result);
        }

    }
}
