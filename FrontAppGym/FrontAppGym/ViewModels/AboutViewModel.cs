using System;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FrontAppGym.ViewModels
{
    public class AboutViewModel : BaseViewModel
    {
        public AboutViewModel()
        {
            
            OpenWebCommand = new Command(async () => await Browser.OpenAsync("https://aka.ms/xamarin-quickstart"));
            OpenWorkoutPage = new Command(OnOpenWorkoutPage);
        }

        private async void OnOpenWorkoutPage(object obj)
        {
            await Shell.Current.GoToAsync("//WorkoutPage");
        }

        public ICommand OpenWebCommand { get; }
        public Command OpenWorkoutPage {  get; }
    }
}