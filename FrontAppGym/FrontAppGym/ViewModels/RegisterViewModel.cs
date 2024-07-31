using System;
using System.Collections.ObjectModel;
using FrontAppGym.Models;
using FrontAppGym.Views;
using Xamarin.Forms;

namespace FrontAppGym.ViewModels
{
    public class RegisterViewModel : BaseViewModel
    {
        private string _name;
        public Command PaymentCommand { get;}
        public string Name
        {
            get => _name;
            set => SetProperty(ref _name, value);
        }

        private string _email;
        public string Email
        {
            get => _email;
            set => SetProperty(ref _email, value);
        }

        private string _password;
        public string Password
        {
            get => _password;
            set => SetProperty(ref _password, value);
        }

        private string _fone;
        public string Fone
        {
            get => _fone;
            set => SetProperty(ref _fone, value);
        }

        private DateTime _birthday;
        public DateTime Birthday
        {
            get => _birthday;
            set => SetProperty(ref _birthday, value);
        }

        private string _specialCondition;
        public string SpecialCondition
        {
            get => _specialCondition;
            set => SetProperty(ref _specialCondition, value);
        }

        //private string _plan;
        //public string Plan
        //{
        //    get => _plan;
        //    set => SetProperty(ref _plan, value);
        //}
        public ObservableCollection<Plan> _plans;

        // Propriedade pública com a convenção Pascal
        public ObservableCollection<Plan> Plans
        {
            get { return _plans; }
            set { _plans = value; }            
        }

        public RegisterViewModel()
        {
            // Inicializa a coleção de planos
            _plans = new ObservableCollection<Plan>()
            {
                new Plan() { Name = "Mensal", Amount = 19.90, Duration = 30 },
                new Plan() { Name = "Trimestral", Amount = 17.90, Duration = 90 },
                new Plan() { Name = "Anual", Amount = 15.90, Duration = 365 }
            };

            PaymentCommand = new Command(OnPaymentClicked);
        }

        private async void OnPaymentClicked(object obj)
        {
            await Shell.Current.GoToAsync($"//{nameof(PaymentPage)}");
        }
    }

}
