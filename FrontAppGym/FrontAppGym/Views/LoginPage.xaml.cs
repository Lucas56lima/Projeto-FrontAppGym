using System;
using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;


namespace FrontAppGym.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            this.BindingContext = new LoginViewModel();
        }

        private void OnChangedVisibilityPasswordOn(object obj, EventArgs e)
        {
            entryPassword.IsPassword = false;
            visibilityPassword.Source = "icon_visibilityoff.png";
            var tapGestureRecognizer = new TapGestureRecognizer();
            tapGestureRecognizer.Tapped += OnChangedVisibilityPasswordOff;
            visibilityPassword.GestureRecognizers.Clear(); // Limpar os reconhecedores de gesto existentes
            visibilityPassword.GestureRecognizers.Add(tapGestureRecognizer);
        }
        private void OnChangedVisibilityPasswordOff(object obj, EventArgs e)
        {
            // Alterar a visibilidade da senha e o ícone quando o ícone está oculto
            entryPassword.IsPassword = true;
            visibilityPassword.Source = "icon_visibilityon.png";
            var tapGestureRecognizer = new TapGestureRecognizer();
            tapGestureRecognizer.Tapped += OnChangedVisibilityPasswordOn;
            visibilityPassword.GestureRecognizers.Clear(); // Limpar os reconhecedores de gesto existentes
            visibilityPassword.GestureRecognizers.Add(tapGestureRecognizer);
        }
    }
}