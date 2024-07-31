using FrontAppGym.Models;
using FrontAppGym.ViewModels;
using Xamarin.Forms;

namespace FrontAppGym.Views
{
    public partial class NewItemPage : ContentPage
    {
        public Item Item { get; set; }

        public NewItemPage()
        {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}