using System;
using System.Collections.Generic;
using FrontAppGym.ViewModels;
using Xamarin.Forms;

namespace FrontAppGym.Views
{
    public partial class ItemsPage : ContentPage
    {
        ItemsViewModel _viewModel;        
        public ItemsPage()
        {
            InitializeComponent();

             _viewModel = new ItemsViewModel
            {
                Segments = new List<string> { "Table 1", "Table 2", "Table 3" }
            };
            BindingContext = _viewModel;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.OnAppearing();
        }
        private void OnTreinosTapped(object sender, EventArgs e)
        {
            // Navegue para a página de Treinos
            DisplayAlert("Treinos", "Você Clicou na aba de treinos","OK");
        }

        private  void OnDancasTapped(object sender, EventArgs e)
        {
            // Navegue para a página de Danças
            DisplayAlert("Danças", "Você Clicou na aba de Danças", "OK");
        }

        private void OnHitsTapped(object sender, EventArgs e)
        {
            // Navegue para a página de Hits
            DisplayAlert("Hits", "Você Clicou na aba de Hits", "OK");
        } 
    }
}