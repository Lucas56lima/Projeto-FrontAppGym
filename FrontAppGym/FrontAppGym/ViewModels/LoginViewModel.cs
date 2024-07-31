using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using FrontAppGym.Views;
using Newtonsoft.Json.Linq;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FrontAppGym.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public Command LoginCommand { get; }
        public Command RegisterCommand { get; }        
        public LoginViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            RegisterCommand = new Command(OnRegisterClicked);            
        }
        private async void OnRegisterClicked(object obj)
        {

            await Shell.Current.GoToAsync($"//{nameof(RegisterPage)}");
        }

        private async void OnLoginClicked(object obj)
        {
            //string insertEmail = Email;
            //string insertPassword = Password;
            //string loginToken = await LoginAsync(insertEmail, insertPassword);           

            //if (loginToken != null)
            //{
            //    await StoreTokenAsync(loginToken);
            //    await GetTokenAsync();
            await Shell.Current.GoToAsync($"//{nameof(AboutPage)}");

            //}
        }

        public async Task<string> LoginAsync(string email, string password)
        {
            using (var client = new HttpClient())
            {
                try
                {
                    string connectionLoginRoute = "http://10.0.2.2:7032/api/Login/login";

                    Uri uri = new Uri(connectionLoginRoute);
                    //client.Timeout = TimeSpan.FromSeconds(200);
                    var content = new StringContent($"{{\"email\":\"{email}\",\"password\":\"{password}\"}}", System.Text.Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(uri, content);
                    //http://10.0.2.2:7032/api/Login/login
                    if (response.IsSuccessStatusCode)
                    {
                        var jsonString = await response.Content.ReadAsStringAsync();
                        var jsonObject = JObject.Parse(jsonString);
                        return jsonObject["token"].ToString();
                    }

                    throw new Exception("Não foi possível fazer o login");
                }
                catch (Exception ex)
                {
                    // Lidar com exceções ou erros de comunicação aqui
                    Console.WriteLine($"Erro na requisição: {ex.Message}");
                    throw;
                }
            }

        }
        public async Task StoreTokenAsync(string token)
        {
            await SecureStorage.SetAsync("auth_token", token);
        }

        public async Task<string> GetTokenAsync()
        {
            return await SecureStorage.GetAsync("auth_token");
        }
        public async Task<string> GetSecureDataAsync()
        {
            var token = await GetTokenAsync();

            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                var response = await client.GetAsync("https://localhost:7032/api/Workout/ViewAllWorkouts");

                if (response.IsSuccessStatusCode)
                {
                    return await response.Content.ReadAsStringAsync();
                }

                throw new Exception("Não foi possível obter os dados.");
            }
        }
        public static async Task<bool> TestConnectivity(string url)
        {
            using (var client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await client.GetAsync(url);
                    return response.IsSuccessStatusCode;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Connectivity test failed: {ex.Message}");
                    return false;
                }
            }
        }
    }
}
