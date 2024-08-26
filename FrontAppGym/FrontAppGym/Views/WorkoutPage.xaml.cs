using System;
using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FrontAppGym.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WorkoutPage : ContentPage
    {
        private bool IsActive = false;
        public WorkoutPage ()
        {
            InitializeComponent();
            BindingContext = new WorkoutViewModel();
            
        }

        private void OnFilterWorkout(object sender, EventArgs e)
        {
            DisplayAlert("Filtro", "Você clicou no filtro", "OK");
        }

        private void OnClickedBtnBeginner(object sender, EventArgs e)
        {
            IsActive = !IsActive;

            btnBeginner.TextColor = IsActive ? Color.Black : Color.Gray;
            btnBeginner.BorderColor = IsActive ? Color.Purple : Color.White;            
        }

        private void OnClickedBtnIntermediary(object sender, EventArgs e)
        {
            IsActive = !IsActive;
            btnIntermediary.TextColor = IsActive ? Color.Black : Color.Gray;
            btnIntermediary.BorderColor = IsActive ? Color.Purple : Color.White;            
        }

        private void OnClickedBtnAdvanced(object sender, EventArgs e)
        {
            DisplayAlert("Avançado", "Clicou", "OK");
        }

        private void OnButtonClicked(object sender, EventArgs e)
        {
            // Reset all buttons to default style
            btnBeginner.BackgroundColor = Color.Transparent;
            btnBeginner.TextColor = Color.Gray;

            btnIntermediary.BackgroundColor = Color.Transparent;
            btnIntermediary.TextColor = Color.Gray;

            btnAdvanced.BackgroundColor = Color.Transparent;
            btnAdvanced.TextColor = Color.Gray;

            // Highlight the selected button
            var button = sender as Button;
            button.BackgroundColor = Color.Purple;
            button.TextColor = Color.White;
        }

        private void OnOpenFilterTab(object sender, EventArgs e)
        {
            DisplayAlert("Alerta", "você clicou aqui!", "OK");
        }

    }
}