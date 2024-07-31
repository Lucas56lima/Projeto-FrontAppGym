using System.ComponentModel;
using FrontAppGym.ViewModels;
using Xamarin.Forms;

namespace FrontAppGym.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}